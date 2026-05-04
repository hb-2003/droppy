import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';

class LoginController extends GetxController {
  final AuthRepository auth = Get.find<AuthRepository>();

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final loading = false.obs;

  Future<void> submit() async {
    loading.value = true;
    try {
      final ok = await auth.login(
        email: emailCtrl.text.trim(),
        password: passCtrl.text,
      );
      if (ok) {
        Get.offAllNamed(AppRoutes.home);
      } else {
        Get.snackbar('Login', 'Failed');
      }
    } finally {
      loading.value = false;
    }
  }

  @override
  void onClose() {
    emailCtrl.dispose();
    passCtrl.dispose();
    super.onClose();
  }
}
