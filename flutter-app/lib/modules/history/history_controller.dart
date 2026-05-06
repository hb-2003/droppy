import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';

class HistoryController extends GetxController {
  final HistoryRepository _repo = Get.find<HistoryRepository>();

  final loading = false.obs;
  final transfers = <HistoryTransfer>[].obs;
  final email = ''.obs;
  final needsLogin = false.obs;
  final error = false.obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  Future<void> load() async {
    loading.value = true;
    error.value = false;
    needsLogin.value = false;
    try {
      final result = await _repo.fetchHistory();
      if (result.needsLogin) {
        needsLogin.value = true;
      } else if (result.isOk) {
        email.value = result.email ?? '';
        transfers.value = result.transfers;
      } else {
        error.value = true;
      }
    } finally {
      loading.value = false;
    }
  }

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
    if (diff.inDays == 0) return 'Today';
    if (diff.inDays == 1) return 'Yesterday';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    return '${dt.day}/${dt.month}/${dt.year}';
  }
}
