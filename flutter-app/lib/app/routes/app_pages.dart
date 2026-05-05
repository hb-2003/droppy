import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/modules/download/download_binding.dart';
import 'package:sendlargefiles/modules/download/download_view.dart';
import 'package:sendlargefiles/modules/home/home_binding.dart';
import 'package:sendlargefiles/modules/home/home_view.dart';
import 'package:sendlargefiles/modules/login/login_binding.dart';
import 'package:sendlargefiles/modules/login/login_view.dart';
import 'package:sendlargefiles/modules/settings/settings_binding.dart';
import 'package:sendlargefiles/modules/settings/settings_view.dart';
import 'package:sendlargefiles/modules/shell/app_shell_binding.dart';
import 'package:sendlargefiles/modules/shell/app_shell_view.dart';
import 'package:sendlargefiles/modules/splash/splash_binding.dart';
import 'package:sendlargefiles/modules/splash/splash_view.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.splash,
      page: SplashView.new,
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: HomeView.new,
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.shell,
      page: AppShellView.new,
      bindings: [
        AppShellBinding(),
        HomeBinding(),
        DownloadBinding(),
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.download,
      page: DownloadView.new,
      binding: DownloadBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: LoginView.new,
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.settings,
      page: SettingsView.new,
      binding: SettingsBinding(),
    ),
  ];
}
