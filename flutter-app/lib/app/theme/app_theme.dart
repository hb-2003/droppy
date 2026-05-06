import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sendlargefiles/data/models/app_config.dart';

/// Colors from the live web "Cinematic Studio" (slvf) dark theme.
/// Source: `assets/themes/modern/css/slvf.css` — CSS custom properties on `:root`.
abstract final class DroppyWebColors {
  // ── Ink scale (dark backgrounds) ──────────────────────────────────────────
  static const ink1000 = Color(0xFF04050A);
  static const ink950  = Color(0xFF06070C);
  static const ink900  = Color(0xFF0A0C14); // body background
  static const ink850  = Color(0xFF0E1119);
  static const ink800  = Color(0xFF11141E);
  static const ink700  = Color(0xFF1A1E2C); // card / elevated surface
  static const ink600  = Color(0xFF262B3D); // hover surface

  // ── Glass borders ─────────────────────────────────────────────────────────
  static const line        = Color(0x12FFFFFF); // rgba(255,255,255,0.07)
  static const lineStrong  = Color(0x24FFFFFF); // rgba(255,255,255,0.14)
  static const lineBright  = Color(0x38FFFFFF); // rgba(255,255,255,0.22)

  // ── Glass fills ───────────────────────────────────────────────────────────
  static const glass       = Color(0x09FFFFFF); // rgba(255,255,255,0.035)
  static const glassStrong = Color(0x0FFFFFFF); // rgba(255,255,255,0.06)

  // ── Text ──────────────────────────────────────────────────────────────────
  static const text     = Color(0xFFF2F1EB); // primary text (off-white)
  static const textSoft = Color(0xFFC9CAD3); // secondary text
  static const textDim  = Color(0xFF8A8E9E); // dim/placeholder
  static const textMute = Color(0xFF5A5E70); // muted/disabled

  // ── Accent (primary) ──────────────────────────────────────────────────────
  static const accent     = Color(0xFFD4FF3A); // lime green — .slvf-btn--primary bg
  static const accentHi   = Color(0xFFE4FF6E);
  static const accentLo   = Color(0xFFB8E000);
  static const accentInk  = Color(0xFF0A0C14); // dark text ON accent button
  static const accentGlow = Color(0x52D4FF3A); // rgba(212,255,58,0.32)
  static const accentSoft = Color(0x1AD4FF3A); // rgba(212,255,58,0.10)

  // ── Semantic ──────────────────────────────────────────────────────────────
  static const warm    = Color(0xFFF4B860);
  static const rose    = Color(0xFFF47B7B);
  static const success = Color(0xFF5BE9B9);
  static const error   = Color(0xFFFF6B5C);
  static const info    = Color(0xFF50B4FF);

  // ── Legacy (kept for old Bulma references) ────────────────────────────────
  /// Old Bulma `is-info` blue — used in style.css only; slvf theme uses accent instead.
  static const bulmaInfo = Color(0xFF3E8ED0);
}

// ── Border radius scale (from slvf CSS vars) ────────────────────────────────
abstract final class DroppyRadius {
  static const sm   = 8.0;   // --slvf-radius-sm
  static const md   = 14.0;  // --slvf-radius
  static const lg   = 22.0;  // --slvf-radius-lg
  static const xl   = 28.0;  // --slvf-radius-xl (upload card)
  static const pill = 999.0; // --slvf-radius-pill
}

// ── Shadow scale ─────────────────────────────────────────────────────────────
abstract final class DroppyShadow {
  static const sm = BoxShadow(
    color: Color(0x4D000000), // rgba(0,0,0,0.30)
    blurRadius: 14,
    offset: Offset(0, 4),
  );
  static const md = BoxShadow(
    color: Color(0x73000000), // rgba(0,0,0,0.45)
    blurRadius: 50,
    offset: Offset(0, 18),
  );
  static const lg = BoxShadow(
    color: Color(0x8C000000), // rgba(0,0,0,0.55)
    blurRadius: 90,
    offset: Offset(0, 30),
  );
  static const accentGlow = BoxShadow(
    color: DroppyWebColors.accentGlow,
    blurRadius: 60,
    offset: Offset(0, 18),
  );

  /// Upload card: `box-shadow: 0 18px 50px rgba(0,0,0,0.45), 0 0 0 1px rgba(255,255,255,0.03) inset`
  static const uploadCard = [md, _insetWhite];
  static const _insetWhite = BoxShadow(
    color: Color(0x08FFFFFF),
    blurRadius: 0,
    spreadRadius: 1,
  );
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

