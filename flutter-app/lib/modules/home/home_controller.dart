import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/upload_repository.dart'
    show PickedFileItem, RegisterResult, UploadRepository;
import 'package:sendlargefiles/widgets/auth_bottom_sheet.dart';
import 'package:share_plus/share_plus.dart' show ShareParams, SharePlus;

class HomeController extends GetxController {
  final ConfigRepository _cfg = Get.find<ConfigRepository>();
  final UploadRepository _upload = Get.find<UploadRepository>();

  final shareMode = 'link'.obs;
  final destruct = 'no'.obs;
  final files = <PickedFileItem>[].obs;
  final uploading = false.obs;
  final progress = 0.0.obs;
  final finishedLink = ''.obs;
  final mailFinished = false.obs;
  final awaitingVerify = false.obs;
  final verifyController = TextEditingController();

  /// Set after genid / register.
  String activeUploadId = '';

  final expireSec = 604800.obs;
  int _uidCounter = 0;

  AppConfig get cfg => _cfg.current;

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
    messageCtrl?.dispose();
    passwordCtrl?.dispose();
    emailFromCtrl?.dispose();
    emailToCtrl?.dispose();
    verifyController.dispose();
    super.onClose();
  }

  void setShareMode(String m) => shareMode.value = m;

  Future<void> pickFiles() async {
    final r = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (r == null) return;
    final cfgMax = cfg.maxSizeBytes;
    var total = 0;
    for (final f in files) {
      total += f.size;
    }
    final picked = UploadRepository.fromPickerResult(
      r.files,
      () => _uidCounter++,
    );
    for (final p in picked) {
      if (total + p.size > cfgMax) continue;
      if (files.length >= cfg.maxFiles) break;
      total += p.size;
      files.add(p);
    }
    files.refresh();
  }

  void removeFile(PickedFileItem f) {
    files.remove(f);
  }

  Future<void> startSend(BuildContext context) async {
    if (files.isEmpty) return;

    if (shareMode.value == 'mail') {
      final ok = await showAuthForEmailSheet(context);
      if (!ok) return;
    }

    final langPath = _languagePathForUpload();
    await Get.find<AuthRepository>().syncSessionLanguage(langPath);

    uploading.value = true;
    progress.value = 0;
    finishedLink.value = '';
    mailFinished.value = false;
    awaitingVerify.value = false;

    try {
      final newId = await _upload.genUploadId();
      if (newId == null || newId.isEmpty) {
        Get.snackbar('Upload', 'Could not start upload. Check API base URL in Settings.');
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
      if (!reg.isOk) {
        uploading.value = false;
        Get.snackbar('Upload', reg.code);
        return;
      }
      await _runFileUploadAndComplete(langPath);
    } catch (e) {
      Get.snackbar('Error', '$e');
    } finally {
      if (!awaitingVerify.value) {
        uploading.value = false;
      }
    }
  }

  Future<RegisterResult> _register({String? verifyCode}) {
    return _upload.register(
      uploadId: activeUploadId,
      share: shareMode.value,
      destruct: destruct.value,
      message: messageCtrl?.text ?? '',
      password: passwordCtrl?.text ?? '',
      expireSec: expireSec.value,
      languagePath: _languagePathForUpload(),
      filePreviews: 'false',
      emailFrom: emailFromCtrl?.text ?? '',
      emailTo: _parseEmails(emailToCtrl?.text ?? ''),
      verifyCode: verifyCode,
    );
  }

  Future<void> submitVerifyAndUpload() async {
    if (activeUploadId.isEmpty) return;
    final code = verifyController.text.trim();
    if (code.isEmpty) return;
    uploading.value = true;
    try {
      final verified = await _upload.verifyEmail(
        emailFrom: emailFromCtrl?.text ?? '',
        code: code,
      );
      if (!verified) {
        Get.snackbar('Verify', 'Verification request failed');
        uploading.value = false;
        return;
      }
      final reg = await _register(verifyCode: code);
      if (!reg.isOk) {
        Get.snackbar('Verify', reg.code);
        uploading.value = false;
        return;
      }
      awaitingVerify.value = false;
      await _runFileUploadAndComplete(_languagePathForUpload());
    } catch (e) {
      Get.snackbar('Error', '$e');
    } finally {
      uploading.value = false;
    }
  }

  Future<void> _runFileUploadAndComplete(String langPath) async {
    var sentTotal = 0;
    var grand = 0;
    for (final f in files) {
      grand += f.size;
    }
    if (grand == 0) grand = 1;

    for (final f in files) {
      await _upload.uploadFileChunks(
        uploadId: activeUploadId,
        item: f,
        cfg: cfg,
        onProgress: (s, t) {
          final base = sentTotal + s;
          progress.value = base / grand;
        },
      );
      sentTotal += f.size;
      progress.value = sentTotal / grand;
    }

    await _upload.complete(
      uploadId: activeUploadId,
      share: shareMode.value,
      destruct: destruct.value,
      message: messageCtrl?.text ?? '',
      password: passwordCtrl?.text ?? '',
      expireSec: expireSec.value,
      languagePath: langPath,
      filePreviews: 'false',
      emailFrom: emailFromCtrl?.text ?? '',
      emailTo: _parseEmails(emailToCtrl?.text ?? ''),
    );

    final base = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : '';
    if (shareMode.value == 'link') {
      finishedLink.value = '$base$activeUploadId';
    } else {
      mailFinished.value = true;
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

  void goDownload() => Get.toNamed(AppRoutes.download);

  void goSettings() => Get.toNamed(AppRoutes.settings);
}
