import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

class ForgotPasswordController extends GetxController {
  final AuthRepository auth = Get.find<AuthRepository>();

  final emailCtrl = TextEditingController();
  final codeCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confirmCtrl = TextEditingController();

  final loading = false.obs;
  final step = 0.obs;

  String get email => emailCtrl.text.trim();

  Future<void> requestReset() async {
    final t = appL10n();
    if (email.isEmpty) {
      AppSnack.error(t.snackError, t.snackEnterEmail);
      return;
    }

    loading.value = true;
    try {
      final result = await auth.requestPasswordReset(email);
      if (result == 'sent') {
        step.value = 1;
        AppSnack.success(t.snackPasswordResetSent, t.snackPasswordResetSentBody);
      } else if (result == 'invalid_email') {
        AppSnack.error(t.snackError, t.snackInvalidEmail);
      } else {
        AppSnack.error(t.snackError, t.snackPasswordResetFailed);
      }
    } finally {
      loading.value = false;
    }
  }

  Future<void> submitReset() async {
    final t = appL10n();
    final code = codeCtrl.text.trim();
    final password = passwordCtrl.text;
    final confirm = confirmCtrl.text;

    if (code.length < 6) {
      AppSnack.error(t.snackError, t.snackEnterOtp);
      return;
    }
    if (password.trim().length < 8) {
      AppSnack.error(t.snackError, t.passwordMin8);
      return;
    }
    if (password != confirm) {
      AppSnack.error(t.snackError, t.snackPasswordMismatch);
      return;
    }

    loading.value = true;
    try {
      final result = await auth.resetPassword(email, code, password);
      if (result == 'ok') {
        AppSnack.success(t.snackPasswordUpdated, t.snackPasswordUpdatedBody);
        Get.offAllNamed(AppRoutes.login);
      } else if (result == 'expired') {
        AppSnack.error(t.snackOtpExpired, t.snackPasswordResetInvalid);
        goBack();
      } else if (result == 'weak_password') {
        AppSnack.error(t.snackError, t.passwordMin8);
      } else if (result == 'invalid_email') {
        AppSnack.error(t.snackError, t.snackInvalidEmail);
      } else {
        AppSnack.error(t.snackError, t.snackPasswordResetInvalid);
      }
    } finally {
      loading.value = false;
    }
  }

  void goBack() {
    step.value = 0;
    codeCtrl.clear();
    passwordCtrl.clear();
    confirmCtrl.clear();
  }

  @override
  void onClose() {
    emailCtrl.dispose();
    codeCtrl.dispose();
    passwordCtrl.dispose();
    confirmCtrl.dispose();
    super.onClose();
  }
}
