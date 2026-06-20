import 'package:get/get.dart';
import 'package:sendlargefiles/modules/drive/drive_controller.dart';

class DriveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(DriveController.new);
  }
}
