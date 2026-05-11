import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/controllers/theme_controller.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsController extends GetxController {
  final AuthRepository _auth = Get.find<AuthRepository>();
  final ThemeController _theme = Get.find<ThemeController>();

  late final TextEditingController serverUrlCtrl;

  RxBool get loggedIn => _auth.loggedIn;
  ThemeMode get themeMode => _theme.themeMode.value;

  /// Base URL used to open public pages in an external browser.
  ///
  /// For this app the "public site" is the same origin as the API base.
  String get publicSiteUrl => resolveBaseUrl();

  @override
  void onInit() {
    super.onInit();
    serverUrlCtrl = TextEditingController(text: resolveBaseUrl());
  }

  @override
  void onClose() {
    serverUrlCtrl.dispose();
    super.onClose();
  }

  void saveServerUrl() {
    final url = serverUrlCtrl.text.trim();
    if (url.isEmpty) return;
    ApiClient.instance.updateBaseUrl(url);
    final t = appL10n();
    AppSnack.success(t.snackSaved, t.snackServerUrlUpdated);
  }

  void goLogin() => Get.toNamed(AppRoutes.login);
  void goSignup() => Get.toNamed(AppRoutes.signup);

  void setThemeMode(ThemeMode mode) => _theme.setThemeMode(mode);

  Future<void> openTerms() => _openPath('terms');
  Future<void> openPrivacy() => _openPath('privacy');
  Future<void> openAbout() => _openPath('about');
  Future<void> openMoreApps() => _openPath('apps');

  Future<void> _openPath(String path) async {
    final base = publicSiteUrl;
    final uri = Uri.tryParse(base);
    if (uri == null) return;
    final out = uri.replace(path: '/$path');
    await launchUrl(out, mode: LaunchMode.externalApplication);
  }

  Future<void> logout() async {
    await _auth.logout();
    Get.offAllNamed(AppRoutes.shell);
  }

  void setLocale(Locale l) {
    Get.find<LocaleController>().setLocale(l);
  }
}
