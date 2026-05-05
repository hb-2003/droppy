import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const _kThemeModeKey = 'theme_mode';

class ThemeController extends GetxController {
  final _box = GetStorage();

  final themeMode = ThemeMode.system.obs;

  @override
  void onInit() {
    super.onInit();
    final raw = (_box.read(_kThemeModeKey) as String?) ?? 'system';
    themeMode.value = _parse(raw);
  }

  void setThemeMode(ThemeMode mode) {
    themeMode.value = mode;
    _box.write(_kThemeModeKey, _serialize(mode));
  }

  static ThemeMode _parse(String raw) {
    switch (raw) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  static String _serialize(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';
    }
  }
}

