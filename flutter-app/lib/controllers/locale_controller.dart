import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sendlargefiles/localization/app_locale_catalog.dart';

const _kLocaleCode = 'app_locale_code';
const _kLocaleCountry = 'app_locale_country';
const _kLocaleUserChosen = 'app_locale_user_chosen';

class LocaleController extends GetxController {
  final Rx<Locale> locale = const Locale('en').obs;

  @override
  void onInit() {
    super.onInit();
    locale.value = _loadInitialLocale();
    Get.updateLocale(locale.value);
  }

  Locale _loadInitialLocale() {
    final box = GetStorage();
    final code = box.read<String>(_kLocaleCode);
    final userChosen = box.read<bool>(_kLocaleUserChosen) ??
        (code != null && code.isNotEmpty);
    if (userChosen && code != null && code.isNotEmpty) {
      final country = box.read<String>(_kLocaleCountry);
      return AppLocaleCatalog.resolveLocale(
        Locale(code, country?.isEmpty ?? true ? null : country),
      );
    }
    return AppLocaleCatalog.systemLocale();
  }

  void setLocale(Locale l) {
    final resolved = AppLocaleCatalog.resolveLocale(l);
    if (locale.value == resolved) {
      GetStorage().write(_kLocaleUserChosen, true);
      return;
    }
    locale.value = resolved;
    final box = GetStorage();
    box.write(_kLocaleUserChosen, true);
    box.write(_kLocaleCode, resolved.languageCode);
    if (resolved.countryCode != null && resolved.countryCode!.isNotEmpty) {
      box.write(_kLocaleCountry, resolved.countryCode);
    } else {
      box.remove(_kLocaleCountry);
    }
    Get.updateLocale(resolved);
    update();
  }
}
