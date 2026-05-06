import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/controllers/theme_controller.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/settings/settings_controller.dart';

const _bg = Color(0xFF0D0D0D);
const _cardBg = Color(0xFF161616);
const _accent = Color(0xFFD4FF3B);
const _accentDark = Color(0xFF0A0A0A);
const _accentGlow = Color(0x33D4FF3B);

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
                            value: theme.themeMode.value,
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
                          value: lc.languageCode,
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

class _AccountSignedOut extends StatelessWidget {
  const _AccountSignedOut({required this.controller, required this.t});
  final SettingsController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.07)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Sign in to track your transfers and access your history from any device.',
            style: TextStyle(color: Colors.white38, fontSize: 13, height: 1.5),
          ),
          const SizedBox(height: 14),
          GestureDetector(
            onTap: controller.goLogin,
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: _accent,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [BoxShadow(color: _accentGlow, blurRadius: 20, offset: Offset(0, 4))],
              ),
              alignment: Alignment.center,
              child: Text(t.signIn,
                  style: const TextStyle(color: _accentDark, fontSize: 15, fontWeight: FontWeight.w700)),
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lc = Get.find<LocaleController>();
    return Obx(() {
      final current = lc.locale.value;
      return Container(
        decoration: BoxDecoration(
          color: _cardBg,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white.withValues(alpha: 0.07)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: current.languageCode,
            dropdownColor: const Color(0xFF1E1E1E),
            style: const TextStyle(color: Colors.white, fontSize: 14),
            icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white38),
            isExpanded: true,
            items: AppLocalizations.supportedLocales.map((l) => DropdownMenuItem(
              value: l.languageCode,
              child: Text(l.languageCode.toUpperCase(), style: const TextStyle(color: Colors.white)),
            )).toList(),
            onChanged: (code) {
              if (code != null) lc.setLocale(Locale(code));
            },
          ),
        ),
      );
    });
  }
}

class _ServerUrlField extends StatelessWidget {
  const _ServerUrlField({required this.controller});
  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.07)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Enter the base URL of your server (e.g. http://10.0.2.2:8000/)',
            style: TextStyle(color: Colors.white38, fontSize: 12, height: 1.5),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller.serverUrlCtrl,
            keyboardType: TextInputType.url,
            autocorrect: false,
            style: const TextStyle(color: Colors.white, fontSize: 13),
            decoration: InputDecoration(
              hintText: 'http://10.0.2.2:8000/',
              hintStyle: const TextStyle(color: Colors.white24, fontSize: 13),
              filled: true,
              fillColor: const Color(0xFF1C1C1C),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.08))),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.08))),
              focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: _accent, width: 1.5)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: controller.saveServerUrl,
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                color: _accent,
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: const Text('Save', style: TextStyle(color: _accentDark, fontSize: 14, fontWeight: FontWeight.w700)),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.icon, required this.label, required this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _cardBg,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white.withValues(alpha: 0.07)),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white54, size: 20),
            const SizedBox(width: 12),
            Text(label, style: const TextStyle(color: Colors.white60, fontSize: 14)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white24, size: 14),
          ],
        ),
      ),
    );
  }
}
