import 'package:get/get.dart';
import 'package:sendlargefiles/modules/forgot_password/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ForgotPasswordController.new);
  }
}
