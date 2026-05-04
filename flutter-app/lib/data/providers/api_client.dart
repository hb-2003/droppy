import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sendlargefiles/app/env.dart';

const _kBaseUrlKey = 'api_base_url';

/// Public Droppy site used when no env var and nothing saved in storage.
/// API calls use this origin (e.g. `handler/app_config`, `upload/genid`), not the `/admin` panel URL.
const String kDefaultPublicApiBase = 'https://sharelargefilesfree.com/';

/// Normalizes [url] to always end with `/`.
String normalizeBaseUrl(String url) {
  if (url.isEmpty) return url;
  return url.endsWith('/') ? url : '$url/';
}

String resolveBaseUrl() {
  final fromEnv = Env.apiBaseUrl.trim();
  if (fromEnv.isNotEmpty) return normalizeBaseUrl(fromEnv);
  final stored = (GetStorage().read(_kBaseUrlKey) as String?)?.trim() ?? '';
  if (stored.isNotEmpty) return normalizeBaseUrl(stored);
  return kDefaultPublicApiBase;
}

/// Clears a custom saved URL so [resolveBaseUrl] falls back to [kDefaultPublicApiBase].
void clearSavedBaseUrl() {
  GetStorage().remove(_kBaseUrlKey);
}

void saveBaseUrl(String url) {
  GetStorage().write(_kBaseUrlKey, normalizeBaseUrl(url));
}

class ApiClient {
  ApiClient._();

  static final ApiClient instance = ApiClient._();

  Dio? _dio;
  CookieJar? _jar;

  Dio get dio {
    final d = _dio;
    if (d == null) {
      throw StateError('ApiClient not initialized. Call init() first.');
    }
    return d;
  }

  /// True when a real API base is configured (not the invalid placeholder).
  bool get hasValidBaseUrl {
    final u = resolveBaseUrl();
    return u.isNotEmpty && u != 'http://invalid/';
  }

  Future<void> init() async {
    if (_dio != null) return;
    final dir = await getApplicationDocumentsDirectory();
    _jar = PersistCookieJar(
      storage: FileStorage('${dir.path}/.cookies'),
    );
    final base = resolveBaseUrl();
    _dio = Dio(
      BaseOptions(
        baseUrl: base.isEmpty ? 'http://invalid/' : base,
        connectTimeout: const Duration(minutes: 2),
        receiveTimeout: const Duration(minutes: 30),
        sendTimeout: const Duration(minutes: 30),
        followRedirects: true,
        validateStatus: (code) => code != null && code < 500,
        headers: <String, dynamic>{
          Headers.acceptHeader: 'application/json, text/plain, */*',
        },
      ),
    );
    if (_jar != null) {
      _dio!.interceptors.add(CookieManager(_jar!));
    }
  }

  void updateBaseUrl(String url) {
    saveBaseUrl(url);
    final normalized = resolveBaseUrl();
    _dio?.options.baseUrl = normalized.isEmpty ? 'http://invalid/' : normalized;
  }

  Future<void> clearCookies() async {
    if (_jar is PersistCookieJar) {
      await (_jar as PersistCookieJar).deleteAll();
    }
  }
}
