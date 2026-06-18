import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as p;
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/models/transfer_metadata.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_client.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_models.dart';
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
  final wifiUrlCtrl   = TextEditingController();

  final receiveMode    = 'cloud'.obs; // cloud | wifi
  final loading        = false.obs;
  final downloading    = false.obs;
  final wifiLoading    = false.obs;
  final wifiDownloading = false.obs;
  final wifiDownloadIndex = 0.obs;
  final lastFilename   = ''.obs;
  final Rxn<TransferMetadata> meta = Rxn<TransferMetadata>();
  final Rxn<WifiTransferManifest> wifiManifest = Rxn<WifiTransferManifest>();

  AppConfig get cfg => Get.find<ConfigRepository>().current;

  @override
  void onClose() {
    uploadIdCtrl.dispose();
    privateIdCtrl.dispose();
    passwordCtrl.dispose();
    wifiUrlCtrl.dispose();
    super.onClose();
  }

  void setReceiveMode(String mode) {
    receiveMode.value = mode;
    if (mode == 'cloud') {
      wifiManifest.value = null;
    } else {
      meta.value = null;
    }
  }

  void clear() {
    uploadIdCtrl.clear();
    privateIdCtrl.clear();
    passwordCtrl.clear();
    wifiUrlCtrl.clear();
    meta.value = null;
    wifiManifest.value = null;
    lastFilename.value = '';
  }

  void clearCloud() {
    uploadIdCtrl.clear();
    privateIdCtrl.clear();
    passwordCtrl.clear();
    meta.value = null;
  }

  void clearWifi() {
    wifiUrlCtrl.clear();
    wifiManifest.value = null;
  }

  /// Accepts a raw transfer id OR a full share URL.
  void setFromPastedLinkOrId(String raw) {
    if (!applyTransferReference(raw)) return;
    Future.microtask(loadMetadata);
  }

  void setFromPastedWifiUrl(String raw) {
    if (raw.trim().isEmpty) {
      wifiManifest.value = null;
      return;
    }
    if (WifiTransferEndpoint.tryParse(raw) == null) return;
    Future.microtask(loadWifiManifest);
  }

  /// Parses a scanned QR value and loads transfer details.
  Future<void> receiveFromScannedValue(String raw) async {
    if (WifiTransferEndpoint.tryParse(raw) != null) {
      await receiveWifiFromScanned(raw);
      return;
    }

    if (!applyTransferReference(raw)) {
      AppSnack.error(appL10n().snackError, appL10n().receiveScanQrInvalid);
      return;
    }

    setReceiveMode('cloud');
    await loadMetadata();
  }

  Future<void> receiveWifiFromScanned(String raw) async {
    final endpoint = WifiTransferEndpoint.tryParse(raw);
    if (endpoint == null) {
      AppSnack.error(appL10n().snackError, appL10n().receiveWifiInvalidUrl);
      return;
    }
    setReceiveMode('wifi');
    wifiUrlCtrl.text = '${endpoint.baseUrl}/wifi/${endpoint.sessionId}';
    await loadWifiManifest();
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

  Future<void> loadWifiManifest() async {
    final endpoint = WifiTransferEndpoint.tryParse(wifiUrlCtrl.text);
    if (endpoint == null) {
      AppSnack.error(appL10n().snackError, appL10n().receiveWifiInvalidUrl);
      return;
    }
    wifiLoading.value = true;
    try {
      final client = WifiTransferClient();
      wifiManifest.value = await client.fetchManifest(endpoint);
    } catch (_) {
      wifiManifest.value = null;
      AppSnack.error(appL10n().snackError, appL10n().receiveWifiConnectFailed);
    } finally {
      wifiLoading.value = false;
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

  Future<void> startWifiDownload() async {
    final endpoint = WifiTransferEndpoint.tryParse(wifiUrlCtrl.text);
    final manifest = wifiManifest.value;
    if (endpoint == null || manifest == null || manifest.files.isEmpty) return;

    wifiDownloading.value = true;
    wifiDownloadIndex.value = 0;
    try {
      final saveDir = await DownloadRepository.resolveDownloadsDirectory();
      if (!await saveDir.exists()) await saveDir.create(recursive: true);
      final client = WifiTransferClient();

      for (var i = 0; i < manifest.files.length; i++) {
        wifiDownloadIndex.value = i + 1;
        final file = manifest.files[i];
        final outPath = await _uniquePath(saveDir.path, file.name);
        await client.downloadFile(
          endpoint: endpoint,
          file: file,
          savePath: outPath,
        );
        lastFilename.value = p.basename(outPath);
      }

      final count = manifest.files.length;
      final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final wifiUrl = wifiUrlCtrl.text.trim();
      await Get.find<HistoryRepository>().saveLocalTransfer(
        HistoryTransfer(
          uploadId: 'recv_${endpoint.sessionId}',
          share: 'wifi_in',
          count: count,
          size: manifest.files.fold<int>(0, (s, f) => s + f.size),
          time: nowSec,
          timeExpire: 0,
          destruct: 'no',
          wifiUrl: wifiUrl,
          files: manifest.files
              .map((f) => HistoryTransferFile(name: f.name, size: f.size))
              .toList(),
        ),
      );
      if (Get.isRegistered<HistoryController>()) {
        await Get.find<HistoryController>().load(force: true);
      }

      final t = appL10n();
      if (count > 1) {
        AppSnack.success(t.snackDownloadComplete, t.wifiDownloadedFiles(count));
      } else {
        _showSuccessToast(lastFilename.value);
      }
    } catch (e) {
      _showErrorToast('$e');
    } finally {
      wifiDownloading.value = false;
      wifiDownloadIndex.value = 0;
    }
  }

  static Future<String> _uniquePath(String dir, String filename) async {
    var out = p.join(dir, filename);
    if (!await File(out).exists()) return out;
    final dot = filename.lastIndexOf('.');
    final base = dot >= 0 ? filename.substring(0, dot) : filename;
    final ext = dot >= 0 ? filename.substring(dot) : '';
    var n = 1;
    while (await File(out).exists()) {
      out = p.join(dir, '$base ($n)$ext');
      n++;
    }
    return out;
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
