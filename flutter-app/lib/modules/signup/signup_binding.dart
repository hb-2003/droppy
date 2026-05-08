import 'package:get/get.dart';
import 'package:sendlargefiles/modules/signup/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SignupController.new);
  }
}

