import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: scheme.surface,
      body: SafeArea(
        child: Center(
          child: Obx(
            () => controller.loading.value
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.cloud_upload_rounded,
                        size: 56,
                        color: scheme.primary,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        t.appTitle,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        t.heroAccent,
                        style: AppTheme.heroAccent(color: scheme.primary),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          color: scheme.primary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        t.splashLoading,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
