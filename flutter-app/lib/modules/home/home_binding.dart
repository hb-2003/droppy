import 'package:get/get.dart';
import 'package:sendlargefiles/modules/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // HomeController owns multiple TextEditingControllers used inside the Shell's
    // IndexedStack tab. If GetX disposes it during route changes (e.g. pushing
    // Login on top), Flutter can rebuild the Home form with disposed controllers.
    // Keep it permanent for the app lifetime to avoid "used after dispose".
    if (!Get.isRegistered<HomeController>()) {
      Get.put(HomeController(), permanent: true);
    }
  }
}
