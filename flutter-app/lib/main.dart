import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sendlargefiles/app/routes/app_pages.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/controllers/theme_controller.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/data/repositories/upload_repository.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/localization/translation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await ApiClient.instance.init();
  Get.put(LocaleController());
  Get.put(TranslationService());
  Get.put(ThemeController());
  Get.put(ConfigRepository());
  Get.put(UploadRepository());
  Get.put(DownloadRepository());
  Get.put(HistoryRepository(), permanent: true);
  Get.put(AuthRepository());
  runApp(const SendLargeFilesApp());
}

class SendLargeFilesApp extends StatelessWidget {
  const SendLargeFilesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final cfg = Get.find<ConfigRepository>().config.value;
      final loc = Get.find<LocaleController>().locale.value;
      final mode = Get.find<ThemeController>().themeMode.value;
      return GetMaterialApp(
        title: lookupAppLocalizations(loc).appTitle,
        theme: AppTheme.lightFromConfig(cfg),
        darkTheme: AppTheme.darkFromConfig(cfg),
        themeMode: mode,
        locale: loc,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: AppRoutes.splash,
        getPages: AppPages.pages,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Obx(() {
            final localeKey = Get.find<LocaleController>().locale.value.toString();
            return KeyedSubtree(
              key: ValueKey<String>('app-locale-$localeKey'),
              child: child ?? const SizedBox.shrink(),
            );
          });
        },
      );
    });
  }
}
