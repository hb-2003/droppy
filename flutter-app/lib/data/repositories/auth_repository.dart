import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:sendlargefiles/data/models/json_utils.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

/// Handler JSON posts: some hosts return JSON as `text/html` or wrap the body, so Dio
/// may not decode to a [Map]. We always request plain text and parse with [JsonRead.decodeResponseJson].
dio.Options _handlerPostOptions() => dio.Options(
      validateStatus: (s) => s != null && s < 500,
      contentType: dio.Headers.multipartFormDataContentType,
      responseType: dio.ResponseType.plain,
    );

String _resultFromBody(String raw) =>
    JsonRead.string(JsonRead.decodeResponseJson(raw)?['result']) ?? 'error';

class AuthRepository extends GetxService {
  final RxBool loggedIn = false.obs;
  final RxString sessionEmail = ''.obs;

  /// POST handler/login_password { email, password }
  /// Returns: 'ok' | 'invalid_email' | 'invalid_credentials' | 'error'
  Future<String> loginWithPassword(String email, String password) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<String>(
        'handler/login_password',
        data: dio.FormData.fromMap({'email': email, 'password': password}),
        options: _handlerPostOptions(),
      );
      final data = JsonRead.decodeResponseJson((resp.data ?? '').toString());
      final result = JsonRead.string(data?['result']) ?? 'error';
      if (result == 'ok') {
        loggedIn.value = true;
        sessionEmail.value = (JsonRead.string(data?['email']) ?? '').trim().isEmpty
            ? email.trim()
            : JsonRead.string(data?['email'])!.trim();
      }
      return result;
    } catch (_) {
      return 'error';
    }
  }

  Future<String> signupWithPassword(String email, String password) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<String>(
        'handler/signup_password',
        data: dio.FormData.fromMap({'email': email, 'password': password}),
        options: _handlerPostOptions(),
      );
      final data = JsonRead.decodeResponseJson((resp.data ?? '').toString());
      final result = JsonRead.string(data?['result']) ?? 'error';
      if (result == 'ok') {
        loggedIn.value = true;
        sessionEmail.value = (JsonRead.string(data?['email']) ?? '').trim().isEmpty
            ? email.trim()
            : JsonRead.string(data?['email'])!.trim();
      }
      return result;
    } catch (_) {
      return 'error';
    }
  }

  /// POST handler/request_otp { email }
  /// Returns: 'sent' | 'invalid_email' | 'error'
  Future<String> requestOtp(String email) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<String>(
        'handler/request_otp',
        data: dio.FormData.fromMap({'email': email}),
        options: _handlerPostOptions(),
      );
      return _resultFromBody((resp.data ?? '').toString());
    } catch (_) {
      return 'error';
    }
  }

  /// POST handler/verify_otp { email, code }
  /// Returns: 'ok' | 'invalid' | 'expired' | 'error'
  Future<String> verifyOtp(String email, String code) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<String>(
        'handler/verify_otp',
        data: dio.FormData.fromMap({'email': email, 'code': code}),
        options: _handlerPostOptions(),
      );
      final data = JsonRead.decodeResponseJson((resp.data ?? '').toString());
      final result = JsonRead.string(data?['result']) ?? 'error';
      if (result == 'ok') {
        loggedIn.value = true;
        sessionEmail.value = (JsonRead.string(data?['email']) ?? '').trim().isEmpty
            ? email.trim()
            : JsonRead.string(data?['email'])!.trim();
      }
      return result;
    } catch (_) {
      return 'error';
    }
  }

  /// POST handler/request_password_reset { email }
  Future<String> requestPasswordReset(String email) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<String>(
        'handler/request_password_reset',
        data: dio.FormData.fromMap({'email': email}),
        options: _handlerPostOptions(),
      );
      return _resultFromBody((resp.data ?? '').toString());
    } catch (_) {
      return 'error';
    }
  }

  /// POST handler/reset_password { email, code, password }
  Future<String> resetPassword(String email, String code, String password) async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.post<String>(
        'handler/reset_password',
        data: dio.FormData.fromMap({
          'email': email,
          'code': code,
          'password': password,
        }),
        options: _handlerPostOptions(),
      );
      return _resultFromBody((resp.data ?? '').toString());
    } catch (_) {
      return 'error';
    }
  }

  /// GET handler/history_json — aligns [loggedIn] with the PHP session cookie.
  Future<void> refreshAuthFromServer() async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.get<String>(
        'handler/history_json',
        options: dio.Options(
          validateStatus: (s) => s != null && s < 500,
          responseType: dio.ResponseType.plain,
        ),
      );
      final data = JsonRead.decodeResponseJson((resp.data ?? '').toString());
      final r = JsonRead.string(data?['result']) ?? 'error';
      loggedIn.value = r == 'ok';
      sessionEmail.value = loggedIn.value ? ((JsonRead.string(data?['email']) ?? '').trim()) : '';
    } catch (_) {
      loggedIn.value = false;
      sessionEmail.value = '';
    }
  }

  /// POST handler/otp_logout
  Future<void> logout() async {
    final client = ApiClient.instance.dio;
    try {
      await client.post<String>(
        'handler/otp_logout',
        options: dio.Options(
          validateStatus: (s) => s != null && s < 500,
          responseType: dio.ResponseType.plain,
        ),
      );
    } catch (_) {}
    await ApiClient.instance.clearCookies();
    loggedIn.value = false;
    sessionEmail.value = '';
  }
}
