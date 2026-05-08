import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' show CancelToken;
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/upload_repository.dart'
    show PickedFileItem, RegisterResult, UploadRepository;
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:share_plus/share_plus.dart' show ShareParams, SharePlus;
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
    if (cfg.expireOptionsSec.isNotEmpty) {
      expireSec.value = cfg.expireOptionsSec.first;
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
    final cfgMax = _effectiveMaxBytes;
    var total = 0;
    for (final f in files) {
      total += f.size;
    }
    final picked = UploadRepository.fromPickerResult(
      r.files,
      () => _uidCounter++,
    );
    final maxFiles = cfg.maxFiles <= 0 ? 999999 : cfg.maxFiles;
    for (final p in picked) {
      if (total + p.size > cfgMax) continue;
      if (files.length >= maxFiles) break;
      total += p.size;
      files.add(p);
    }
    files.refresh();
    } finally {
      pickingFiles.value = false;
    }
  }

  void removeFile(PickedFileItem f) {
    files.remove(f);
  }

  Future<void> startSend(BuildContext context) async {
    if (files.isEmpty) return;

    final totalBytesNow = files.fold<int>(0, (s, f) => s + f.size);
    final cfgMax = _effectiveMaxBytes;
    if (totalBytesNow > cfgMax) {
      AppSnack.error(
        'Limit reached',
        'Free plan allows up to 5GB per transfer. Please remove some files or upgrade.',
      );
      return;
    }

    if (shareMode.value == 'mail' && !Get.find<AuthRepository>().loggedIn.value) {
      AppSnack.error('Sign in required', 'Please sign in to send by email.');
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
        AppSnack.error('Upload', 'Could not start upload.');
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
        AppSnack.error('Upload', _registerErrorMessage(reg.code));
        return;
      }
      await _runFileUploadAndComplete(langPath);
      _cancelToken = null;
    } catch (e) {
      if (e is Exception && '$e'.toLowerCase().contains('cancel')) {
        // User cancelled; no snackbar needed.
      } else {
        AppSnack.error('Error', '$e');
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
        AppSnack.info('Verify', t?.verifyCodeSent ?? 'A new verification code was sent to your email.');
      } else if (reg.isOk) {
        awaitingVerify.value = false;
        await _runFileUploadAndComplete(_languagePathForUpload());
      } else if (_isRegisterError(reg.code)) {
        AppSnack.error('Verify', _registerErrorMessage(reg.code));
      } else {
        AppSnack.error('Verify', 'Could not resend code. Try again.');
      }
    } catch (e) {
      AppSnack.error('Error', '$e');
    } finally {
      resendVerifyBusy.value = false;
    }
  }

  Future<void> submitVerifyAndUpload() async {
    if (activeUploadId.isEmpty) return;
    final code = verifyController.text.replaceAll(RegExp(r'\D'), '');
    if (code.length < 4) {
      AppSnack.error('Verify', 'Enter the 4-digit code from your email.');
      return;
    }
    uploading.value = true;
    try {
      final verified = await _upload.verifyEmail(
        emailFrom: (emailFromCtrl?.text ?? '').trim(),
        code: code,
      );
      if (!verified) {
        AppSnack.error('Verify', 'Invalid or expired code. Check the email and try again.');
        uploading.value = false;
        return;
      }
      final reg = await _register(verifyCode: code);
      if (!reg.isOk) {
        AppSnack.error('Verify', reg.code);
        uploading.value = false;
        return;
      }
      awaitingVerify.value = false;
      await _runFileUploadAndComplete(_languagePathForUpload());
    } catch (e) {
      AppSnack.error('Error', '$e');
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

    if (Get.isRegistered<HistoryController>()) {
      await Get.find<HistoryController>().load();
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
    // Keep text-only here (no BuildContext). Maps to existing l10n keys where possible.
    switch (code) {
      case 'fields':
        return 'Please fill required fields';
      case 'ip_limit':
        return 'Too many uploads from this network';
      case 'email':
        return 'Invalid email';
      case 'max_email':
        return 'Too many recipients';
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
