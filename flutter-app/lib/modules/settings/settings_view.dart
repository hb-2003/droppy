import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
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
          Text(t.settingsAccount, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          Obx(() {
            final isIn = controller.loggedIn.value;
            if (isIn) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(t.settingsSignedIn),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: controller.logout,
                        child: Text(t.logout),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(t.settingsSignedOut),
                    const SizedBox(height: 12),
                    FilledButton(
                      onPressed: controller.goLogin,
                      child: Text(t.signIn),
                    ),
                    const SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: controller.openWebsite,
                      child: Text(t.settingsOpenWebsite),
                    ),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 24),
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
