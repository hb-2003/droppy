import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/localization/locale_rebuild.dart';
import 'package:sendlargefiles/modules/forgot_password/forgot_password_controller.dart';
import 'package:sendlargefiles/widgets/auth_top_bar.dart';
import 'package:sendlargefiles/widgets/password_text_field.dart';

Color _bg(BuildContext ctx) => Theme.of(ctx).scaffoldBackgroundColor;
Color _fieldBg(BuildContext ctx) => Theme.of(ctx).colorScheme.surfaceContainerHigh;
Color _accent(BuildContext ctx) => Theme.of(ctx).colorScheme.primary;
Color _accentInk(BuildContext ctx) => Theme.of(ctx).colorScheme.onPrimary;
Color _accentGlow(BuildContext ctx) => Theme.of(ctx).colorScheme.primary.withValues(alpha: 0.22);
Color _onSurface(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface;
Color _dim2(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.38);
Color _line(BuildContext ctx) => Theme.of(ctx).colorScheme.outlineVariant;

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return LocaleRebuild(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        child: Obx(() => controller.step.value == 0
            ? _RequestScreen(controller: controller)
            : _ResetScreen(controller: controller)),
      ),
    );
  }
}

class _RequestScreen extends StatelessWidget {
  const _RequestScreen({required this.controller});
  final ForgotPasswordController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: _bg(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthTopBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      t.forgotPasswordTitle,
                      style: TextStyle(
                        color: _onSurface(context),
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.8,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      t.forgotPasswordBody,
                      style: TextStyle(color: _dim2(context), fontSize: 14, height: 1.6),
                    ),
                    const SizedBox(height: 28),
                    _Label(t.emailAddressLabel),
                    const SizedBox(height: 8),
                    _Field(
                      ctrl: controller.emailCtrl,
                      hint: t.emailExampleHint,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      onSubmitted: (_) => controller.requestReset(),
                    ),
                    const SizedBox(height: 20),
                    Obx(() => _PrimaryButton(
                          label: t.forgotPasswordSubmit,
                          loading: controller.loading.value,
                          onTap: controller.loading.value ? null : controller.requestReset,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResetScreen extends StatelessWidget {
  const _ResetScreen({required this.controller});
  final ForgotPasswordController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: _bg(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthTopBar(onBack: controller.goBack),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      t.resetPasswordTitle,
                      style: TextStyle(
                        color: _onSurface(context),
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.6,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      t.resetPasswordBody,
                      style: TextStyle(color: _dim2(context), fontSize: 14, height: 1.6),
                    ),
                    const SizedBox(height: 28),
                    _Label(t.otpDigitLabel),
                    const SizedBox(height: 8),
                    _Field(
                      ctrl: controller.codeCtrl,
                      hint: t.otpSixDigitHint,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      fontSize: 28,
                      letterSpacing: 10,
                      maxLength: 6,
                      autofocus: true,
                    ),
                    const SizedBox(height: 16),
                    _Label(t.passwordLabelCaps),
                    const SizedBox(height: 8),
                    _PasswordField(
                      ctrl: controller.passwordCtrl,
                      hint: t.passwordMin8,
                    ),
                    const SizedBox(height: 16),
                    _Label(t.confirmPasswordLabelCaps),
                    const SizedBox(height: 8),
                    _PasswordField(
                      ctrl: controller.confirmCtrl,
                      hint: t.confirmPassword,
                      onSubmitted: (_) => controller.submitReset(),
                    ),
                    const SizedBox(height: 20),
                    Obx(() => _PrimaryButton(
                          label: t.resetPasswordSubmit,
                          loading: controller.loading.value,
                          onTap: controller.loading.value ? null : controller.submitReset,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  const _Label(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: _dim2(context),
        fontSize: 11,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    required this.ctrl,
    required this.hint,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.fontSize = 15.0,
    this.letterSpacing = 0.0,
    this.maxLength,
    this.autofocus = false,
    this.onSubmitted,
  });

  final TextEditingController ctrl;
  final String hint;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final double fontSize;
  final double letterSpacing;
  final int? maxLength;
  final bool autofocus;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final accent = _accent(context);
    final onSurface = _onSurface(context);
    final line = _line(context);
    return TextField(
      controller: ctrl,
      keyboardType: keyboardType,
      textAlign: textAlign,
      maxLength: maxLength,
      autofocus: autofocus,
      onSubmitted: onSubmitted,
      style: TextStyle(
        color: onSurface,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: onSurface.withValues(alpha: 0.30),
          fontSize: fontSize,
          letterSpacing: 0,
          fontWeight: FontWeight.w400,
        ),
        counterText: '',
        filled: true,
        fillColor: _fieldBg(context),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: accent, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.ctrl,
    required this.hint,
    this.onSubmitted,
  });

  final TextEditingController ctrl;
  final String hint;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final accent = _accent(context);
    final onSurface = _onSurface(context);
    final line = _line(context);
    return PasswordTextField(
      controller: ctrl,
      onSubmitted: onSubmitted,
      style: TextStyle(color: onSurface, fontSize: 15, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: onSurface.withValues(alpha: 0.30), fontSize: 15, fontWeight: FontWeight.w400),
        filled: true,
        fillColor: _fieldBg(context),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: accent, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      ),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({required this.label, required this.loading, this.onTap});
  final String label;
  final bool loading;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final accent = _accent(context);
    final accentInk = _accentInk(context);
    final accentGlow = _accentGlow(context);
    final surfaceDim = _onSurface(context).withValues(alpha: 0.08);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: 56,
        decoration: BoxDecoration(
          color: loading ? surfaceDim : accent,
          borderRadius: BorderRadius.circular(50),
          boxShadow: loading ? null : [BoxShadow(color: accentGlow, blurRadius: 28, spreadRadius: 0, offset: const Offset(0, 8))],
        ),
        alignment: Alignment.center,
        child: loading
            ? SizedBox(width: 22, height: 22, child: CircularProgressIndicator(color: accentInk, strokeWidth: 2.5))
            : Text(label, style: TextStyle(color: accentInk, fontSize: 16, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
