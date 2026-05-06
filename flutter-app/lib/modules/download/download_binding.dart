import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/modules/download/download_controller.dart';

class DownloadBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<DownloadRepository>()) Get.put(DownloadRepository());
    // fenix: true → controller is auto-recreated if disposed (prevents
    // "TextEditingController used after dispose" when the /download route
    // pops but ReceiveView in the IndexedStack still holds the controller).
    Get.lazyPut(DownloadController.new, fenix: true);
  }
}
