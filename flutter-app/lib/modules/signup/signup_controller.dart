import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
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
    if (email.isEmpty) {
      AppSnack.error('Error', 'Please enter your email');
      return;
    }
    if (password.trim().length < 8) {
      AppSnack.error('Error', 'Password must be at least 8 characters');
      return;
    }
    if (passwordCtrl.text != confirmCtrl.text) {
      AppSnack.error('Error', 'Passwords do not match');
      return;
    }

    loading.value = true;
    try {
      final r = await auth.signupWithPassword(email, password);
      if (r == 'ok') {
        AppSnack.success('Welcome', 'Account created');
        Get.offAllNamed(AppRoutes.shell);
      } else if (r == 'exists') {
        AppSnack.error('Error', 'Account already exists. Please sign in.');
        Get.offNamed(AppRoutes.login);
      } else if (r == 'invalid_email') {
        AppSnack.error('Error', 'Invalid email address');
      } else if (r == 'weak_password') {
        AppSnack.error('Error', 'Password must be at least 8 characters');
      } else {
        AppSnack.error('Error', 'Could not create account. Try again.');
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

