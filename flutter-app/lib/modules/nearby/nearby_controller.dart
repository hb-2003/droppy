import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as p;
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/data/repositories/upload_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';
import 'package:sendlargefiles/services/ios_security_scoped_folder.dart';
import 'package:sendlargefiles/services/nearby_transfer/nearby_discovery_service.dart';
import 'package:sendlargefiles/services/nearby_transfer/nearby_models.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_client.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_models.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_server.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

enum NearbyRole { none, send, receive }

enum NearbyStep {
  chooseRole,
  sendPickFiles,
  sendSharing,
  receiveScan,
  receivePreview,
  receiveDownloading,
  complete,
}

class NearbyController extends GetxController {
  final step = NearbyStep.chooseRole.obs;
  final role = NearbyRole.none.obs;
  final files = <PickedFileItem>[].obs;
  final pickingFiles = false.obs;
  final peers = <NearbyPeer>[].obs;
  final scanning = false.obs;
  final sharing = false.obs;
  final shareUrl = ''.obs;
  final connecting = false.obs;
  final downloading = false.obs;
  final downloadIndex = 0.obs;
  final Rxn<NearbyPeer> selectedPeer = Rxn<NearbyPeer>();
  final Rxn<WifiTransferManifest> manifest = Rxn<WifiTransferManifest>();

  final WifiTransferServer _wifiServer = WifiTransferServer();
  final NearbyDiscoveryService _discovery = NearbyDiscoveryService();
  int _uidCounter = 0;

  @override
  void onClose() {
    unawaited(_cleanup());
    super.onClose();
  }

  Future<void> _cleanup() async {
    await _wifiServer.stop();
    await _discovery.dispose();
    sharing.value = false;
    shareUrl.value = '';
    scanning.value = false;
  }

  void chooseSend() {
    role.value = NearbyRole.send;
    step.value = NearbyStep.sendPickFiles;
    peers.clear();
    manifest.value = null;
    selectedPeer.value = null;
  }

  Future<void> chooseReceive() async {
    role.value = NearbyRole.receive;
    step.value = NearbyStep.receiveScan;
    files.clear();
    manifest.value = null;
    selectedPeer.value = null;
    await _startScanning();
  }

  void backToRoleChoice() {
    unawaited(_cleanup());
    role.value = NearbyRole.none;
    step.value = NearbyStep.chooseRole;
    files.clear();
    peers.clear();
    manifest.value = null;
    selectedPeer.value = null;
    sharing.value = false;
    shareUrl.value = '';
  }

