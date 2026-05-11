import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

class SignupController extends GetxController {
  final AuthRepository auth = Get.find<AuthRepository>();

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confirmCtrl = TextEditingController();

  final loading = false.obs;

  String get email => emailCtrl.text.trim();
  String get password => passwordCtrl.text;

  Future<void> signup() async {
    final t = appL10n();
    if (email.isEmpty) {
      AppSnack.error(t.snackError, t.snackEnterEmail);
      return;
    }
    if (password.trim().length < 8) {
      AppSnack.error(t.snackError, t.snackPasswordMin8);
      return;
    }
    if (passwordCtrl.text != confirmCtrl.text) {
      AppSnack.error(t.snackError, t.snackPasswordMismatch);
      return;
    }

    loading.value = true;
    try {
      final r = await auth.signupWithPassword(email, password);
      if (r == 'ok') {
        AppSnack.success(t.snackWelcome, t.snackAccountCreated);
        Get.offAllNamed(AppRoutes.shell);
      } else if (r == 'exists') {
        AppSnack.error(t.snackError, t.snackAccountExists);
        Get.offNamed(AppRoutes.login);
      } else if (r == 'invalid_email') {
        AppSnack.error(t.snackError, t.snackInvalidEmail);
      } else if (r == 'weak_password') {
        AppSnack.error(t.snackError, t.snackPasswordMin8);
      } else {
        AppSnack.error(t.snackError, t.snackSignupFailed);
      }
    } finally {
      loading.value = false;
    }
  }

  void goLogin() => Get.offNamed(AppRoutes.login);

  @override
  void onClose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    confirmCtrl.dispose();
    super.onClose();
  }
}
