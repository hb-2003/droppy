import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/localization/translation_service.dart';

enum AppSnackType { info, success, warning, error }

class AppSnack {
  static void show(
    String title,
    String message, {
    AppSnackType type = AppSnackType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    final theme = Get.theme;
    final scheme = theme.colorScheme;

    Color bg;
    Color fg;
    Color border;
    IconData icon;

    switch (type) {
      case AppSnackType.success:
        bg = const Color(0xFF0E2A1B);
        fg = const Color(0xFFE9FFF3);
        border = const Color(0xFF1FA971).withValues(alpha: 0.55);
        icon = Icons.check_circle_rounded;
        break;
      case AppSnackType.warning:
        bg = const Color(0xFF2A220E);
        fg = const Color(0xFFFFF6DF);
        border = const Color(0xFFE0B000).withValues(alpha: 0.60);
        icon = Icons.warning_rounded;
        break;
      case AppSnackType.error:
        bg = const Color(0xFF2A1212);
        fg = const Color(0xFFFFEAEA);
        border = const Color(0xFFFF5A5F).withValues(alpha: 0.55);
        icon = Icons.error_rounded;
        break;
      case AppSnackType.info:
        bg = scheme.surfaceContainerHighest;
        fg = scheme.onSurface;
        border = scheme.outlineVariant.withValues(alpha: 0.70);
        icon = Icons.info_rounded;
        break;
    }

    Get.rawSnackbar(
      title: title,
      message: message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.fromLTRB(14, 0, 14, 14),
      borderRadius: 14,
      backgroundColor: bg,
      borderColor: border,
      borderWidth: 1,
      duration: duration,
      icon: Icon(icon, color: fg.withValues(alpha: 0.95), size: 22),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      animationDuration: const Duration(milliseconds: 220),
      forwardAnimationCurve: Curves.easeOutCubic,
      reverseAnimationCurve: Curves.easeInCubic,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      titleText: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: fg, fontWeight: FontWeight.w700, fontSize: 13),
      ),
      messageText: Text(
        message,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: fg.withValues(alpha: 0.85), fontSize: 12, height: 1.35),
      ),
    );
  }

  static void error(String title, String message, {Duration duration = const Duration(seconds: 4)}) =>
      show(title, message, type: AppSnackType.error, duration: duration);

  static void success(String title, String message, {Duration duration = const Duration(seconds: 3)}) =>
      show(title, message, type: AppSnackType.success, duration: duration);

  static void info(String title, String message, {Duration duration = const Duration(seconds: 3)}) =>
      show(title, message, type: AppSnackType.info, duration: duration);

  /// For API / store messages that are not in ARB files.
  static Future<void> showDynamic(
    String title,
    String message, {
    AppSnackType type = AppSnackType.info,
    Duration duration = const Duration(seconds: 3),
  }) async {
    if (appIsEnglish() || !Get.isRegistered<TranslationService>()) {
      show(title, message, type: type, duration: duration);
      return;
    }
    final svc = Get.find<TranslationService>();
    final translatedTitle = await svc.translate(title);
    final translatedMessage = await svc.translate(message);
    show(translatedTitle, translatedMessage, type: type, duration: duration);
  }
}

