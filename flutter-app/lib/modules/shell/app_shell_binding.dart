import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/modules/download/receive_controller.dart';
import 'package:sendlargefiles/modules/shell/app_shell_controller.dart';

class AppShellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(AppShellController.new);

    // ReceiveController is permanent so its TextEditingControllers are
    // never disposed while the shell IndexedStack is alive.
    if (!Get.isRegistered<DownloadRepository>()) {
      Get.put(DownloadRepository());
    }
    Get.put(ReceiveController(), permanent: true);
  }
}
