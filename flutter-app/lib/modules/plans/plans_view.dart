import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/plans/plans_controller.dart';
import 'package:sendlargefiles/services/iap/iap_product_ids.dart';
import 'package:sendlargefiles/services/iap/iap_store_state.dart';
import 'package:sendlargefiles/widgets/app_top_bar.dart';

class PlansView extends GetView<PlansController> {
  const PlansView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final bg = Theme.of(context).scaffoldBackgroundColor;
    final card = scheme.surfaceContainerHighest;
    final line = scheme.outlineVariant.withValues(alpha: 0.55);

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTopBar(
              title: t.plansTitle,
              subtitle: t.plansSubtitle,
              trailing: Obx(() {
                final busy = controller.loading || controller.isPurchasing;
                return IconButton(
                  onPressed: busy ? null : controller.refreshStore,
                  icon: const Icon(Icons.refresh_rounded),
                  tooltip: t.retry,
                );
              }),
            ),
            Expanded(
              child: Obx(() {
                final state = controller.storeState.value;

                if (controller.loading) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(height: 14),
                        Text(
                          t.storeLoadingPrices,
                          style: TextStyle(
                            color: scheme.onSurface.withValues(alpha: 0.6),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                if (state == IapStoreState.unavailable) {
                  return _EmptyState(
                    title: t.storeUnavailable,
                    message: controller.lastError ?? t.storeUnavailableBody,
                    hint: t.storeSetupHint,
                    onRetry: controller.refreshStore,
                  );
                }

                if (state == IapStoreState.failed && controller.loadedCount == 0) {
                  return _EmptyState(
                    title: t.storePricesUnavailable,
                    message: controller.lastError ?? t.storeUnavailableBody,
                    hint: t.storeSetupHint,
                    onRetry: controller.refreshStore,
                  );
                }

                return Stack(
                  children: [
                    ListView(
                      padding: const EdgeInsets.fromLTRB(20, 6, 20, 20),
                      children: [
                        if (state == IapStoreState.partial || state == IapStoreState.failed)
                          _StoreStatusBanner(
                            loaded: controller.loadedCount,
                            total: controller.expectedCount,
                            error: controller.lastError,
                            onRetry: controller.refreshStore,
                          ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
                          decoration: BoxDecoration(
                            color: card,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: line),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: scheme.primary.withValues(alpha: 0.12),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: scheme.primary.withValues(alpha: 0.25)),
                                ),
                                child: Icon(Icons.workspace_premium_rounded, color: scheme.primary, size: 28),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  t.freeVersionAds,
                                  style: TextStyle(
                                    color: scheme.onSurface.withValues(alpha: 0.72),
                                    fontSize: 13,
                                    height: 1.35,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 14),
                        _PlanCard(
                          title: t.planAdsTitle,
                          bullets: [t.planAdsBullet1, t.planAdsBullet2],
                          tier: kIapPlanTiers[0],
                          controller: controller,
                        ),
                        const SizedBox(height: 14),
                        _PlanCard(
                          title: t.planProTitle,
                          bullets: [t.planProBullet1, t.planProBullet2],
                          tier: kIapPlanTiers[1],
                          controller: controller,
                        ),
                        const SizedBox(height: 14),
                        _PlanCard(
                          title: t.planPremiumTitle,
                          bullets: [t.planPremiumBullet1, t.planPremiumBullet2],
                          tier: kIapPlanTiers[2],
                          controller: controller,
                        ),
                      ],
                    ),
                    if (controller.isPurchasing)
                      const ColoredBox(
                        color: Color(0x33000000),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  ],
                );
              }),
            ),
            Obx(() {
              final state = controller.storeState.value;
              final showPlans = !controller.loading &&
                  state != IapStoreState.unavailable &&
                  !(state == IapStoreState.failed && controller.loadedCount == 0);
              if (!showPlans) return const SizedBox.shrink();
              return _PlansContinueBar(
                enabled: controller.canContinue,
                busy: controller.isPurchasing,
                onContinue: controller.continuePurchase,
              );
            }),
            Obx(() => _PlansFooterLinks(
                  busy: controller.loading || controller.isPurchasing,
                  onRestore: controller.restore,
                  onTerms: controller.openTerms,
                  onPrivacy: controller.openPrivacy,
                )),
          ],
        ),
      ),
    );
  }
}

