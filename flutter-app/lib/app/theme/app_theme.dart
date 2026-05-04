import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sendlargefiles/data/models/app_config.dart';

/// Colors aligned with [sharelargefilesfree.com](https://sharelargefilesfree.com/) modern theme
/// (`assets/themes/modern/css/style.css` — Bulma `is-info` / admin defaults).
abstract final class DroppyWebColors {
  /// `.button.is-info { background-color: #3e8ed0 }` on the live site.
  static const bulmaInfo = Color(0xFF3E8ED0);
  static const textOnLight = Color(0xFF0A0A0A);
  static const textMuted = Color(0xFF5C5C5C);
  static const surface = Color(0xFFFFFFFF);
  static const surfaceDim = Color(0xFFF5F5F5);
  static const border = Color(0xFFEDEDED);
  static const error = Color(0xFFFF6B5C);
}

Color _hex(String? hex, Color fallback) {
  if (hex == null || hex.isEmpty) return fallback;
  var h = hex.replaceFirst('#', '');
  if (h.length == 6) h = 'FF$h';
  try {
    return Color(int.parse(h, radix: 16));
  } catch (_) {
    return fallback;
  }
}

class AppTheme {
  AppTheme._();

  /// Light theme matching the public Droppy “modern” upload UI: white panels, Bulma info blue, Roboto.
  /// [AppConfig] supplies `theme_color` / `theme_color_secondary` / `theme_color_text` from the server
  /// when [handler/app_config](https://sharelargefilesfree.com/handler/app_config) returns JSON.
  static ThemeData fromConfig(AppConfig? c) {
    final cfg = c ?? AppConfig.fallback();
    final primary = _hex(cfg.themeColor, DroppyWebColors.bulmaInfo);
    final secondary = _hex(cfg.themeColorSecondary, DroppyWebColors.bulmaInfo);
    final onPrimary = _hex(cfg.themeColorText, Colors.white);

    // Fills the full M3 color roles (primary/secondary/tertiary/surface/...) from the seed.
    var scheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    );
    scheme = scheme.copyWith(
      onPrimary: onPrimary,
      primary: primary,
      secondary: secondary,
      onSecondary: _contrastOn(secondary),
    );

    final baseText = GoogleFonts.robotoTextTheme(ThemeData(brightness: Brightness.light).textTheme);
    final textTheme = baseText.copyWith(
      displayLarge: GoogleFonts.roboto(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: DroppyWebColors.textOnLight,
        height: 1.1,
      ),
      displayMedium: GoogleFonts.roboto(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: DroppyWebColors.textOnLight,
      ),
      headlineSmall: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: DroppyWebColors.textOnLight,
      ),
      titleLarge: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: DroppyWebColors.textOnLight,
      ),
      bodyLarge: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: DroppyWebColors.textOnLight,
        height: 1.45,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: 14,
        color: DroppyWebColors.textMuted,
        height: 1.45,
      ),
      bodySmall: GoogleFonts.roboto(
        fontSize: 12,
        color: DroppyWebColors.textMuted,
      ),
      labelSmall: GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: DroppyWebColors.textMuted,
        letterSpacing: 0.2,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: scheme,
      scaffoldBackgroundColor: DroppyWebColors.surfaceDim,
      textTheme: textTheme,
      primaryTextTheme: textTheme.apply(
        bodyColor: onPrimary,
        displayColor: onPrimary,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: DroppyWebColors.surface,
        foregroundColor: DroppyWebColors.textOnLight,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: DroppyWebColors.textOnLight,
        ),
        iconTheme: const IconThemeData(color: DroppyWebColors.textOnLight),
      ),
      cardTheme: CardThemeData(
        color: DroppyWebColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: DroppyWebColors.border),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: DroppyWebColors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: DroppyWebColors.textOnLight,
        contentTextStyle: GoogleFonts.roboto(color: DroppyWebColors.surface),
        behavior: SnackBarBehavior.floating,
      ),
      dividerTheme: const DividerThemeData(color: DroppyWebColors.border, thickness: 1),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          textStyle: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: DroppyWebColors.textOnLight,
          side: const BorderSide(color: DroppyWebColors.border),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          textStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          textStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600),
        ),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return primary.withValues(alpha: 0.15);
            }
            return DroppyWebColors.surface;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return primary;
            }
            return DroppyWebColors.textMuted;
          }),
          side: WidgetStateProperty.all(const BorderSide(color: DroppyWebColors.border)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primary;
          return Colors.grey;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primary.withValues(alpha: 0.35);
          }
          return DroppyWebColors.border;
        }),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DroppyWebColors.surface,
        hintStyle: GoogleFonts.roboto(color: DroppyWebColors.textMuted),
        labelStyle: GoogleFonts.roboto(color: DroppyWebColors.textMuted),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: DroppyWebColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: DroppyWebColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: onPrimary,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primary,
        linearTrackColor: DroppyWebColors.border,
      ),
      listTileTheme: ListTileThemeData(
        textColor: DroppyWebColors.textOnLight,
        iconColor: DroppyWebColors.textMuted,
        titleTextStyle: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: DroppyWebColors.textOnLight,
        ),
        subtitleTextStyle: GoogleFonts.roboto(
          fontSize: 13,
          color: DroppyWebColors.textMuted,
        ),
      ),
    );
  }

  /// Hero accent — Roboto italic to mirror the web headline rhythm (see live homepage copy).
  static TextStyle heroAccent({
    required Color color,
    double fontSize = 26,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: color,
    );
  }

  static Color _contrastOn(Color background) {
    final luminance = background.computeLuminance();
    return luminance > 0.5 ? DroppyWebColors.textOnLight : Colors.white;
  }
}
