import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/modules/history/history_view.dart';
import 'package:sendlargefiles/modules/home/home_view.dart';
import 'package:sendlargefiles/modules/settings/settings_view.dart';
import 'package:sendlargefiles/modules/shell/app_shell_controller.dart';

class AppShellView extends GetView<AppShellController> {
  const AppShellView({super.key});

  @override
  Widget build(BuildContext context) {
    // Deep link support: if opened with /{id}/{pid}, jump to History tab (index 1)
    // is no longer applicable — Download is a separate route now.
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Theme.of(context).brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Obx(() {
        final idx = controller.tabIndex.value;
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: IndexedStack(
            index: idx,
            children: const [
              HomeView(),
              HistoryView(),
              SettingsView(),
            ],
          ),
          bottomNavigationBar: _DarkNavBar(
            currentIndex: idx,
            onTap: controller.setTab,
          ),
        );
      }),
    );
  }
}

class _DarkNavBar extends StatelessWidget {
  const _DarkNavBar({required this.currentIndex, required this.onTap});
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final navBg = scheme.surface;
    final border = scheme.outlineVariant.withValues(alpha: 0.35);
    final selected = scheme.primary;
    final unselected = scheme.onSurface.withValues(alpha: 0.55);
    return Container(
      decoration: BoxDecoration(
        color: navBg,
        border: Border(top: BorderSide(color: border)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              _NavItem(icon: Icons.upload_rounded, label: 'Upload', selected: currentIndex == 0, selectedColor: selected, unselectedColor: unselected, onTap: () => onTap(0)),
              _NavItem(icon: Icons.history_rounded, label: 'History', selected: currentIndex == 1, selectedColor: selected, unselectedColor: unselected, onTap: () => onTap(1)),
              _NavItem(icon: Icons.settings_rounded, label: 'Settings', selected: currentIndex == 2, selectedColor: selected, unselectedColor: unselected, onTap: () => onTap(2)),
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
            Icon(icon, color: selected ? selectedColor : unselectedColor, size: 22),
            const SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                color: selected ? selectedColor : unselectedColor,
                fontSize: 10,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
