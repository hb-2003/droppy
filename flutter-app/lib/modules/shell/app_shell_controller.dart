import 'dart:async';
import 'package:get/get.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';

class AppShellController extends GetxController {
  /// 0 = Home, 1 = History, 2 = Receive, 3 = Plans, 4 = Settings
  final tabIndex = 0.obs;

  Timer? _historyDebounce;

  void setTab(int i) {
    if (tabIndex.value == i) return; // already on this tab — skip
    tabIndex.value = i;

    if (i == 1) {
      // Debounce: wait one frame before triggering load so rapid
      // rebuilds / multiple setTab() calls collapse into a single fetch.
      _historyDebounce?.cancel();
      _historyDebounce = Timer(const Duration(milliseconds: 50), () {
        if (Get.isRegistered<HistoryController>()) {
          Get.find<HistoryController>().load(force: true, migrateLocal: true);
        }
      });
    }
  }

  @override
  void onClose() {
    _historyDebounce?.cancel();
    super.onClose();
  }
}
