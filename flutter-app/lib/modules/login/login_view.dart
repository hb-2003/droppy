import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/modules/login/login_controller.dart';
import 'package:sendlargefiles/widgets/auth_top_bar.dart';

// ── Theme helpers (computed at build time so they work in both light & dark) ───
Color _bg(BuildContext ctx) => Theme.of(ctx).scaffoldBackgroundColor;
Color _cardBg(BuildContext ctx) => Theme.of(ctx).colorScheme.surfaceContainerHighest;
Color _fieldBg(BuildContext ctx) => Theme.of(ctx).colorScheme.surfaceContainerHigh;
Color _accent(BuildContext ctx) => Theme.of(ctx).colorScheme.primary;
Color _accentInk(BuildContext ctx) => Theme.of(ctx).colorScheme.onPrimary;
Color _accentGlow(BuildContext ctx) => Theme.of(ctx).colorScheme.primary.withValues(alpha: 0.22);
Color _onSurface(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface;
Color _dim(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.55);
Color _dim2(BuildContext ctx) => Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.38);
Color _line(BuildContext ctx) => Theme.of(ctx).colorScheme.outlineVariant;

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: Obx(() => controller.step.value == 0
          ? _EmailScreen(controller: controller)
          : _OtpScreen(controller: controller)),
    );
  }
}

// ── Screen 1: Enter Email ─────────────────────────────────────────────────────

