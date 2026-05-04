import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

class AuthRepository extends GetxService {
  final RxBool loggedIn = false.obs;

  /// POST site login form (`/login`).
  Future<bool> login({required String email, required String password}) async {
    final client = ApiClient.instance.dio;
    final fd = dio.FormData.fromMap(<String, dynamic>{
      'email': email,
      'password': password,
    });
    try {
      await client.post<dynamic>(
        'login',
        data: fd,
        options: dio.Options(
          followRedirects: true,
          maxRedirects: 8,
          validateStatus: (s) => s != null && s < 500,
          contentType: dio.Headers.multipartFormDataContentType,
        ),
      );
      loggedIn.value = true;
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<void> logout() async {
    await ApiClient.instance.clearCookies();
    loggedIn.value = false;
  }

  /// Sets PHP session language (same as web header picker).
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
