import 'package:get/get.dart';
import 'package:sendlargefiles/data/models/app_config.dart';

class ConfigRepository extends GetxService {
  final Rxn<AppConfig> config = Rxn<AppConfig>(AppConfig.fallback());

  Future<AppConfig> fetchRemote() async {
    // Intentionally disabled for sharelargefilesfree.com:
    // `handler/app_config` returns HTML on that host (not JSON).
    // We keep stable local defaults instead of calling bootstrap.
    final fb = AppConfig.fallback();
    config.value = fb;
    return fb;
  }

  AppConfig get current => config.value ?? AppConfig.fallback();

  // hydrateFromStorage / serializeCurrent were only used for bootstrap caching.
}
