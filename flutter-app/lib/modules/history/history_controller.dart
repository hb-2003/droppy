import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';

class HistoryController extends GetxController {
  final HistoryRepository _repo = Get.find<HistoryRepository>();

  final loading = false.obs;
  final transfers = <HistoryTransfer>[].obs;
  final email = ''.obs;
  final needsLogin = false.obs;
  final error = false.obs;

  /// Tracks when data was last successfully fetched to avoid redundant calls.
  DateTime? _lastLoadedAt;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  /// Loads history. Skips if already loading.
  /// [force] bypasses the cooldown (e.g. pull-to-refresh).
  /// [migrateLocal] pushes guest transfers to the server when signed in.
  Future<void> load({bool force = false, bool migrateLocal = false}) async {
    // Prevent concurrent calls.
    if (loading.value) return;

    // If data was loaded less than 30 s ago and this isn't a forced refresh, skip.
    if (!force && _lastLoadedAt != null &&
        DateTime.now().difference(_lastLoadedAt!).inSeconds < 30) {
      return;
    }

    loading.value = true;
    error.value = false;
    needsLogin.value = false;
    try {
      var local = _repo.readLocalTransfers();
      transfers.assignAll(local);

      final auth = Get.find<AuthRepository>();
      if (migrateLocal && auth.loggedIn.value && local.isNotEmpty) {
        await _repo.syncLocalTransfersToServer();
        local = _repo.readLocalTransfers();
        transfers.assignAll(local);
      }

      if (!auth.loggedIn.value) {
        _lastLoadedAt = DateTime.now();
        return;
      }

      final result = await _repo.fetchHistory();
      if (result.isOk) {
        email.value = result.email ?? '';
        transfers.value = _repo.mergeTransfers(local, result.transfers);
        _lastLoadedAt = DateTime.now();
      } else if (local.isEmpty) {
        error.value = true;
        needsLogin.value = result.needsLogin;
      }
    } finally {
      loading.value = false;
    }
  }

  /// Called by pull-to-refresh — always re-fetches.
  Future<void> forceRefresh() => load(force: true, migrateLocal: true);

  void goLogin() => Get.toNamed(AppRoutes.login);

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

  String formatDate(int timestamp) {
    if (timestamp <= 0) return '';
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final now = DateTime.now();
    final diff = now.difference(dt);
    String timeOfDay() {
      // 12-hour format without importing intl.
      final h = dt.hour;
      final m = dt.minute.toString().padLeft(2, '0');
      final ap = h >= 12 ? 'PM' : 'AM';
      final hh = (h % 12 == 0) ? 12 : (h % 12);
      return '$hh:$m $ap';
    }

    if (diff.inDays == 0) return 'Today · ${timeOfDay()}';
    if (diff.inDays == 1) return 'Yesterday · ${timeOfDay()}';
    if (diff.inDays < 7) return '${diff.inDays}d ago · ${timeOfDay()}';
    return '${dt.day}/${dt.month}/${dt.year} · ${timeOfDay()}';
  }
}