class _PlansContinueBar extends StatelessWidget {
  const _PlansContinueBar({
    required this.enabled,
    required this.busy,
    required this.onContinue,
  });

  final bool enabled;
  final bool busy;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final bg = Theme.of(context).scaffoldBackgroundColor;
    final line = scheme.outlineVariant.withValues(alpha: 0.35);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        border: Border(top: BorderSide(color: line)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FilledButton(
              onPressed: enabled && !busy ? onContinue : null,
              style: FilledButton.styleFrom(
                backgroundColor: scheme.primary,
                foregroundColor: scheme.onPrimary,
                disabledBackgroundColor: scheme.primary.withValues(alpha: 0.35),
                minimumSize: const Size.fromHeight(52),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: Text(
                t.plansContinue,
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16, letterSpacing: 0.4),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t.planSubscriptionDisclaimer,
              style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.50), fontSize: 11.5, height: 1.4),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _PlansFooterLinks extends StatelessWidget {
  const _PlansFooterLinks({
    required this.busy,
    required this.onRestore,
    required this.onTerms,
    required this.onPrivacy,
  });

  final bool busy;
  final VoidCallback onRestore;
  final VoidCallback onTerms;
  final VoidCallback onPrivacy;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final linkStyle = TextStyle(
      color: scheme.onSurface.withValues(alpha: 0.55),
      fontSize: 12,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationColor: scheme.onSurface.withValues(alpha: 0.35),
    );
    final dotStyle = TextStyle(color: scheme.onSurface.withValues(alpha: 0.35), fontSize: 12);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _FooterLink(label: t.planLinkRestore, style: linkStyle, onTap: busy ? null : onRestore),
          Text(' • ', style: dotStyle),
          _FooterLink(label: t.termsAndConditions, style: linkStyle, onTap: onTerms),
          Text(' • ', style: dotStyle),
          _FooterLink(label: t.privacyPolicy, style: linkStyle, onTap: onPrivacy),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  const _FooterLink({required this.label, required this.style, this.onTap});

  final String label;
  final TextStyle style;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(label, style: style.copyWith(color: onTap == null ? style.color?.withValues(alpha: 0.35) : style.color)),
    );
  }
}

class _StoreStatusBanner extends StatelessWidget {
  const _StoreStatusBanner({
    required this.loaded,
    required this.total,
    required this.onRetry,
    this.error,
  });

