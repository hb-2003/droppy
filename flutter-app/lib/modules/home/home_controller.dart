import 'dart:io';
import 'dart:ui' as ui;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' show CancelToken;
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/data/repositories/upload_repository.dart'
    show PickedFileItem, RegisterResult, UploadRepository;
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:share_plus/share_plus.dart' show ShareParams, SharePlus, XFile;
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';
import 'package:sendlargefiles/modules/shell/app_shell_controller.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

class HomeController extends GetxController {
  final ConfigRepository _cfg = Get.find<ConfigRepository>();
  final UploadRepository _upload = Get.find<UploadRepository>();

  final shareMode = 'link'.obs;
  final destruct = 'no'.obs;
  final files = <PickedFileItem>[].obs;
  final pickingFiles = false.obs;
  final uploading = false.obs;
  final progress = 0.0.obs;
  final uploadSentBytes = 0.obs;
  final uploadTotalBytes = 0.obs;
  final finishedLink = ''.obs;
  final mailFinished = false.obs;
  final awaitingVerify = false.obs;
  final resendVerifyBusy = false.obs;
  final verifyController = TextEditingController();

  /// Set after genid / register.
  String activeUploadId = '';

  final expireSec = 604800.obs;
  int _uidCounter = 0;
  CancelToken? _cancelToken;

  // Mail-mode form validation (for "Send by email")
  final GlobalKey<FormState> mailFormKey = GlobalKey<FormState>();
  final FocusNode emailFromFocus = FocusNode();
  final FocusNode emailToFocus = FocusNode();

  AppConfig get cfg => _cfg.current;

  static const standardExpiryOptionsSec = <int>[3600, 86400, 259200, 604800];

  List<int> get expiryOptionsSec {
    final fromServer = cfg.expireOptionsSec;
    if (fromServer.isEmpty) return standardExpiryOptionsSec;
    final matched = standardExpiryOptionsSec.where(fromServer.contains).toList();
    return matched.isNotEmpty ? matched : standardExpiryOptionsSec;
  }

  static String expiryLabel(int seconds) {
    final t = appL10n();
    switch (seconds) {
      case 3600:
        return '1 ${t.hourSingular}';
      case 86400:
        return '24 ${t.hourSingular}';
      case 259200:
        return '3 ${t.dayPlural}';
      case 604800:
        return '7 ${t.dayPlural}';
      default:
        if (seconds <= 0) return t.doNotExpire;
        if (seconds < 86400) {
          final hours = seconds ~/ 3600;
          return '$hours ${hours == 1 ? t.hourSingular : t.hourPlural}';
        }
        final days = seconds ~/ 86400;
        return '$days ${days == 1 ? t.daySingular : t.dayPlural}';
    }
  }

  static const int _freeMaxBytes = 5 * 1024 * 1024 * 1024; // 5 GB

  int get _effectiveMaxBytes {
    final cfgMax = cfg.maxSizeBytes;
    if (cfgMax <= 0) return _freeMaxBytes;
    return cfgMax < _freeMaxBytes ? cfgMax : _freeMaxBytes;
  }

  int get effectiveMaxBytes => _effectiveMaxBytes;

  String get effectiveMaxLabel {
    final mb = _effectiveMaxBytes / (1024 * 1024);
    if (mb >= 1000) {
      final gb = mb / 1000;
      return '${gb.toStringAsFixed(0)} GB';
    }
    return '${mb.toStringAsFixed(0)} MB';
  }

  TextEditingController? messageCtrl;
  TextEditingController? passwordCtrl;
  TextEditingController? emailFromCtrl;
  TextEditingController? emailToCtrl;

