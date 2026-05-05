import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

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
        AppRoutes.shell,
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
    try {
      await ApiClient.instance.init();
      // No bootstrap call here: sharelargefilesfree.com returns HTML for `handler/app_config`.
      // Login gating will be enforced by the server when calling upload/download endpoints.
      Get.offAllNamed(AppRoutes.shell);
    } catch (_) {
      Get.offAllNamed(AppRoutes.shell);
    } finally {
      loading.value = false;
    }
  }
}
