import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const _kLocaleCode = 'app_locale_code';
const _kLocaleCountry = 'app_locale_country';

class LocaleController extends GetxController {
  final Rx<Locale> locale = const Locale('en').obs;

  @override
  void onInit() {
    super.onInit();
    final box = GetStorage();
    final code = box.read<String>(_kLocaleCode);
    final country = box.read<String>(_kLocaleCountry);
    if (code != null && code.isNotEmpty) {
      locale.value = Locale(code, country?.isEmpty ?? true ? null : country);
    }
  }

  void setLocale(Locale l) {
    locale.value = l;
    GetStorage().write(_kLocaleCode, l.languageCode);
    if (l.countryCode != null && l.countryCode!.isNotEmpty) {
      GetStorage().write(_kLocaleCountry, l.countryCode);
    } else {
      GetStorage().remove(_kLocaleCountry);
    }
    update();
  }
}
