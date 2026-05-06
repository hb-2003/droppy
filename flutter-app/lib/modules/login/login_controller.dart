import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';

class LoginController extends GetxController {
  final AuthRepository auth = Get.find<AuthRepository>();

  final emailCtrl = TextEditingController();
  final codeCtrl = TextEditingController();

  final loading = false.obs;
  final step = 0.obs; // 0 = enter email, 1 = enter OTP code

  String get email => emailCtrl.text.trim();

  /// Step 1: send OTP to email
  Future<void> sendCode() async {
    if (email.isEmpty) {
      Get.snackbar('Error', 'Please enter your email',
          backgroundColor: const Color(0xFF161616),
          colorText: const Color(0xFFFFFFFF));
      return;
    }
    loading.value = true;
    try {
      final result = await auth.requestOtp(email);
      if (result == 'sent') {
        step.value = 1;
      } else if (result == 'invalid_email') {
        Get.snackbar('Error', 'Invalid email address',
            backgroundColor: const Color(0xFF161616),
            colorText: const Color(0xFFFFFFFF));
      } else {
        Get.snackbar('Error', 'Could not send code. Check your connection and try again.',
            backgroundColor: const Color(0xFF161616),
            colorText: const Color(0xFFFFFFFF));
      }
    } finally {
      loading.value = false;
    }
  }

  /// Step 2: verify OTP code
  Future<void> verifyCode() async {
    final code = codeCtrl.text.trim();
    if (code.length < 6) {
      Get.snackbar('Error', 'Please enter the 6-digit code',
          backgroundColor: const Color(0xFF161616),
          colorText: const Color(0xFFFFFFFF));
      return;
    }
    loading.value = true;
    try {
      final result = await auth.verifyOtp(email, code);
      if (result == 'ok') {
        Get.offAllNamed(AppRoutes.shell);
      } else if (result == 'expired') {
        Get.snackbar('Code expired', 'Please request a new code.',
            backgroundColor: const Color(0xFF161616),
            colorText: const Color(0xFFFFFFFF));
        goBack();
      } else {
        Get.snackbar('Invalid code', 'The code is incorrect. Please try again.',
            backgroundColor: const Color(0xFF161616),
            colorText: const Color(0xFFFFFFFF));
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
    codeCtrl.dispose();
    super.onClose();
  }
}
