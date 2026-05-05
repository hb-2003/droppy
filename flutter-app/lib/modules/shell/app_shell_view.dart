import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/download/download_view.dart';
import 'package:sendlargefiles/modules/home/home_view.dart';
import 'package:sendlargefiles/modules/settings/settings_view.dart';
import 'package:sendlargefiles/modules/shell/app_shell_controller.dart';

class AppShellView extends GetView<AppShellController> {
  const AppShellView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    // Deep link support: if opened with /{id}/{pid}, jump to Receive tab.
    final p = Get.parameters;
    if ((p['id'] ?? '').isNotEmpty && controller.tabIndex.value != 1) {
      controller.setTab(1);
    }

    return Obx(() {
      final idx = controller.tabIndex.value;
      return Scaffold(
        body: IndexedStack(
          index: idx,
          children: const [
            HomeView(),
            DownloadView(),
            SettingsView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          onTap: controller.setTab,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.dashboard_rounded),
              label: t.navSend,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.download_rounded),
              label: t.navDownload,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings_rounded),
              label: t.navSettings,
            ),
          ],
        ),
      );
    });
  }
}

