import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';

/// Resolves [AppLocalizations] without a [BuildContext] (controllers, services).
AppLocalizations appL10n() =>
    lookupAppLocalizations(Get.find<LocaleController>().locale.value);

bool appIsEnglish() =>
    Get.find<LocaleController>().locale.value.languageCode == 'en';
