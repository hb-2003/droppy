import 'package:get/get.dart';
import 'package:sendlargefiles/modules/plans/plans_controller.dart';

class PlansBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(PlansController.new);
  }
}

