import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/modules/download/receive_view.dart';
import 'package:sendlargefiles/modules/history/history_view.dart';
import 'package:sendlargefiles/modules/home/home_view.dart';
import 'package:sendlargefiles/modules/plans/plans_view.dart';
import 'package:sendlargefiles/modules/settings/settings_view.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/modules/shell/app_shell_controller.dart';

class AppShellView extends GetView<AppShellController> {
  const AppShellView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Theme.of(context).brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Obx(() {
        final idx = controller.tabIndex.value;
        final localeKey = Get.find<LocaleController>().locale.value.toString();
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: IndexedStack(
            index: idx,
            // Each tab is wrapped in its own KeyedSubtree to ensure Flutter
            // keeps element trees fully isolated — prevents the
            // "_elements.contains(element): is not true" assertion that fires
            // when GlobalKeys or FocusNodes in different tabs collide.
            children: [
              KeyedSubtree(key: ValueKey('tab_home-$localeKey'), child: const HomeView()),
              KeyedSubtree(key: ValueKey('tab_history-$localeKey'), child: const HistoryView()),
              KeyedSubtree(key: ValueKey('tab_receive-$localeKey'), child: const ReceiveView()),
              KeyedSubtree(key: ValueKey('tab_plans-$localeKey'), child: const PlansView()),
              KeyedSubtree(key: ValueKey('tab_settings-$localeKey'), child: const SettingsView()),
            ],
          ),
          bottomNavigationBar: _NavBar(
            currentIndex: idx,
            onTap: controller.setTab,
          ),
        );
      }),
    );
  }
}

// ── Bottom Nav Bar ────────────────────────────────────────────────────────────

class _NavBar extends StatelessWidget {
  const _NavBar({required this.currentIndex, required this.onTap});
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final navBg = scheme.surface;
    final border = scheme.outlineVariant.withValues(alpha: 0.45);
    final selected = scheme.primary;
    final unselected = scheme.onSurface.withValues(alpha: 0.50);

    return Container(
      decoration: BoxDecoration(
        color: navBg,
        border: Border(top: BorderSide(color: border, width: 0.5)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 62,
          child: Row(
            children: [
              _NavItem(
                icon: Icons.home_rounded,
                label: t.navHome,
                selected: currentIndex == 0,
                selectedColor: selected,
                unselectedColor: unselected,
                onTap: () => onTap(0),
              ),
              _NavItem(
                icon: Icons.history_rounded,
                label: t.navHistory,
                selected: currentIndex == 1,
                selectedColor: selected,
                unselectedColor: unselected,
                onTap: () => onTap(1),
              ),
              _NavItem(
                icon: Icons.download_rounded,
                label: t.navReceive,
                selected: currentIndex == 2,
                selectedColor: selected,
                unselectedColor: unselected,
                onTap: () => onTap(2),
              ),
              _NavItem(
                icon: Icons.workspace_premium_rounded,
                label: t.navPlans,
                selected: currentIndex == 3,
                selectedColor: selected,
                unselectedColor: unselected,
                onTap: () => onTap(3),
              ),
              _NavItem(
                icon: Icons.settings_rounded,
                label: t.navSettings,
                selected: currentIndex == 4,
                selectedColor: selected,
                unselectedColor: unselected,
                onTap: () => onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final bool selected;
  final Color selectedColor;
  final Color unselectedColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: selected
                    ? selectedColor.withValues(alpha: 0.12)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                color: selected ? selectedColor : unselectedColor,
                size: 22,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: selected ? selectedColor : unselectedColor,
                fontSize: 10,
                fontWeight: selected ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
