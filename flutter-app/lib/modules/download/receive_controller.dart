import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/models/transfer_metadata.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

/// Dedicated controller for the Receive tab in the shell IndexedStack.
/// Registered as [permanent: true] so its TextEditingControllers are
/// never disposed while the shell is alive.
class ReceiveController extends GetxController {
  final DownloadRepository _dl = Get.find<DownloadRepository>();

  // Own TextEditingControllers — never shared with DownloadController.
  final uploadIdCtrl  = TextEditingController();
  final privateIdCtrl = TextEditingController();
  final passwordCtrl  = TextEditingController();

  final loading      = false.obs;
  final downloading  = false.obs;
  final lastFilename = ''.obs;
  final Rxn<TransferMetadata> meta = Rxn<TransferMetadata>();

  AppConfig get cfg => Get.find<ConfigRepository>().current;

  @override
  void onClose() {
    uploadIdCtrl.dispose();
    privateIdCtrl.dispose();
    passwordCtrl.dispose();
    super.onClose();
  }

  void clear() {
    uploadIdCtrl.clear();
    privateIdCtrl.clear();
    passwordCtrl.clear();
    meta.value = null;
    lastFilename.value = '';
  }

  /// Accepts a raw transfer id OR a full share URL.
  void setFromPastedLinkOrId(String raw) {
    if (!applyTransferReference(raw)) return;
    Future.microtask(loadMetadata);
  }

  /// Parses a scanned QR value and loads transfer details.
  Future<void> receiveFromScannedValue(String raw) async {
    if (!applyTransferReference(raw)) {
      AppSnack.error(appL10n().snackError, appL10n().receiveScanQrInvalid);
      return;
    }

    await loadMetadata();
  }

  /// Fills transfer fields from a share URL or raw transfer id.
  bool applyTransferReference(String raw) {
    final v = raw.trim();
    if (v.isEmpty) return false;

    final looksLikeUrl = v.contains('://') || v.contains('/') || v.contains('?');
    if (looksLikeUrl) {
      final normalized = v.contains('://') ? v : 'https://$v';
      final uri = Uri.tryParse(normalized);
      if (uri == null) return false;

      final segs = uri.pathSegments.where((s) => s.isNotEmpty).toList();
      if (segs.isEmpty) return false;

      final id = segs[0];
      final pid = segs.length > 1 ? segs[1] : '';

      if (uploadIdCtrl.text.trim() != id) {
        uploadIdCtrl.text = id;
        uploadIdCtrl.selection = TextSelection.collapsed(offset: id.length);
      }
      if (pid.isNotEmpty && privateIdCtrl.text.trim() != pid) {
        privateIdCtrl.text = pid;
        privateIdCtrl.selection = TextSelection.collapsed(offset: pid.length);
      } else if (pid.isEmpty && privateIdCtrl.text.isNotEmpty) {
        privateIdCtrl.clear();
      }
      return true;
    }

    if (uploadIdCtrl.text.trim() != v) {
      uploadIdCtrl.text = v;
      uploadIdCtrl.selection = TextSelection.collapsed(offset: v.length);
    }
    if (privateIdCtrl.text.isNotEmpty) {
      privateIdCtrl.clear();
    }
    return true;
  }

  Future<void> loadMetadata() async {
    final id = uploadIdCtrl.text.trim();
    if (id.isEmpty) return;
    loading.value = true;
    try {
      final m = await _dl.fetchMetadata(
        uploadId: id,
        privateId: privateIdCtrl.text.trim(),
      );
      meta.value = m;
    } finally {
      loading.value = false;
    }
  }

  Future<void> unlockAndReload() async {
    final site = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    final id   = uploadIdCtrl.text.trim();
    final pid  = privateIdCtrl.text.trim();
    final returnUrl = '$site$id${pid.isNotEmpty ? '/$pid' : ''}';
    await _dl.unlockPassword(
      uploadId: id,
      password: passwordCtrl.text,
      returnUrl: returnUrl,
    );
    await loadMetadata();
  }

  /// Downloads the file directly to the public Downloads folder and shows
  /// a confirmation snackbar. No share sheet — fully automatic.
  Future<void> startDownload() async {
    final id   = uploadIdCtrl.text.trim();
    final pid  = privateIdCtrl.text.trim();
    final site = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    final pageUrl = '$site$id${pid.isNotEmpty ? '/$pid' : ''}';

    // Sensible fallback filename before we get the server's Content-Disposition.
    final m     = meta.value;
    final count = m?.count ?? 0;
    String fallback;
    if (count > 1) {
      fallback = '$id.zip';
    } else if (m?.files.isNotEmpty == true) {
      fallback = m!.files.first.name;
    } else {
      fallback = '$id.bin';
    }

    downloading.value = true;
    try {
      final result = await _dl.downloadToFile(
        uploadId: id,
        privateId: pid,
        pageUrl: pageUrl,
        filename: fallback,
      );

      lastFilename.value = result.filename;
      _showSuccessToast(result.filename);
    } catch (e) {
      _showErrorToast('$e');
    } finally {
      downloading.value = false;
    }
  }

  // ── Toast helpers ─────────────────────────────────────────────────────────

  void _showSuccessToast(String filename) {
    final t = appL10n();
    AppSnack.success(t.snackDownloadComplete, t.snackDownloadSaved(filename));
  }

  void _showErrorToast(String message) {
    AppSnack.showDynamic(
      appL10n().snackDownloadFailed,
      message,
      type: AppSnackType.error,
    );
  }
}