  static const _kNoAnim = Duration.zero;
  static Color _toneDownForLight(Color c) {
    // If the chosen brand color is extremely bright (eg. lime),
    // it becomes hard to read on light surfaces. Darken it slightly.
    if (c.computeLuminance() < 0.75) return c;
    return Color.alphaBlend(const Color(0x33000000), c); // ~20% black blend
  }

  static ThemeData lightFromConfig(AppConfig? c) {
    final cfg = c ?? AppConfig.fallback();

    final primaryRaw = _hex(cfg.themeColor, DroppyWebColors.bulmaInfo);
    final secondaryRaw = _hex(cfg.themeColorSecondary, DroppyWebColors.bulmaInfo);
    final primary = _toneDownForLight(primaryRaw);
    final secondary = _toneDownForLight(secondaryRaw);
    // Prefer computed contrast; server-provided text colors are often tuned for dark themes.
    final onPrimary = _contrastOn(primary);

    var scheme = ColorScheme.fromSeed(seedColor: primary, brightness: Brightness.light);
    // Light theme: ensure clear elevation/section contrast.
    // Many screens use `surfaceContainerHighest` as "card background" and
    // `outlineVariant` for borders, so we make those intentionally visible.
    const bg = Color(0xFFF2F4F7);
    const card = Color(0xFFFFFFFF);
    const cardAlt = Color(0xFFF7F8FA);
    const line = Color(0xFFD7DCE3);
    scheme = scheme.copyWith(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: _contrastOn(secondary),
      surface: card,
      onSurface: const Color(0xFF0A0A0A),
      surfaceContainerHighest: card,
      surfaceContainerHigh: cardAlt,
      surfaceContainer: cardAlt,
      surfaceContainerLow: const Color(0xFFFBFCFD),
      outline: line,
      outlineVariant: line,
      error: DroppyWebColors.error,
    );

    final textTheme = GoogleFonts.robotoTextTheme(ThemeData.light().textTheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: scheme,
      scaffoldBackgroundColor: bg,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: bg,
        foregroundColor: const Color(0xFF0A0A0A),
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600, color: const Color(0xFF0A0A0A)),
      ),
      cardTheme: CardThemeData(
        color: scheme.surfaceContainerHighest,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: scheme.outlineVariant),
        ),
      ),
      dividerTheme: DividerThemeData(color: scheme.outlineVariant, thickness: 1),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          textStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600),
          animationDuration: _kNoAnim,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF0A0A0A),
          side: BorderSide(color: scheme.outlineVariant),
          textStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600),
          animationDuration: _kNoAnim,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          textStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600),
          animationDuration: _kNoAnim,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: scheme.outlineVariant),
        ),
      ),
    );
  }

  /// Dark theme matching the live Droppy "Cinematic Studio" (slvf) design layer.
  /// Source: `assets/themes/modern/css/slvf.css`.
  static ThemeData darkFromConfig(AppConfig? c) {
    final cfg = c ?? AppConfig.fallback();

    // Server can override accent — default to slvf lime #D4FF3A
    final primary   = _hex(cfg.themeColor, DroppyWebColors.accent);
    final secondary = _hex(cfg.themeColorSecondary, DroppyWebColors.accent);
    // Text ON the accent button is always dark ink
    final onPrimary = _hex(cfg.themeColorText, DroppyWebColors.accentInk);

    var scheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.dark,
    );
    scheme = scheme.copyWith(
      brightness: Brightness.dark,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: _contrastOn(secondary),
      surface: DroppyWebColors.ink900,
      onSurface: DroppyWebColors.text,
      surfaceContainerHighest: DroppyWebColors.ink700,
      outline: DroppyWebColors.lineStrong,
      error: DroppyWebColors.error,
    );

    final textTheme = GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: DroppyWebColors.ink900,
      textTheme: textTheme,
      primaryTextTheme: textTheme.apply(
        bodyColor: onPrimary,
        displayColor: onPrimary,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: DroppyWebColors.ink950,
        foregroundColor: DroppyWebColors.text,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: DroppyWebColors.text,
        ),
        iconTheme: const IconThemeData(color: DroppyWebColors.textSoft),
        shape: const Border(
          bottom: BorderSide(color: DroppyWebColors.line),
        ),
      ),
      cardTheme: CardThemeData(
        color: DroppyWebColors.glassStrong,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.xl),
          side: const BorderSide(color: DroppyWebColors.lineStrong),
        ),
        clipBehavior: Clip.antiAlias,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: DroppyWebColors.ink800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.lg),
          side: const BorderSide(color: DroppyWebColors.lineStrong),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: DroppyWebColors.ink700,
        contentTextStyle: GoogleFonts.roboto(color: DroppyWebColors.text),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.sm),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: DroppyWebColors.line,
        thickness: 1,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DroppyRadius.pill),
          ),
          textStyle: GoogleFonts.roboto(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          elevation: 0,
          animationDuration: _kNoAnim,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: DroppyWebColors.textSoft,
          side: const BorderSide(color: DroppyWebColors.lineStrong),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DroppyRadius.pill),
          ),
          textStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
          ),
          animationDuration: _kNoAnim,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          textStyle: GoogleFonts.roboto(fontWeight: FontWeight.w600),
          animationDuration: _kNoAnim,
        ),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) return primary.withValues(alpha: 0.15);
            return DroppyWebColors.glass;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) return primary;
            return DroppyWebColors.textDim;
          }),
          side: WidgetStateProperty.all(const BorderSide(color: DroppyWebColors.lineStrong)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(DroppyRadius.pill)),
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primary;
          return DroppyWebColors.textMute;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primary.withValues(alpha: 0.25);
          return DroppyWebColors.ink700;
        }),
        trackOutlineColor: WidgetStateProperty.all(DroppyWebColors.lineStrong),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DroppyWebColors.ink800,
        hintStyle: GoogleFonts.roboto(
          color: DroppyWebColors.textMute,
          fontSize: 14,
        ),
        labelStyle: GoogleFonts.roboto(
          color: DroppyWebColors.textDim,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.sm),
          borderSide: const BorderSide(color: DroppyWebColors.lineStrong),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.sm),
          borderSide: const BorderSide(color: DroppyWebColors.lineStrong),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.sm),
          borderSide: const BorderSide(color: DroppyWebColors.accent, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.pill),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primary,
        linearTrackColor: DroppyWebColors.ink700,
        circularTrackColor: DroppyWebColors.ink700,
      ),
      listTileTheme: ListTileThemeData(
        textColor: DroppyWebColors.text,
        iconColor: DroppyWebColors.textDim,
        tileColor: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: DroppyWebColors.text,
        ),
        subtitleTextStyle: GoogleFonts.roboto(
          fontSize: 12,
          color: DroppyWebColors.textDim,
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: DroppyWebColors.ink700,
          borderRadius: BorderRadius.circular(DroppyRadius.sm),
          border: Border.all(color: DroppyWebColors.lineStrong),
        ),
        textStyle: GoogleFonts.bricolageGrotesque(
          color: DroppyWebColors.text,
          fontSize: 12,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: DroppyWebColors.ink700,
        side: const BorderSide(color: DroppyWebColors.lineStrong),
        labelStyle: GoogleFonts.bricolageGrotesque(
          fontSize: 12,
          color: DroppyWebColors.textSoft,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DroppyRadius.pill),
        ),
      ),
    );
  }

  // (unused) _buildTextTheme removed

  // ── Static style helpers ──────────────────────────────────────────────────

  /// Hero accent — italic serif for the "instantly." part of the H1.
  /// Web uses `font-style: italic` on the em tag inside `.slvf-hero__title`.
  static TextStyle heroAccent({
    required Color color,
    double fontSize = 40,
  }) {
    return GoogleFonts.bricolageGrotesque(
      fontSize: fontSize,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
      height: 1.05,
      letterSpacing: -1.0,
      color: color,
    );
  }

  /// Eyebrow label — small uppercase label above section headings.
  static TextStyle eyebrow({Color? color}) => GoogleFonts.bricolageGrotesque(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
        color: color ?? DroppyWebColors.textMute,
      );

  /// Meta text — 11–12px dim text for file sizes, stats, timestamps.
  static TextStyle meta({Color? color}) => GoogleFonts.bricolageGrotesque(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color ?? DroppyWebColors.textDim,
      );

  static Color _contrastOn(Color background) {
    return background.computeLuminance() > 0.4
        ? DroppyWebColors.accentInk
        : DroppyWebColors.text;
  }
}
