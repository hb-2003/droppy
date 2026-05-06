import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

class AuthRepository extends GetxService {
  final RxBool loggedIn = false.obs;
  final RxString sessionEmail = ''.obs;

  /// POST handler/request_otp { email }
  /// Returns: 'sent' | 'invalid_email' | 'error'
  Future<String> requestOtp(String email) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<Map<String, dynamic>>(
        'handler/request_otp',
        data: dio.FormData.fromMap({'email': email}),
        options: dio.Options(
          validateStatus: (s) => s != null && s < 500,
          contentType: dio.Headers.multipartFormDataContentType,
        ),
      );
      return (resp.data?['result'] as String?) ?? 'error';
    } catch (_) {
      return 'error';
    }
  }

  /// POST handler/verify_otp { email, code }
  /// Returns: 'ok' | 'invalid' | 'expired' | 'error'
  Future<String> verifyOtp(String email, String code) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<Map<String, dynamic>>(
        'handler/verify_otp',
        data: dio.FormData.fromMap({'email': email, 'code': code}),
        options: dio.Options(
          validateStatus: (s) => s != null && s < 500,
          contentType: dio.Headers.multipartFormDataContentType,
        ),
      );
      final result = (resp.data?['result'] as String?) ?? 'error';
      if (result == 'ok') {
        loggedIn.value = true;
        sessionEmail.value = (resp.data?['email'] as String?)?.trim() ?? email.trim();
      }
      return result;
    } catch (_) {
      return 'error';
    }
  }

  /// GET handler/history_json — aligns [loggedIn] with the PHP session cookie.
  Future<void> refreshAuthFromServer() async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.get<Map<String, dynamic>>(
        'handler/history_json',
        options: dio.Options(validateStatus: (s) => s != null && s < 500),
      );
      final data = resp.data;
      final r = (data?['result'] as String?) ?? 'error';
      loggedIn.value = r == 'ok';
      sessionEmail.value = loggedIn.value ? ((data?['email'] as String?)?.trim() ?? '') : '';
    } catch (_) {
      loggedIn.value = false;
      sessionEmail.value = '';
    }
  }

  /// POST handler/otp_logout
  Future<void> logout() async {
    final client = ApiClient.instance.dio;
    try {
      await client.post<dynamic>(
        'handler/otp_logout',
        options: dio.Options(validateStatus: (s) => s != null && s < 500),
      );
    } catch (_) {}
    await ApiClient.instance.clearCookies();
    loggedIn.value = false;
    sessionEmail.value = '';
  }

  /// Sets PHP session language.
  Future<void> syncSessionLanguage(String pathSegment) async {
    final client = ApiClient.instance.dio;
    try {
      await client.get(
        'handler/changelanguage/$pathSegment',
        options: dio.Options(
          followRedirects: true,
          maxRedirects: 5,
          validateStatus: (s) => s != null && s < 500,
        ),
      );
    } catch (_) {}
  }
}
