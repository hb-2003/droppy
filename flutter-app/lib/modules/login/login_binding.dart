import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/modules/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<AuthRepository>()) Get.put(AuthRepository());
    Get.lazyPut(LoginController.new);
  }
}
