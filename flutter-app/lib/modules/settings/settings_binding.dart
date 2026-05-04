import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/modules/settings/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SettingsController.new);
    if (!Get.isRegistered<ConfigRepository>()) Get.put(ConfigRepository());
  }
}
