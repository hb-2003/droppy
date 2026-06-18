import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sendlargefiles/l10n/app_localizations.dart';

/// Android Play Store branding (`Me Transfer`). iOS keeps localized [AppLocalizations].
abstract final class AppBranding {
  static const androidAppTitle = 'Me Transfer';
  static const androidTagline = 'Send large files';

  static bool get useAndroidBranding => !kIsWeb && Platform.isAndroid;

  static String appTitle(AppLocalizations t) =>
      useAndroidBranding ? androidAppTitle : t.appTitle;

  static String heroTitle(AppLocalizations t) =>
      useAndroidBranding ? androidAppTitle : t.heroTitle;

  static String heroAccent(AppLocalizations t) =>
      useAndroidBranding ? androidTagline : t.heroAccent;
}
