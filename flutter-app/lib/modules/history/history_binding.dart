import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryRepository>(HistoryRepository.new);
    Get.lazyPut<HistoryController>(HistoryController.new);
  }
}
