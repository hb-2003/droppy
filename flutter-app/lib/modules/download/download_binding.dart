import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/modules/download/download_controller.dart';

class DownloadBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<DownloadRepository>()) Get.put(DownloadRepository());
    Get.lazyPut(DownloadController.new);
  }
}
