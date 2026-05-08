import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sendlargefiles/app/config.dart';
import 'package:flutter/foundation.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

const _kBaseUrlKey = 'api_base_url';

const String kDefaultPublicApiBase = AppConfigDefaults.apiBaseUrl;

String normalizeBaseUrl(String url) {
  if (url.isEmpty) return url;
  return url.endsWith('/') ? url : '$url/';
}

String resolveBaseUrl() {
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

    // Pretty request/response logging (debug builds only).
    if (kDebugMode) {
      _dio!.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          compact: true,
          maxWidth: 120,
        ),
      );
    }

    // Global network error toast.
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onError: (e, h) {
          // Avoid spamming: only show when no response was received (timeouts, DNS, offline).
          if (e.response == null) {
            AppSnack.error('Network', 'Connection problem. Please try again.');
          }
          h.next(e);
        },
      ),
    );
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
