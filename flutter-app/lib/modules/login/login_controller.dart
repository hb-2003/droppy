import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

class LoginController extends GetxController {
  final AuthRepository auth = Get.find<AuthRepository>();

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final codeCtrl = TextEditingController();

  final loading = false.obs;
  final step = 0.obs; // 0 = email+password, 1 = OTP (optional)

  String get email => emailCtrl.text.trim();
  String get password => passwordCtrl.text;

  /// Email + password login (creates PHP session cookie).
  Future<void> loginPassword() async {
    final t = appL10n();
    if (email.isEmpty) {
      AppSnack.error(t.snackError, t.snackEnterEmail);
      return;
    }
    if (password.trim().isEmpty) {
      AppSnack.error(t.snackError, t.snackEnterPassword);
      return;
    }
    loading.value = true;
    try {
      final result = await auth.loginWithPassword(email, password);
      if (result == 'ok') {
        Get.offAllNamed(AppRoutes.shell);
      } else if (result == 'invalid_email') {
        AppSnack.error(t.snackError, t.snackInvalidEmail);
      } else {
        AppSnack.error(t.snackError, t.snackInvalidCredentials);
      }
    } finally {
      loading.value = false;
    }
  }

  /// Step 1: send OTP to email
  Future<void> sendCode() async {
    final t = appL10n();
    if (email.isEmpty) {
      AppSnack.error(t.snackError, t.snackEnterEmail);
      return;
    }
    loading.value = true;
    try {
      final result = await auth.requestOtp(email);
      if (result == 'sent') {
        step.value = 1;
      } else if (result == 'invalid_email') {
        AppSnack.error(t.snackError, t.snackInvalidEmail);
      } else {
        AppSnack.error(t.snackError, t.snackSendCodeFailed);
      }
    } finally {
      loading.value = false;
    }
  }

  /// Step 2: verify OTP code
  Future<void> verifyCode() async {
    final t = appL10n();
    final code = codeCtrl.text.trim();
    if (code.length < 6) {
      AppSnack.error(t.snackError, t.snackEnterOtp);
      return;
    }
    loading.value = true;
    try {
      final result = await auth.verifyOtp(email, code);
      if (result == 'ok') {
        Get.offAllNamed(AppRoutes.shell);
      } else if (result == 'expired') {
        AppSnack.error(t.snackOtpExpired, t.snackOtpExpiredBody);
        goBack();
      } else {
        AppSnack.error(t.snackInvalidCode, t.snackInvalidCodeBody);
      }
    } finally {
      loading.value = false;
    }
  }

  void goBack() {
    step.value = 0;
    codeCtrl.clear();
  }

  @override
  void onClose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    codeCtrl.dispose();
    super.onClose();
  }
}