class _EmailScreen extends StatelessWidget {
  const _EmailScreen({required this.controller});
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    final accent = _accent(context);
    return Scaffold(
      backgroundColor: _bg(context),
      body: Stack(
        children: [
          // Accent radial glow top-center
          Positioned(
            top: -80,
            left: 0, right: 0,
            child: Center(
              child: Container(
                width: 300, height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [accent.withValues(alpha: 0.07), Colors.transparent],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: const AuthTopBar(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Lock icon
                        Container(
                          width: 64, height: 64,
                          decoration: BoxDecoration(
                            color: _cardBg(context),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: _line(context)),
                          ),
                          child: Icon(Icons.lock_outline_rounded, color: _dim(context), size: 28),
                        ),
                        const SizedBox(height: 28),
                        Text('Sign in',
                            style: TextStyle(color: _onSurface(context), fontSize: 32, fontWeight: FontWeight.w800, letterSpacing: -0.8, height: 1.05)),
                        const SizedBox(height: 6),
                        Text('Share Large Video Files',
                            style: TextStyle(color: accent, fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: -0.3)),
                        const SizedBox(height: 12),
                        Text(
                          "Enter your email and password to sign in.",
                          style: TextStyle(color: _dim2(context), fontSize: 14, height: 1.6),
                        ),
                        const SizedBox(height: 36),
                        _Label('EMAIL ADDRESS'),
                        const SizedBox(height: 8),
                        _Field(
                          ctrl: controller.emailCtrl,
                          hint: 'you@example.com',
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          onSubmitted: (_) => controller.loginPassword(),
                        ),
                        const SizedBox(height: 16),
                        _Label('PASSWORD'),
                        const SizedBox(height: 8),
                        _Field(
                          ctrl: controller.passwordCtrl,
                          hint: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onSubmitted: (_) => controller.loginPassword(),
                        ),
                        const SizedBox(height: 20),
                        Obx(() => _PrimaryButton(
                          label: 'Sign in',
                          icon: Icons.arrow_forward_rounded,
                          loading: controller.loading.value,
                          onTap: controller.loading.value ? null : controller.loginPassword,
                        )),
                        const SizedBox(height: 12),
                        Center(
                          child: TextButton(
                            onPressed: () => Get.toNamed(AppRoutes.signup),
                            child: Text(
                              'Create account',
                              style: TextStyle(color: accent, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Screen 2: Enter OTP Code ──────────────────────────────────────────────────

class _OtpScreen extends StatelessWidget {
  const _OtpScreen({required this.controller});
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    final accent = _accent(context);
    final accentGlow = _accentGlow(context);
    return Scaffold(
      backgroundColor: _bg(context),
      body: Stack(
        children: [
          Positioned(
            top: -60, left: 0, right: 0,
            child: Center(
              child: Container(
                width: 260, height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [accent.withValues(alpha: 0.09), Colors.transparent],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: AuthTopBar(onBack: controller.goBack),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Email icon with glow
                        Center(
                          child: Container(
                            width: 80, height: 80,
                            decoration: BoxDecoration(
                              color: accent.withValues(alpha: 0.10),
                              shape: BoxShape.circle,
                              border: Border.all(color: accent.withValues(alpha: 0.30), width: 1.5),
                              boxShadow: [BoxShadow(color: accentGlow, blurRadius: 32, spreadRadius: 0)],
                            ),
                            child: Icon(Icons.mark_email_unread_outlined, color: accent, size: 34),
                          ),
                        ),
                        const SizedBox(height: 28),
                        Text(
                          'Check your\nemail',
                          style: TextStyle(color: _onSurface(context), fontSize: 32, fontWeight: FontWeight.w800, letterSpacing: -0.8, height: 1.1),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'We sent a 6-digit code to\n${controller.email}',
                          style: TextStyle(color: _dim2(context), fontSize: 14, height: 1.6),
                        ),
                        const SizedBox(height: 36),
                        _Label('6-DIGIT CODE'),
                        const SizedBox(height: 8),
                        _Field(
                          ctrl: controller.codeCtrl,
                          hint: '000000',
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          fontSize: 28,
                          letterSpacing: 10,
                          maxLength: 6,
                          autofocus: true,
                          onSubmitted: (_) => controller.verifyCode(),
                        ),
                        const SizedBox(height: 20),
                        Obx(() => _PrimaryButton(
                          label: 'Verify & Sign in',
                          icon: Icons.verified_outlined,
                          loading: controller.loading.value,
                          onTap: controller.loading.value ? null : controller.verifyCode,
                        )),
                        const SizedBox(height: 24),
                        // Resend / change email
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Didn't receive it? ", style: TextStyle(color: _dim2(context), fontSize: 13)),
                            GestureDetector(
                              onTap: controller.goBack,
                              child: Text('Try again',
                                  style: TextStyle(color: accent, fontSize: 13, fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        // Timer hint
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: _cardBg(context),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: _line(context)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 36, height: 36,
                                decoration: BoxDecoration(
                                  color: _onSurface(context).withValues(alpha: 0.06),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Icon(Icons.timer_outlined, color: _dim(context), size: 18),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  "Code expires in 5 minutes. Check your spam folder if you don't see it.",
                                  style: TextStyle(color: _dim2(context), fontSize: 12, height: 1.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Shared widgets ────────────────────────────────────────────────────────────

class _Label extends StatelessWidget {
  const _Label(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: _dim2(context), fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 1.5),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    required this.ctrl,
    required this.hint,
    this.keyboardType,
    this.obscureText = false,
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
  final bool obscureText;
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
      obscureText: obscureText,
      textAlign: textAlign,
      maxLength: maxLength,
      autofocus: autofocus,
      onSubmitted: onSubmitted,
      textInputAction: onSubmitted != null ? TextInputAction.done : null,
      style: TextStyle(color: onSurface, fontSize: fontSize, letterSpacing: letterSpacing, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: onSurface.withValues(alpha: 0.30), fontSize: fontSize, letterSpacing: 0, fontWeight: FontWeight.w400),
        counterText: '',
        filled: true,
        fillColor: _fieldBg(context),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: line)),
        focusedBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(14)), borderSide: BorderSide(color: accent, width: 1.5)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      ),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({required this.label, required this.icon, required this.loading, this.onTap});
  final String label;
  final IconData icon;
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
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(label, style: TextStyle(color: accentInk, fontSize: 16, fontWeight: FontWeight.w700, letterSpacing: 0.1)),
                  const SizedBox(width: 8),
                  Icon(icon, color: accentInk, size: 18),
                ],
              ),
      ),
    );
  }
}
