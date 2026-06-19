import 'package:get/get.dart';
import 'package:sendlargefiles/modules/nearby/nearby_controller.dart';

class NearbyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(NearbyController.new);
  }
}
