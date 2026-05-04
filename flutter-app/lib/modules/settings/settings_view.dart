import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/settings/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.navSettings)),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(t.settingsServerOptional, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          Text(
            t.settingsServerHelp,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: controller.urlCtrl,
            decoration: InputDecoration(
              hintText: kDefaultPublicApiBase,
              labelText: t.settingsApiUrl,
            ),
            keyboardType: TextInputType.url,
            autocorrect: false,
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: controller.saveAndRestart,
            child: Text(t.settingsSave),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: controller.useDefaultServer,
            child: Text(t.settingsUseDefault),
          ),
          const SizedBox(height: 32),
          Text(t.settingsLanguage),
          const SizedBox(height: 8),
          Obx(() {
            final lc = Get.find<LocaleController>().locale.value;
            return DropdownButtonFormField<String>(
              key: ValueKey<String>(lc.languageCode),
              initialValue: lc.languageCode,
              items: AppLocalizations.supportedLocales
                  .map(
                    (l) => DropdownMenuItem(
                      value: l.languageCode,
                      child: Text(l.languageCode.toUpperCase()),
                    ),
                  )
                  .toList(),
              onChanged: (code) {
                if (code != null) {
                  controller.setLocale(Locale(code));
                }
              },
            );
          }),
        ],
      ),
    );
  }
}