  @override
  void onInit() {
    super.onInit();
    messageCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
    emailFromCtrl = TextEditingController();
    emailToCtrl = TextEditingController();
    final options = expiryOptionsSec;
    if (!options.contains(expireSec.value)) {
      expireSec.value = options.last;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setShareMode(String m) => shareMode.value = m;

  Future<void> pickFiles() async {
    if (pickingFiles.value) return;
    pickingFiles.value = true;
    try {
      final r = await FilePicker.platform.pickFiles(allowMultiple: true);
      if (r == null) return;
      _addPickedItems(
        UploadRepository.fromPickerResult(r.files, () => _uidCounter++),
      );
    } finally {
      pickingFiles.value = false;
    }
  }

  Future<void> pickFolder() async {
    if (pickingFiles.value) return;
    pickingFiles.value = true;
    try {
      final dirPath = await FilePicker.platform.getDirectoryPath();
      if (dirPath == null) return;
      final picked = await UploadRepository.fromDirectory(
        dirPath,
        () => _uidCounter++,
      );
      if (picked.isEmpty) {
        final t = appL10n();
        AppSnack.error(t.snackEmptyFolder, t.snackEmptyFolderBody);
        return;
      }
      _addPickedItems(picked);
    } on UnimplementedError {
      final t = appL10n();
      AppSnack.error(t.snackFolderUnsupported, t.snackFolderUnsupportedBody);
    } catch (_) {
      final t = appL10n();
      AppSnack.error(t.snackError, t.snackFolderReadError);
    } finally {
      pickingFiles.value = false;
    }
  }

  void _addPickedItems(List<PickedFileItem> picked) {
    if (picked.isEmpty) return;
    final cfgMax = _effectiveMaxBytes;
    var total = files.fold<int>(0, (sum, f) => sum + f.size);
    final maxFiles = cfg.maxFiles <= 0 ? 999999 : cfg.maxFiles;
    var skipped = 0;

    for (final item in picked) {
      if (files.any((f) => f.path == item.path)) continue;
      if (total + item.size > cfgMax) {
        skipped++;
        continue;
      }
      if (files.length >= maxFiles) {
        skipped++;
        break;
      }
      total += item.size;
      files.add(item);
    }
    files.refresh();

    if (skipped > 0) {
      final t = appL10n();
      AppSnack.error(t.snackLimitReached, t.snackLimitFilesBody);
    }
  }

  void removeFile(PickedFileItem f) {
    files.remove(f);
  }

  void removeAllFiles() {
    if (files.isEmpty) return;
    files.clear();
    files.refresh();
  }

  Future<void> startSend(BuildContext context) async {
    if (files.isEmpty) return;

    final totalBytesNow = files.fold<int>(0, (s, f) => s + f.size);
    final cfgMax = _effectiveMaxBytes;
    if (totalBytesNow > cfgMax) {
      final t = appL10n();
      AppSnack.error(t.snackLimitReached, t.snackFreePlanLimit);
      return;
    }

    if (shareMode.value == 'mail' && !Get.find<AuthRepository>().loggedIn.value) {
      final t = appL10n();
      AppSnack.error(t.loginRequiredTitle, t.snackSignInEmail);
      Get.toNamed(AppRoutes.login);
      return;
    }

    // Validate email fields in mail mode (show inline "Please fill..." errors)
    if (shareMode.value == 'mail') {
      final ok = mailFormKey.currentState?.validate() ?? true;
      if (!ok) {
        // Focus first missing field for faster fix.
        final from = (emailFromCtrl?.text ?? '').trim();
        final to = (emailToCtrl?.text ?? '').trim();
        if (from.isEmpty) {
          emailFromFocus.requestFocus();
        } else if (to.isEmpty) {
          emailToFocus.requestFocus();
        }
        return;
      }
    }

    // Flip UI into loading state immediately (even while we sync language / request ids).
    uploading.value = true;
    progress.value = 0;
    uploadSentBytes.value = 0;
    uploadTotalBytes.value = files.fold<int>(0, (s, f) => s + f.size);
    finishedLink.value = '';
    mailFinished.value = false;
    awaitingVerify.value = false;
    _cancelToken?.cancel('superseded');
    _cancelToken = CancelToken();

    final langPath = _languagePathForUpload();

    try {
      final newId = await _upload.genUploadId();
      if (newId == null || newId.isEmpty) {
        final t = appL10n();
        AppSnack.error(t.snackUpload, t.snackUploadStartFailed);
        uploading.value = false;
        return;
      }
      activeUploadId = newId;
      var reg = await _register(verifyCode: null);
      if (reg.verifyEmail) {
        awaitingVerify.value = true;
        uploading.value = false;
        return;
      }
      // Match web behavior: only known error codes block upload.
      if (_isRegisterError(reg.code)) {
        uploading.value = false;
        final t = appL10n();
        AppSnack.error(t.snackUpload, _registerErrorMessage(reg.code));
        return;
      }
      await _runFileUploadAndComplete(langPath);
      _cancelToken = null;
    } catch (e) {
      if (e is Exception && '$e'.toLowerCase().contains('cancel')) {
        // User cancelled; no snackbar needed.
      } else {
        AppSnack.showDynamic(appL10n().snackError, '$e', type: AppSnackType.error);
      }
    } finally {
      if (!awaitingVerify.value) {
        uploading.value = false;
      }
    }
  }

  Future<RegisterResult> _register({String? verifyCode}) {
    final fromField = (emailFromCtrl?.text ?? '').trim();
    final sessionEmail = Get.find<AuthRepository>().sessionEmail.value.trim();
    // For link-mode uploads, keep ownership by associating the OTP session email
    // (so History can show transfers created while signed in).
    final emailFrom = shareMode.value == 'link' && fromField.isEmpty ? sessionEmail : fromField;

    return _upload.register(
      uploadId: activeUploadId,
      share: shareMode.value,
      destruct: destruct.value,
      message: messageCtrl?.text ?? '',
      password: passwordCtrl?.text ?? '',
      expireSec: expireSec.value,
      languagePath: _languagePathForUpload(),
      filePreviews: 'false',
      emailFrom: emailFrom,
      emailTo: _parseEmails(emailToCtrl?.text ?? ''),
      verifyCode: verifyCode,
    );
  }

  /// Re-request sender verification email (same as web: POST register again without code).
  Future<void> resendUploadVerifyCode(BuildContext context) async {
    if (activeUploadId.isEmpty || !awaitingVerify.value) return;
    final t = AppLocalizations.of(context);
    resendVerifyBusy.value = true;
    try {
      final reg = await _register(verifyCode: null);
      if (reg.verifyEmail) {
        AppSnack.info(appL10n().snackVerify, t?.verifyCodeSent ?? appL10n().verifyCodeSent);
      } else if (reg.isOk) {
        awaitingVerify.value = false;
        await _runFileUploadAndComplete(_languagePathForUpload());
      } else if (_isRegisterError(reg.code)) {
        AppSnack.error(appL10n().snackVerify, _registerErrorMessage(reg.code));
      } else {
        AppSnack.error(appL10n().snackVerify, appL10n().snackVerifyResendFailed);
      }
    } catch (e) {
      AppSnack.showDynamic(appL10n().snackError, '$e', type: AppSnackType.error);
    } finally {
      resendVerifyBusy.value = false;
    }
  }

  Future<void> submitVerifyAndUpload() async {
    if (activeUploadId.isEmpty) return;
    final code = verifyController.text.replaceAll(RegExp(r'\D'), '');
    if (code.length < 4) {
      AppSnack.error(appL10n().snackVerify, appL10n().snackVerifyEnterCode);
      return;
    }
    uploading.value = true;
    try {
      final verified = await _upload.verifyEmail(
        emailFrom: (emailFromCtrl?.text ?? '').trim(),
        code: code,
      );
      if (!verified) {
        AppSnack.error(appL10n().snackVerify, appL10n().snackVerifyInvalid);
        uploading.value = false;
        return;
      }
      final reg = await _register(verifyCode: code);
      if (!reg.isOk) {
        AppSnack.showDynamic(appL10n().snackVerify, reg.code, type: AppSnackType.error);
        uploading.value = false;
        return;
      }
      awaitingVerify.value = false;
      await _runFileUploadAndComplete(_languagePathForUpload());
    } catch (e) {
      AppSnack.showDynamic(appL10n().snackError, '$e', type: AppSnackType.error);
    } finally {
      uploading.value = false;
    }
  }

  Future<void> _runFileUploadAndComplete(String langPath) async {
    var grand = 0;
    for (final f in files) {
      grand += f.size;
    }
    if (grand == 0) grand = 1;
    uploadTotalBytes.value = grand;

    // Web uses `limitConcurrentUploads = maxConcurrentUploads`.
    // We mimic this by uploading multiple files in parallel (each file still chunks sequentially).
    final maxConc = cfg.maxConcurrentUploads <= 0 ? 1 : cfg.maxConcurrentUploads;
    final perFileSent = <String, int>{};
    final fileTotal = <String, int>{for (final f in files) f.fileUid: f.size};

    Future<void> runOne(PickedFileItem f) async {
      perFileSent[f.fileUid] = 0;
      await _upload.uploadFileChunks(
        uploadId: activeUploadId,
        item: f,
        cfg: cfg,
        cancelToken: _cancelToken,
        onProgress: (s, t) {
          perFileSent[f.fileUid] = s;
          final sum = perFileSent.values.fold<int>(0, (a, b) => a + b);
          progress.value = (sum / grand).clamp(0.0, 1.0);
          uploadSentBytes.value = sum;
        },
      );
      perFileSent[f.fileUid] = fileTotal[f.fileUid] ?? f.size;
      final sum = perFileSent.values.fold<int>(0, (a, b) => a + b);
      progress.value = (sum / grand).clamp(0.0, 1.0);
      uploadSentBytes.value = sum;
    }

    await _runWithConcurrency<PickedFileItem>(files.toList(), maxConc, runOne);

    final fromFieldComplete = (emailFromCtrl?.text ?? '').trim();
    final sessionEmailComplete = Get.find<AuthRepository>().sessionEmail.value.trim();
    final emailFromForComplete = shareMode.value == 'link' &&
            fromFieldComplete.isEmpty
        ? sessionEmailComplete
        : fromFieldComplete;

    await _upload.complete(
      uploadId: activeUploadId,
      share: shareMode.value,
      destruct: destruct.value,
      message: messageCtrl?.text ?? '',
      password: passwordCtrl?.text ?? '',
      expireSec: expireSec.value,
      languagePath: langPath,
      filePreviews: 'false',
      emailFrom: emailFromForComplete,
      emailTo: _parseEmails(emailToCtrl?.text ?? ''),
    );

    final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final expire = expireSec.value;
    await Get.find<HistoryRepository>().saveLocalTransfer(
      HistoryTransfer(
        uploadId: activeUploadId,
        share: shareMode.value,
        count: files.length,
        size: files.fold<int>(0, (sum, f) => sum + f.size),
        time: nowSec,
        timeExpire: expire <= 0 ? 0 : nowSec + expire,
        destruct: destruct.value,
        files: files
            .map(
              (f) => HistoryTransferFile(
                name: f.name,
                size: f.size,
              ),
            )
            .toList(),
      ),
    );

    if (Get.isRegistered<HistoryController>()) {
      await Get.find<HistoryController>().load(force: true);
    }

    final base = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    if (shareMode.value == 'link') {
      finishedLink.value = '$base$activeUploadId';
    } else {
      mailFinished.value = true;
    }

    // Once uploaded, clear the selected files (web resets the dropzone).
    files.clear();
    files.refresh();
    progress.value = 0;
    uploadSentBytes.value = 0;
    uploadTotalBytes.value = 0;
  }

  void cancelUpload() {
    final t = _cancelToken;
    if (t != null && !t.isCancelled) {
      t.cancel('user_cancelled');
    }
    uploading.value = false;
  }

  void resetForNewTransfer() {
    files.clear();
    files.refresh();
    progress.value = 0;
    uploadSentBytes.value = 0;
    uploadTotalBytes.value = 0;
    uploading.value = false;
    awaitingVerify.value = false;
    activeUploadId = '';
    finishedLink.value = '';
    mailFinished.value = false;
    verifyController.clear();
    messageCtrl?.clear();
    passwordCtrl?.clear();
    emailToCtrl?.clear();
    // Keep email_from (often reused) but you can clear it too if desired.
  }

  static bool _isRegisterError(String code) {
    return code == 'fields' || code == 'ip_limit' || code == 'email' || code == 'max_email';
  }

  String _registerErrorMessage(String code) {
    final t = appL10n();
    switch (code) {
      case 'fields':
        return t.fillFields;
      case 'ip_limit':
        return t.ipLimit;
      case 'email':
        return t.invalidEmail;
      case 'max_email':
        return t.maxRecipientsReached;
      default:
        return code;
    }
  }

  static Future<void> _runWithConcurrency<T>(
    List<T> items,
    int maxConcurrency,
    Future<void> Function(T item) task,
  ) async {
    if (items.isEmpty) return;
    final conc = maxConcurrency < 1 ? 1 : maxConcurrency;
    var i = 0;
    final running = <Future<void>>[];

    Future<void> spawnNext() async {
      if (i >= items.length) return;
      final item = items[i++];
      late final Future<void> future;
      future = task(item).whenComplete(() {
        running.remove(future);
      });
      running.add(future);
    }

    while (i < items.length && running.length < conc) {
      await spawnNext();
    }
    while (running.isNotEmpty) {
      await Future.any(running);
      while (i < items.length && running.length < conc) {
        await spawnNext();
      }
    }
  }

  String _languagePathForUpload() {
    final langs = cfg.languages;
    final lc = Get.find<LocaleController>().locale.value;
    for (final l in langs) {
      if (l.locale.toLowerCase().startsWith(lc.languageCode.toLowerCase())) {
        return l.path;
      }
    }
    return cfg.defaultLanguagePath;
  }

  List<String> _parseEmails(String raw) {
    final parts = raw.split(RegExp(r'[\s,;]+'));
    return parts.map((e) => e.trim()).where((e) => e.isNotEmpty).toList();
  }

  Future<void> shareResult() async {
    final link = finishedLink.value;
    if (link.isEmpty) return;
    await SharePlus.instance.share(ShareParams(text: link));
  }

  Future<void> shareQrCode() async {
    final link = finishedLink.value;
    if (link.isEmpty) return;

    final painter = QrPainter(
      data: link,
      version: QrVersions.auto,
      emptyColor: Colors.white,
      eyeStyle: const QrEyeStyle(
        eyeShape: QrEyeShape.square,
        color: Color(0xFF0A0C14),
      ),
      dataModuleStyle: const QrDataModuleStyle(
        color: Color(0xFF0A0C14),
      ),
    );

    try {
      final imageData = await painter.toImageData(
        768,
        format: ui.ImageByteFormat.png,
      );
      if (imageData == null) return;

      final dir = await getTemporaryDirectory();
      final id = activeUploadId.isNotEmpty ? activeUploadId : 'transfer';
      final file = File('${dir.path}/$id-qr.png');
      await file.writeAsBytes(imageData.buffer.asUint8List(), flush: true);

      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(file.path, mimeType: 'image/png')],
          text: link,
        ),
      );
    } catch (e) {
      AppSnack.showDynamic(appL10n().snackError, '$e', type: AppSnackType.error);
    }
  }

  void goDownload() {
    if (Get.isRegistered<AppShellController>()) {
      Get.find<AppShellController>().setTab(2); // Receive tab
      return;
    }
    Get.toNamed(AppRoutes.download);
  }

  void goSettings() {
    if (Get.isRegistered<AppShellController>()) {
      Get.find<AppShellController>().setTab(3); // Settings tab
      return;
    }
    Get.toNamed(AppRoutes.settings);
  }
}
