import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/localization/locale_rebuild.dart';
import 'package:sendlargefiles/modules/signup/signup_controller.dart';
import 'package:sendlargefiles/widgets/auth_top_bar.dart';

Color _bg(BuildContext ctx) => Theme.of(ctx).scaffoldBackgroundColor;
Color _fieldBg(BuildContext ctx) => Theme.of(ctx).colorScheme.surfaceContainerHigh;
Color _accent(BuildContext ctx) => Theme.of(ctx).colorScheme.primary;
Color _onSurface(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface;
Color _dim(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.55);
Color _dim2(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.38);
Color _line(BuildContext ctx) => Theme.of(ctx).colorScheme.outlineVariant;

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return LocaleRebuild(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        child: Scaffold(
        backgroundColor: _bg(context),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AuthTopBar(onBack: controller.goLogin),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        t.createAccountTitle,
                        style: TextStyle(
                          color: _onSurface(context),
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.6,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        t.signUpSubtitle,
                        style: TextStyle(color: _dim2(context), fontSize: 14, height: 1.6),
                      ),
                      const SizedBox(height: 28),
                      _Label(t.emailAddressLabel),
                      const SizedBox(height: 8),
                      _Field(
                        ctrl: controller.emailCtrl,
                        hint: t.emailExampleHint,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
                      ),
                      const SizedBox(height: 14),
                      _Label(t.passwordLabelCaps),
                      const SizedBox(height: 8),
                      _Field(
                        ctrl: controller.passwordCtrl,
                        hint: t.passwordMin8,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        autofillHints: const [AutofillHints.newPassword],
                      ),
                      const SizedBox(height: 14),
                      _Label(t.confirmPasswordLabelCaps),
                      const SizedBox(height: 8),
                      _Field(
                        ctrl: controller.confirmCtrl,
                        hint: t.confirmPassword,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        autofillHints: const [AutofillHints.newPassword],
                        onSubmitted: (_) => controller.signup(),
                      ),
                      const SizedBox(height: 18),
                      Obx(() {
                        final busy = controller.loading.value;
                        return FilledButton(
                          onPressed: busy ? null : controller.signup,
                          style: FilledButton.styleFrom(
                            backgroundColor: _accent(context),
                            foregroundColor: Theme.of(context).colorScheme.onPrimary,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                          child: busy
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(strokeWidth: 2),
                                )
                              : Text(t.createAccountTitle, style: const TextStyle(fontWeight: FontWeight.w700)),
                        );
                      }),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${t.alreadyHaveAccount} ', style: TextStyle(color: _dim(context), fontSize: 12)),
                          TextButton(
                            onPressed: controller.goLogin,
                            child: Text(t.signIn, style: TextStyle(color: _accent(context), fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2,
      ),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    required this.ctrl,
    required this.hint,
    this.keyboardType,
    this.obscureText = false,
    this.autofillHints,
    this.onSubmitted,
  });
  final TextEditingController ctrl;
  final String hint;
  final TextInputType? keyboardType;
  final bool obscureText;
  final List<String>? autofillHints;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final onSurface = _onSurface(context);
    final line = _line(context);
    final accent = _accent(context);
    return TextField(
      controller: ctrl,
      keyboardType: keyboardType,
      obscureText: obscureText,
      autofillHints: autofillHints,
      onSubmitted: onSubmitted,
      style: TextStyle(color: onSurface, fontSize: 15, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: onSurface.withValues(alpha: 0.30), fontSize: 15, fontWeight: FontWeight.w400),
        filled: true,
        fillColor: _fieldBg(context),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: accent, width: 1.5)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      ),
    );
  }
}

