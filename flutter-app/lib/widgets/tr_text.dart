import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/localization/translation_service.dart';

/// Text that shows English immediately, then swaps to a translated value when needed.
class TrText extends StatefulWidget {
  const TrText(
    this.data, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });

  final String data;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  State<TrText> createState() => _TrTextState();
}

class _TrTextState extends State<TrText> {
  late String _display;
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _display = widget.data;
    _load();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final next = Localizations.localeOf(context);
    if (_locale == next) return;
    _locale = next;
    _display = widget.data;
    _load();
  }

  @override
  void didUpdateWidget(covariant TrText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data != widget.data) {
      _display = widget.data;
      _load();
    }
  }

  Future<void> _load() async {
    if (!Get.isRegistered<TranslationService>()) return;
    final svc = Get.find<TranslationService>();
    if (!svc.shouldTranslate(widget.data)) return;
    final translated = await svc.translate(widget.data);
    if (!mounted || translated == _display) return;
    setState(() => _display = translated);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _display,
      style: widget.style,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      textAlign: widget.textAlign,
    );
  }
}
