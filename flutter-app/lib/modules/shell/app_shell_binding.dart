import 'package:get/get.dart';
import 'package:sendlargefiles/modules/shell/app_shell_controller.dart';

class AppShellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(AppShellController.new);
  }
}

