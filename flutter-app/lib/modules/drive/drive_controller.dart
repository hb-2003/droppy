import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sendlargefiles/data/repositories/upload_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/services/drive/drive_models.dart';
import 'package:sendlargefiles/services/drive/drive_service.dart';
import 'package:sendlargefiles/services/ios_security_scoped_folder.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

enum DriveRole { none, backup, download }

enum DriveStep {
  chooseRole,
  backupPick,
  backupUploading,
  downloadList,
  downloadDownloading,
  complete,
}

class DriveController extends GetxController {
  DriveController({DriveService? drive}) : _drive = drive ?? Get.find<DriveService>();

  final DriveService _drive;

  final step = DriveStep.chooseRole.obs;
  final role = DriveRole.none.obs;
  final files = <PickedFileItem>[].obs;
  final remoteFiles = <DriveRemoteFile>[].obs;
  final pickingFiles = false.obs;
  final loading = false.obs;
  final uploading = false.obs;
  final downloading = false.obs;
  final progress = 0.0.obs;
  final progressLabel = ''.obs;
  final Rxn<GoogleSignInAccount> account = Rxn<GoogleSignInAccount>();
  final Rxn<DriveRemoteFile> selectedRemote = Rxn<DriveRemoteFile>();
  final savedPath = ''.obs;

  int _uidCounter = 0;

  @override
  void onInit() {
    super.onInit();
    unawaited(_refreshAccount());
  }

  Future<void> _refreshAccount() async {
    account.value = await _drive.currentUser();
  }

  Future<bool> _ensureSignedIn() async {
    if (!_drive.isConfigured) {
      final t = appL10n();
      AppSnack.error(t.driveSetupTitle, t.driveSetupBody);
      return false;
    }
    var user = await _drive.currentUser();
    if (user != null) {
      account.value = user;
      return true;
    }
    user = await _drive.signIn();
    if (user == null) return false;
    account.value = user;
    return true;
  }

  void backToRoleChoice() {
    role.value = DriveRole.none;
    step.value = DriveStep.chooseRole;
    files.clear();
    remoteFiles.clear();
    selectedRemote.value = null;
    progress.value = 0;
    progressLabel.value = '';
    savedPath.value = '';
    uploading.value = false;
    downloading.value = false;
    loading.value = false;
  }

  Future<void> chooseBackup() async {
    if (!await _ensureSignedIn()) return;
    role.value = DriveRole.backup;
    step.value = DriveStep.backupPick;
    files.clear();
    remoteFiles.clear();
  }

  Future<void> chooseDownload() async {
    if (!await _ensureSignedIn()) return;
    role.value = DriveRole.download;
    step.value = DriveStep.downloadList;
    await loadRemoteFiles();
  }

  Future<void> pickFiles() async {
    if (pickingFiles.value) return;
    pickingFiles.value = true;
    try {
      final r = await FilePicker.platform.pickFiles(allowMultiple: true);
      if (r == null) return;
      _addPicked(
        UploadRepository.fromPickerResult(r.files, () => _uidCounter++),
      );
    } finally {
      pickingFiles.value = false;
    }
  }

  void removeFile(int index) {
    if (index < 0 || index >= files.length) return;
    files.removeAt(index);
  }

  void _addPicked(List<PickedFileItem> picked) {
    for (final item in picked) {
      if (files.any((f) => f.path == item.path)) continue;
      files.add(item);
    }
  }

  Future<void> startBackup() async {
    if (uploading.value || files.isEmpty) return;
    if (!await _ensureSignedIn()) return;
    uploading.value = true;
    progress.value = 0;
    step.value = DriveStep.backupUploading;
    final t = appL10n();
    try {
      final localFiles = files.map((f) => File(f.path)).toList();
      await _drive.uploadFiles(
        localFiles,
        onProgress: (index, total, fraction) {
          progress.value = fraction;
          progressLabel.value = t.driveUploadingFile(index + 1, total);
        },
      );
      step.value = DriveStep.complete;
      AppSnack.success(t.driveBackupDone, t.driveBackupDoneBody);
    } catch (_) {
      step.value = DriveStep.backupPick;
      AppSnack.error(t.snackError, t.driveUploadFailed);
    } finally {
      uploading.value = false;
      unawaited(IosSecurityScopedFolder.releaseActive());
    }
  }

  Future<void> loadRemoteFiles() async {
    if (loading.value) return;
    loading.value = true;
    final t = appL10n();
    try {
      if (!await _ensureSignedIn()) {
        backToRoleChoice();
        return;
      }
      remoteFiles.assignAll(await _drive.listBackupFiles());
    } catch (_) {
      AppSnack.error(t.snackError, t.driveListFailed);
    } finally {
      loading.value = false;
    }
  }

  Future<void> downloadSelected() async {
    final remote = selectedRemote.value;
    if (remote == null || downloading.value) return;
    downloading.value = true;
    progress.value = 0;
    step.value = DriveStep.downloadDownloading;
    final t = appL10n();
    try {
      final out = await _drive.downloadFile(
        remote,
        onProgress: (f) => progress.value = f,
      );
      savedPath.value = out.path;
      step.value = DriveStep.complete;
      AppSnack.success(t.downloadSaved, out.path.split('/').last);
    } catch (_) {
      step.value = DriveStep.downloadList;
      AppSnack.error(t.snackError, t.driveDownloadFailed);
    } finally {
      downloading.value = false;
    }
  }

  Future<void> signOut() async {
    await _drive.signOut();
    account.value = null;
    backToRoleChoice();
  }

  String formatSize(int bytes) {
    if (bytes <= 0) return '0 B';
    const units = ['B', 'KB', 'MB', 'GB', 'TB'];
    var i = 0;
    double v = bytes.toDouble();
    while (v >= 1024 && i < units.length - 1) {
      v /= 1024;
      i++;
    }
    return '${v.toStringAsFixed(v < 10 ? 1 : 0)} ${units[i]}';
  }
}
