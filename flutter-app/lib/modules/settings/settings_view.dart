import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/controllers/theme_controller.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/settings/settings_controller.dart';



class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final bg = theme.scaffoldBackgroundColor;
    final cardBg = scheme.surfaceContainerHighest;
    final line = scheme.outlineVariant.withValues(alpha: 0.35);
    final labelStyle = theme.textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
          color: scheme.onSurface.withValues(alpha: 0.65),
        ) ??
        TextStyle(
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
          color: scheme.onSurface.withValues(alpha: 0.65),
        );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: theme.brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: bg,
        body: Builder(builder: (context) {
          final bottomPad = MediaQuery.of(context).padding.bottom + 84;
          return ScrollConfiguration(
            behavior: const _NoOverscrollBehavior(),
            child: CustomScrollView(
              // Clamping keeps Android scroll feel.
              physics: const ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  snap: false,
                  backgroundColor: bg,
                  foregroundColor: scheme.onSurface,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  surfaceTintColor: Colors.transparent,
                  title: Text(t.navSettings),
                ),
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(20, 16, 20, 20 + bottomPad),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                      Text(t.settingsAppearance, style: labelStyle),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: cardBg,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: line),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Obx(() {
                          final theme = Get.find<ThemeController>();
                          return DropdownButtonFormField<ThemeMode>(
                            key: ValueKey<ThemeMode>(theme.themeMode.value),
                            initialValue: theme.themeMode.value,
                            dropdownColor: cardBg,
                            style: TextStyle(color: scheme.onSurface),
                            iconEnabledColor: scheme.onSurface.withValues(alpha: 0.6),
                            decoration: InputDecoration(
                              labelText: t.settingsTheme,
                              labelStyle: TextStyle(color: scheme.onSurface.withValues(alpha: 0.65)),
                              filled: true,
                              fillColor: scheme.surface,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: line),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: line),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: scheme.primary, width: 1.5),
                              ),
                            ),
                            items: [
                              DropdownMenuItem(value: ThemeMode.system, child: Text(t.themeSystem)),
                              DropdownMenuItem(value: ThemeMode.light, child: Text(t.themeLight)),
                              DropdownMenuItem(value: ThemeMode.dark, child: Text(t.themeDark)),
                            ],
                            onChanged: (m) {
                              if (m != null) controller.setThemeMode(m);
                            },
                          );
                        }),
                      ),
                      const SizedBox(height: 24),
                      Text(t.settingsAccount, style: labelStyle),
                      const SizedBox(height: 8),
                      Obx(() {
                        final isIn = controller.loggedIn.value;
                        if (isIn) {
                          return Container(
                            decoration: BoxDecoration(
                              color: cardBg,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: line),
                            ),
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(color: scheme.primary, shape: BoxShape.circle),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Share Large\nVideo Files',
                                      style: TextStyle(
                                        color: scheme.onSurface,
                                        fontSize: 10,
                                        height: 1.35,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  t.settingsSignedIn,
                                  style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800) ??
                                      TextStyle(color: scheme.onSurface, fontSize: 18, fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(height: 12),
                                GestureDetector(
                                  onTap: controller.logout,
                                  child: Container(
                                    height: 48,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: line),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      t.logout,
                                      style: TextStyle(
                                        color: scheme.onSurface.withValues(alpha: 0.75),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        return Container(
                          decoration: BoxDecoration(
                            color: cardBg,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: line),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                t.settingsSignedOut,
                                style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.75)),
                              ),
                              const SizedBox(height: 12),
                              FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: scheme.primary,
                                  foregroundColor: scheme.onPrimary,
                                ),
                                onPressed: controller.goLogin,
                                child: Text(t.signIn),
                              ),
                              const SizedBox(height: 8),
                              OutlinedButton(
                                onPressed: controller.openRegister,
                                style: OutlinedButton.styleFrom(foregroundColor: scheme.onSurface.withValues(alpha: 0.8)),
                                child: Text(t.signUp),
                              ),
                              const SizedBox(height: 8),
                              OutlinedButton(
                                onPressed: controller.openWebsite,
                                style: OutlinedButton.styleFrom(foregroundColor: scheme.onSurface.withValues(alpha: 0.8)),
                                child: Text(t.settingsOpenWebsite),
                              ),
                            ],
                          ),
                        );
                      }),
                      const SizedBox(height: 24),
                      Text(t.settingsLinks, style: labelStyle),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: cardBg,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: line),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.privacy_tip_outlined, color: scheme.onSurface.withValues(alpha: 0.6)),
                              title: Text(t.privacyPolicy, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.85))),
                              onTap: controller.openPrivacy,
                            ),
                            Divider(height: 1, color: line.withValues(alpha: 0.6)),
                            ListTile(
                              leading: Icon(Icons.description_outlined, color: scheme.onSurface.withValues(alpha: 0.6)),
                              title: Text(t.termsOfService, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.85))),
                              onTap: controller.openTerms,
                            ),
                            Divider(height: 1, color: line.withValues(alpha: 0.6)),
                            ListTile(
                              leading: Icon(Icons.info_outline_rounded, color: scheme.onSurface.withValues(alpha: 0.6)),
                              title: Text(t.about, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.85))),
                              onTap: controller.openAbout,
                            ),
                            Divider(height: 1, color: line.withValues(alpha: 0.6)),
                            ListTile(
                              leading: Icon(Icons.apps_outlined, color: scheme.onSurface.withValues(alpha: 0.6)),
                              title: Text(t.moreApps, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.85))),
                              onTap: controller.openMoreApps,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(t.settingsLanguage, style: labelStyle),
                      const SizedBox(height: 8),
                      Obx(() {
                        final lc = Get.find<LocaleController>().locale.value;
                        return DropdownButtonFormField<String>(
                          key: ValueKey<String>(lc.languageCode),
                          initialValue: lc.languageCode,
                          dropdownColor: cardBg,
                          style: TextStyle(color: scheme.onSurface),
                          iconEnabledColor: scheme.onSurface.withValues(alpha: 0.6),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: scheme.surface,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: line),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: line),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: scheme.primary, width: 1.5),
                            ),
                          ),
                          items: AppLocalizations.supportedLocales
                              .map((l) => DropdownMenuItem(
                                    value: l.languageCode,
                                    child: Text(l.languageCode.toUpperCase()),
                                  ))
                              .toList(),
                          onChanged: (code) {
                            if (code != null) controller.setLocale(Locale(code));
                          },
                        );
                      }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

/// Prevents glow/stretch overscroll so the top doesn't "pull down" into empty space.
class _NoOverscrollBehavior extends ScrollBehavior {
  const _NoOverscrollBehavior();

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
