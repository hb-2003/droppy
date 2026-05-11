import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<HistoryRepository>()) {
      Get.put(HistoryRepository(), permanent: true);
    }
    Get.lazyPut<HistoryController>(HistoryController.new);
  }
}
