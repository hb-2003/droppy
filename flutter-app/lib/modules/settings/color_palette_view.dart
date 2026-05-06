import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';

// ── Color Palette Preview ─────────────────────────────────────────────────────
// Shows every design token in DroppyWebColors so you can review the scheme
// at a glance on a real device.

class ColorPaletteView extends StatelessWidget {
  const ColorPaletteView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: DroppyWebColors.ink900,
      appBar: AppBar(
        backgroundColor: DroppyWebColors.ink950,
        foregroundColor: DroppyWebColors.text,
        title: const Text('Color Palette', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
        children: [
          _section('Backgrounds (ink scale)'),
          _row([
            _swatch(DroppyWebColors.ink1000, 'ink1000', '#04050A'),
            _swatch(DroppyWebColors.ink950,  'ink950',  '#06070C'),
            _swatch(DroppyWebColors.ink900,  'ink900 ★', '#0A0C14', star: true),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(DroppyWebColors.ink850, 'ink850', '#0E1119'),
            _swatch(DroppyWebColors.ink800, 'ink800', '#11141E'),
            _swatch(DroppyWebColors.ink700, 'ink700 ★', '#1A1E2C', star: true),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(DroppyWebColors.ink600, 'ink600', '#262B3D'),
            _swatchEmpty(),
            _swatchEmpty(),
          ]),

          _section('Accent / Primary'),
          _row([
            _swatch(DroppyWebColors.accent,    'accent ★',  '#D4FF3A', star: true, dark: true),
            _swatch(DroppyWebColors.accentHi,  'accentHi',  '#E4FF6E', dark: true),
            _swatch(DroppyWebColors.accentLo,  'accentLo',  '#B8E000', dark: true),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(DroppyWebColors.accentInk,  'accentInk',  '#0A0C14'),
            _swatch(DroppyWebColors.accentGlow, 'accentGlow', 'rgba 32%'),
            _swatch(DroppyWebColors.accentSoft, 'accentSoft', 'rgba 10%'),
          ]),

          _section('Text'),
          _row([
            _swatch(DroppyWebColors.text,     'text ★',    '#F2F1EB', star: true),
            _swatch(DroppyWebColors.textSoft, 'textSoft',  '#C9CAD3'),
            _swatch(DroppyWebColors.textDim,  'textDim',   '#8A8E9E'),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(DroppyWebColors.textMute, 'textMute', '#5A5E70'),
            _swatchEmpty(),
            _swatchEmpty(),
          ]),

          _section('Borders & Glass'),
          _row([
            _swatch(DroppyWebColors.line,       'line',       'rgba 7%'),
            _swatch(DroppyWebColors.lineStrong, 'lineStrong', 'rgba 14%'),
            _swatch(DroppyWebColors.lineBright, 'lineBright', 'rgba 22%'),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(DroppyWebColors.glass,       'glass',       'rgba 3.5%'),
            _swatch(DroppyWebColors.glassStrong, 'glassStrong', 'rgba 6%'),
            _swatchEmpty(),
          ]),

          _section('Semantic'),
          _row([
            _swatch(DroppyWebColors.success, 'success', '#5BE9B9', dark: true),
            _swatch(DroppyWebColors.error,   'error',   '#FF6B5C'),
            _swatch(DroppyWebColors.info,    'info',    '#50B4FF'),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(DroppyWebColors.warm, 'warm', '#F4B860', dark: true),
            _swatch(DroppyWebColors.rose, 'rose', '#F47B7B'),
            _swatchEmpty(),
          ]),

          _section('Live Theme (current)'),
          _row([
            _swatch(scheme.primary,   'primary',   '(theme)'),
            _swatch(scheme.onPrimary, 'onPrimary', '(theme)'),
            _swatch(scheme.surface,   'surface',   '(theme)'),
          ]),
          const SizedBox(height: 8),
          _row([
            _swatch(scheme.surfaceContainerHighest, 'surfaceHigh', '(theme)'),
            _swatch(scheme.outlineVariant,          'outline',     '(theme)'),
            _swatch(scheme.error,                   'error',       '(theme)'),
          ]),

          const SizedBox(height: 24),
          _Legend(),
        ],
      ),
    );
  }

  // ── Helpers ─────────────────────────────────────────────────────────────────

  Widget _section(String label) => Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
    child: Text(
      label.toUpperCase(),
      style: const TextStyle(
        color: DroppyWebColors.textMute,
        fontSize: 10,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.4,
      ),
    ),
  );

  Widget _row(List<Widget> children) => Row(
    children: children.map((c) => Expanded(child: c)).toList(),
  );

  Widget _swatchEmpty() => const SizedBox.shrink();

  Widget _swatch(Color color, String name, String hex, {bool star = false, bool dark = false}) {
    final textColor = dark ? const Color(0xFF0A0C14) : DroppyWebColors.text;
    final dimColor  = dark ? const Color(0x660A0C14) : DroppyWebColors.textDim;
    return GestureDetector(
      onLongPress: () => Clipboard.setData(ClipboardData(text: hex)),
      child: Container(
        height: 88,
        margin: const EdgeInsets.only(right: 8, bottom: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: DroppyWebColors.lineStrong, width: 0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (star)
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Icon(Icons.star_rounded, size: 10, color: textColor.withOpacity(0.6)),
              ),
            Text(
              name,
              style: TextStyle(
                color: textColor,
                fontSize: 10,
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
            Text(
              hex,
              style: TextStyle(
                color: dimColor,
                fontSize: 9,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: DroppyWebColors.ink700,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: DroppyWebColors.lineStrong),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Icon(Icons.star_rounded, size: 12, color: DroppyWebColors.accent),
            SizedBox(width: 6),
            Text('★ = actively used in screens', style: TextStyle(color: DroppyWebColors.textDim, fontSize: 11)),
          ]),
          SizedBox(height: 6),
          Text('Long-press any swatch to copy its hex value.', style: TextStyle(color: DroppyWebColors.textMute, fontSize: 11)),
        ],
      ),
    );
  }
}
