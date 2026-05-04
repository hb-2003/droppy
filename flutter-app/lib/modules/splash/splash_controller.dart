import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';

const _kCachedConfig = 'cached_app_config_json';

class SplashController extends GetxController {
  final RxBool loading = true.obs;
  StreamSubscription<Uri>? _linkSub;

  @override
  void onReady() {
    super.onReady();
    _bootstrap();
    _linkSub = AppLinks().uriLinkStream.listen((uri) {
      final segs = uri.pathSegments.where((s) => s.isNotEmpty).toList();
      if (segs.isEmpty) return;
      final id = segs[0];
      final pid = segs.length > 1 ? segs[1] : '';
      Get.toNamed(
        AppRoutes.download,
        parameters: <String, String>{'id': id, 'pid': pid},
      );
    });
  }

  @override
  void onClose() {
    _linkSub?.cancel();
    super.onClose();
  }

  Future<void> _bootstrap() async {
    final cfgRepo = Get.find<ConfigRepository>();
    final box = GetStorage();
    final cached = box.read<String>(_kCachedConfig);
    await cfgRepo.hydrateFromStorage(cached);

    try {
      await ApiClient.instance.init();
      final cfg = await cfgRepo.fetchRemote();
      final serialized = cfgRepo.serializeCurrent();
      if (serialized != null) {
        await box.write(_kCachedConfig, serialized);
      }

      final lp = cfg.lockPage;
      if (lp == 'both') {
        Get.offAllNamed(AppRoutes.login);
        return;
      }

      Get.offAllNamed(AppRoutes.home);
    } catch (_) {
      Get.offAllNamed(AppRoutes.home);
    } finally {
      loading.value = false;
    }
  }
}