  final int loaded;
  final int total;
  final String? error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Material(
        color: scheme.errorContainer.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.storePricesPartial,
                style: TextStyle(color: scheme.onErrorContainer, fontWeight: FontWeight.w800, fontSize: 13),
              ),
              const SizedBox(height: 4),
              Text(
                t.storePricesPartialBody(loaded, total),
                style: TextStyle(color: scheme.onErrorContainer.withValues(alpha: 0.9), fontSize: 12, height: 1.35),
              ),
              if (error != null && error!.isNotEmpty) ...[
                const SizedBox(height: 6),
                Text(
                  error!,
                  style: TextStyle(color: scheme.onErrorContainer.withValues(alpha: 0.75), fontSize: 11),
                ),
              ],
              const SizedBox(height: 8),
              Text(
                t.storeSetupHint,
                style: TextStyle(color: scheme.onErrorContainer.withValues(alpha: 0.8), fontSize: 11, height: 1.35),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: onRetry, child: Text(t.retry)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({
    required this.title,
    required this.bullets,
    required this.tier,
    required this.controller,
  });

  final String title;
  final List<String> bullets;
  final IapPlanTier tier;
  final PlansController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final line = scheme.outlineVariant.withValues(alpha: 0.55);
    final card = scheme.surfaceContainerHighest;
    final primary = scheme.primary;

    final monthPrice = controller.priceFor(tier.monthlyProductId);
    final yearPrice = controller.priceFor(tier.yearlyProductId);
    final effectiveMonthly = controller.effectiveMonthlyForYearly(tier.yearlyProductId);
    final tierSelected = controller.isSelected(tier.monthlyProductId) ||
        controller.isSelected(tier.yearlyProductId);

    return Container(
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: tierSelected ? primary.withValues(alpha: 0.55) : line,
          width: tierSelected ? 1.4 : 1,
        ),
        boxShadow: tierSelected
            ? [
                BoxShadow(
                  color: primary.withValues(alpha: 0.12),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ]
            : null,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: scheme.onSurface, fontSize: 18, fontWeight: FontWeight.w900)),
                const SizedBox(height: 10),
                ...bullets.map(
                  (b) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check_circle_rounded, size: 16, color: primary.withValues(alpha: 0.85)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            b,
                            style: TextStyle(
                              color: scheme.onSurface.withValues(alpha: 0.72),
                              fontSize: 12.8,
                              height: 1.25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            children: [
              _SelectablePriceOption(
                price: monthPrice ?? t.priceUnavailable,
                subtitle: t.perMonth,
                selected: controller.isSelected(tier.monthlyProductId),
                enabled: !controller.isPurchasing && monthPrice != null,
                onTap: () => controller.selectProduct(tier.monthlyProductId),
              ),
              const SizedBox(height: 10),
              _SelectablePriceOption(
                price: yearPrice ?? t.priceUnavailable,
                subtitle: t.perYear,
                tertiary: effectiveMonthly != null ? t.effectiveMonthlyPrice(effectiveMonthly) : null,
                selected: controller.isSelected(tier.yearlyProductId),
                enabled: !controller.isPurchasing && yearPrice != null,
                onTap: () => controller.selectProduct(tier.yearlyProductId),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SelectablePriceOption extends StatelessWidget {
  const _SelectablePriceOption({
    required this.price,
    required this.subtitle,
    required this.selected,
    required this.onTap,
    this.tertiary,
    this.enabled = true,
  });

  final String price;
  final String subtitle;
  final String? tertiary;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final primary = scheme.primary;
    final line = scheme.outlineVariant.withValues(alpha: 0.55);

    final bg = selected ? primary : scheme.surfaceContainerHigh;
    final fg = selected ? scheme.onPrimary : scheme.onSurface;
    final subFg = selected ? scheme.onPrimary.withValues(alpha: 0.85) : scheme.onSurface.withValues(alpha: 0.55);
    final tertiaryFg = selected ? scheme.onPrimary.withValues(alpha: 0.9) : primary.withValues(alpha: 0.85);

    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Opacity(
        opacity: enabled ? 1 : 0.45,
        child: Container(
          width: 96,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(selected ? 20 : 16),
            border: Border.all(color: selected ? primary : line, width: selected ? 1.2 : 1),
            boxShadow: selected
                ? [BoxShadow(color: primary.withValues(alpha: 0.28), blurRadius: 14, offset: const Offset(0, 8))]
                : null,
          ),
          child: Column(
            children: [
              Text(
                price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: fg, fontWeight: FontWeight.w900, fontSize: 13),
              ),
              Text(
                subtitle,
                style: TextStyle(color: subFg, fontWeight: FontWeight.w700, fontSize: 10),
              ),
              if (tertiary != null) ...[
                const SizedBox(height: 4),
                Text(
                  tertiary!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: tertiaryFg, fontWeight: FontWeight.w800, fontSize: 9),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.title,
    required this.message,
    required this.onRetry,
    this.hint,
  });

  final String title;
  final String message;
  final String? hint;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.storefront_outlined, size: 40, color: scheme.onSurface.withValues(alpha: 0.5)),
            const SizedBox(height: 12),
            Text(title, style: TextStyle(color: scheme.onSurface, fontWeight: FontWeight.w900, fontSize: 18)),
            const SizedBox(height: 6),
            Text(message, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.6)), textAlign: TextAlign.center),
            if (hint != null) ...[
              const SizedBox(height: 10),
              Text(hint!, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.5), fontSize: 12), textAlign: TextAlign.center),
            ],
            const SizedBox(height: 14),
            FilledButton(
              onPressed: onRetry,
              child: Text(t.retry),
            ),
          ],
        ),
      ),
    );
  }
}
