import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
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
    if (email.isEmpty) {
      AppSnack.error('Error', 'Please enter your email');
      return;
    }
    if (password.trim().isEmpty) {
      AppSnack.error('Error', 'Please enter your password');
      return;
    }
    loading.value = true;
    try {
      final result = await auth.loginWithPassword(email, password);
      if (result == 'ok') {
        Get.offAllNamed(AppRoutes.shell);
      } else if (result == 'invalid_email') {
        AppSnack.error('Error', 'Invalid email address');
      } else {
        AppSnack.error('Error', 'Incorrect email or password');
      }
    } finally {
      loading.value = false;
    }
  }

  /// Step 1: send OTP to email
  Future<void> sendCode() async {
    if (email.isEmpty) {
      AppSnack.error('Error', 'Please enter your email');
      return;
    }
    loading.value = true;
    try {
      final result = await auth.requestOtp(email);
      if (result == 'sent') {
        step.value = 1;
      } else if (result == 'invalid_email') {
        AppSnack.error('Error', 'Invalid email address');
      } else {
        AppSnack.error('Error', 'Could not send code. Check your connection and try again.');
      }
    } finally {
      loading.value = false;
    }
  }

  /// Step 2: verify OTP code
  Future<void> verifyCode() async {
    final code = codeCtrl.text.trim();
    if (code.length < 6) {
      AppSnack.error('Error', 'Please enter the 6-digit code');
      return;
    }
    loading.value = true;
    try {
      final result = await auth.verifyOtp(email, code);
      if (result == 'ok') {
        Get.offAllNamed(AppRoutes.shell);
      } else if (result == 'expired') {
        AppSnack.error('Code expired', 'Please request a new code.');
        goBack();
      } else {
        AppSnack.error('Invalid code', 'The code is incorrect. Please try again.');
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
