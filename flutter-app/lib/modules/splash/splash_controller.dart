import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:dio/dio.dart' as import_dio;
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';

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
      // Accept terms so the server sets the required cookie before any API call.
      await _acceptTerms();
      await Get.find<AuthRepository>().refreshAuthFromServer();
      Get.offAllNamed(AppRoutes.shell);
    } catch (_) {
      Get.offAllNamed(AppRoutes.shell);
    } finally {
      loading.value = false;
    }
  }

  Future<void> _acceptTerms() async {
    try {
      final base = ApiClient.instance.dio.options.baseUrl;
      await ApiClient.instance.dio.get<dynamic>(
        'handler/acceptterms',
        queryParameters: {'url': base},
        options: _noFollow,
      );
    } catch (_) {}
  }

  static final _noFollow = import_dio.Options(
    followRedirects: false,
    validateStatus: (s) => s != null && s < 600,
  );
}
