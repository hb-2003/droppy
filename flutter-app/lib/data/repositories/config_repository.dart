import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

class ConfigRepository extends GetxService {
  final Rxn<AppConfig> config = Rxn<AppConfig>(AppConfig.fallback());

  Future<AppConfig> fetchRemote() async {
    if (!ApiClient.instance.hasValidBaseUrl) {
      final fb = AppConfig.fallback();
      config.value = fb;
      return fb;
    }
    final dio = ApiClient.instance.dio;
    try {
      final res = await dio.get<Map<String, dynamic>>(
        'handler/app_config',
        options: Options(responseType: ResponseType.json),
      );
      final data = res.data;
      if (data is Map<String, dynamic>) {
        final c = AppConfig.fromJson(data);
        config.value = c;
        return c;
      }
    } catch (_) {}
    final fb = AppConfig.fallback();
    config.value = fb;
    return fb;
  }

  AppConfig get current => config.value ?? AppConfig.fallback();

  /// Cached JSON for offline theme (optional).
  Future<void> hydrateFromStorage(String? json) async {
    if (json == null || json.isEmpty) return;
    try {
      final m = jsonDecode(json) as Map<String, dynamic>;
      config.value = AppConfig.fromJson(m);
    } catch (_) {}
  }

  String? serializeCurrent() {
    final c = config.value;
    if (c == null) return null;
    return jsonEncode({
      'site_url': c.siteUrl,
      'theme_color': c.themeColor,
      'theme_color_secondary': c.themeColorSecondary,
      'theme_color_text': c.themeColorText,
      'max_size': c.maxSizeMb,
      'max_chunk_size': c.maxChunkSizeMb,
      'max_files': c.maxFiles,
      'max_concurrent_uploads': c.maxConcurrentUploads,
      'share_enabled': c.shareEnabled,
      'default_sharetype': c.defaultSharetype,
      'blocked_types': c.blockedTypes,
      'lock_page': c.lockPage,
      'accept_terms': c.acceptTerms,
      'language': c.defaultLanguagePath,
      'languages': c.languages
          .map((e) => {'id': e.id, 'name': e.name, 'path': e.path, 'locale': e.locale})
          .toList(),
      'recaptcha_site_key': c.recaptchaSiteKey,
      'expire_options': c.expireOptionsSec,
    });
  }
}
