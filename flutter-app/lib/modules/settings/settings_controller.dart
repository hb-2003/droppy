import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

class SettingsController extends GetxController {
  final urlCtrl = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    urlCtrl.text = resolveBaseUrl();
  }

  @override
  void onClose() {
    urlCtrl.dispose();
    super.onClose();
  }

  void saveAndRestart() {
    final raw = urlCtrl.text.trim();
    if (raw.isEmpty) {
      clearSavedBaseUrl();
      ApiClient.instance.updateBaseUrl(resolveBaseUrl());
    } else {
      ApiClient.instance.updateBaseUrl(raw);
    }
    urlCtrl.text = resolveBaseUrl();
    Get.offAllNamed(AppRoutes.splash);
  }

  void useDefaultServer() {
    clearSavedBaseUrl();
    ApiClient.instance.updateBaseUrl(resolveBaseUrl());
    urlCtrl.text = resolveBaseUrl();
    Get.offAllNamed(AppRoutes.splash);
  }

  void setLocale(Locale l) {
    Get.find<LocaleController>().setLocale(l);
  }
}