  void backToReceiveScan() {
    manifest.value = null;
    selectedPeer.value = null;
    step.value = NearbyStep.receiveScan;
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
      _addPicked(picked);
    } on UnimplementedError {
      final t = appL10n();
      AppSnack.error(t.snackFolderUnsupported, t.snackFolderUnsupportedBody);
    } catch (_) {
      final t = appL10n();
      unawaited(IosSecurityScopedFolder.releaseActive());
      AppSnack.error(t.snackError, t.snackFolderReadError);
    } finally {
      pickingFiles.value = false;
    }
  }

  void _addPicked(List<PickedFileItem> picked) {
    if (picked.isEmpty) return;
    const maxBytes = 5 * 1024 * 1024 * 1024;
    var total = files.fold<int>(0, (s, f) => s + f.size);
    for (final item in picked) {
      if (files.any((f) => f.path == item.path)) continue;
      if (total + item.size > maxBytes) continue;
      total += item.size;
      files.add(item);
    }
    files.refresh();
  }

  void removeFile(PickedFileItem f) => files.remove(f);

  void removeAllFiles() {
    files.clear();
    files.refresh();
    unawaited(IosSecurityScopedFolder.releaseActive());
  }

  Future<void> startSharing() async {
    if (files.isEmpty || sharing.value) return;
    final t = appL10n();
    try {
      final picked = files.toList();
      final url = await _wifiServer.start(picked);
      final uri = Uri.parse(url);
      final port = uri.port;
      final sessionId = _wifiServer.sessionId ?? '';

      await _discovery.advertise(
        deviceName: _deviceName(),
        port: port,
        sessionId: sessionId,
        fileCount: picked.length,
      );

      shareUrl.value = url;
      sharing.value = true;
      step.value = NearbyStep.sendSharing;

      final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      await Get.find<HistoryRepository>().saveLocalTransfer(
        HistoryTransfer(
          uploadId: sessionId,
          share: 'nearby',
          count: picked.length,
          size: picked.fold<int>(0, (s, f) => s + f.size),
          time: nowSec,
          timeExpire: 0,
          destruct: 'no',
          wifiUrl: url,
          files: picked
              .map((f) => HistoryTransferFile(name: f.name, size: f.size))
              .toList(),
        ),
      );
      if (Get.isRegistered<HistoryController>()) {
        await Get.find<HistoryController>().load(force: true);
      }
    } on StateError catch (e) {
      if ('$e'.contains('no_network')) {
        AppSnack.error(t.snackWifiNoNetwork, t.snackWifiNoNetworkBody);
      } else {
        AppSnack.error(t.snackWifiShareFailed, t.snackWifiShareFailedBody);
      }
    } catch (e) {
      AppSnack.showDynamic(t.snackWifiShareFailed, '$e', type: AppSnackType.error);
    }
  }

  Future<void> stopSharing() async {
    await _cleanup();
    step.value = NearbyStep.sendPickFiles;
    sharing.value = false;
    shareUrl.value = '';
  }

  Future<void> _startScanning() async {
    if (scanning.value) return;
    scanning.value = true;
    peers.clear();
    try {
      await _discovery.startBrowsing(
        onPeersChanged: (list) {
          peers.assignAll(list);
        },
      );
    } catch (e) {
      AppSnack.showDynamic(appL10n().snackError, '$e', type: AppSnackType.error);
    } finally {
      scanning.value = false;
    }
  }

  Future<void> refreshScan() async {
    await _discovery.stopBrowsing();
    peers.clear();
    await _startScanning();
  }

  Future<void> selectPeer(NearbyPeer peer) async {
    if (connecting.value) return;
    connecting.value = true;
    selectedPeer.value = peer;
    try {
      final client = WifiTransferClient();
      final m = await client.fetchManifest(peer.endpoint);
      manifest.value = m;
      step.value = NearbyStep.receivePreview;
    } catch (_) {
      manifest.value = null;
      selectedPeer.value = null;
      AppSnack.error(appL10n().snackError, appL10n().nearbyConnectFailed);
    } finally {
      connecting.value = false;
    }
  }

  Future<void> downloadAll() async {
    final peer = selectedPeer.value;
    final m = manifest.value;
    if (peer == null || m == null || m.files.isEmpty || downloading.value) {
      return;
    }

    downloading.value = true;
    downloadIndex.value = 0;
    step.value = NearbyStep.receiveDownloading;

    try {
      final saveDir = await DownloadRepository.resolveDownloadsDirectory();
      if (!await saveDir.exists()) await saveDir.create(recursive: true);
      final client = WifiTransferClient();

      for (var i = 0; i < m.files.length; i++) {
        downloadIndex.value = i + 1;
        final file = m.files[i];
        final outPath = await _uniquePath(saveDir.path, file.name);
        await client.downloadFile(
          endpoint: peer.endpoint,
          file: file,
          savePath: outPath,
        );
      }

      final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      await Get.find<HistoryRepository>().saveLocalTransfer(
        HistoryTransfer(
          uploadId: 'nearby_in_${peer.sessionId}',
          share: 'nearby_in',
          count: m.files.length,
          size: m.files.fold<int>(0, (s, f) => s + f.size),
          time: nowSec,
          timeExpire: 0,
          destruct: 'no',
          wifiUrl: peer.shareUrl,
          files: m.files
              .map((f) => HistoryTransferFile(name: f.name, size: f.size))
              .toList(),
        ),
      );
      if (Get.isRegistered<HistoryController>()) {
        await Get.find<HistoryController>().load(force: true);
      }

      step.value = NearbyStep.complete;
      final t = appL10n();
      if (m.files.length > 1) {
        AppSnack.success(t.snackDownloadComplete, t.wifiDownloadedFiles(m.files.length));
      } else {
        AppSnack.success(t.snackDownloadComplete, t.snackDownloadSaved(m.files.first.name));
      }
    } catch (e) {
      step.value = NearbyStep.receivePreview;
      AppSnack.showDynamic(appL10n().snackDownloadFailed, '$e', type: AppSnackType.error);
    } finally {
      downloading.value = false;
      downloadIndex.value = 0;
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

  static String _deviceName() {
    try {
      final host = Platform.localHostname.trim();
      if (host.isNotEmpty && host != 'localhost') return host;
    } catch (_) {}
    return 'Me Transfer';
  }
}
