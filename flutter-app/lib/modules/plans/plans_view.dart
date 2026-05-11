import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:sendlargefiles/modules/plans/plans_controller.dart';
import 'package:sendlargefiles/widgets/app_top_bar.dart';

class PlansView extends GetView<PlansController> {
  const PlansView({super.key});

  @override
  Widget build(BuildContext context) {
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
              title: 'Plans',
              subtitle: 'Upgrade to remove ads and send bigger files.',
            ),
            Expanded(
              child: Obx(() {
                if (controller.loading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!controller.available.value) {
                  return _EmptyState(
                    title: 'Store unavailable',
                    message: 'In-app purchases are not available right now.',
                    onRetry: controller.initStore,
                  );
                }

                return ListView(
                  padding: const EdgeInsets.fromLTRB(20, 6, 20, 20),
                  children: [
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
                              'Currently you are using our free version with ads',
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
                      title: 'Ads Plan',
                      bullets: const ['Access to ads free app', 'Remove all ads'],
                      monthlyId: 'com_sharelargefilesfree_subs_ads_monthly',
                      yearlyId: 'com_sharelargefilesfree_subs_ads_yearly',
                      onBuy: controller.buy,
                      products: controller.products,
                    ),
                    const SizedBox(height: 14),
                    _PlanCard(
                      title: 'Pro Plan',
                      bullets: const ['Send files up to 20GB', 'Fast Upload'],
                      monthlyId: 'com_sharelargefilesfree_subs_pro_monthly',
                      yearlyId: 'com_sharelargefilesfree_subs_pro_yearly',
                      onBuy: controller.buy,
                      products: controller.products,
                    ),
                    const SizedBox(height: 14),
                    _PlanCard(
                      title: 'Premium Plan',
                      bullets: const ['Send files up to 100GB', 'Super fast upload'],
                      monthlyId: 'com_sharelargefilesfree_subs_premium_monthly',
                      yearlyId: 'com_sharelargefilesfree_subs_premium_yearly',
                      onBuy: controller.buy,
                      products: controller.products,
                      highlight: true,
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: controller.restore,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: scheme.onSurface.withValues(alpha: 0.8),
                              side: BorderSide(color: line),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            child: const Text('Restore purchases', style: TextStyle(fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'No trial period — subscription is required to use the additional app functionality. '
                      'You will be charged immediately. You can cancel anytime.',
                      style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.50), fontSize: 11.5, height: 1.4),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({
    required this.title,
    required this.bullets,
    required this.monthlyId,
    required this.yearlyId,
    required this.onBuy,
    required this.products,
    this.highlight = false,
  });

  final String title;
  final List<String> bullets;
  final String monthlyId;
  final String yearlyId;
  final void Function(String productId) onBuy;
  final Map<String, ProductDetails> products;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final line = scheme.outlineVariant.withValues(alpha: 0.55);
    final card = scheme.surfaceContainerHighest;
    final primary = scheme.primary;

    final monthly = products[monthlyId];
    final yearly = products[yearlyId];

    final yearPrice = yearly?.price;
    final monthPrice = monthly?.price;

    final effectiveMonthly = _effectiveMonthly(yearly);

    return Container(
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: highlight ? primary.withValues(alpha: 0.55) : line, width: highlight ? 1.4 : 1),
        boxShadow: highlight
            ? [
                BoxShadow(
                  color: primary.withValues(alpha: 0.15),
                  blurRadius: 22,
                  offset: const Offset(0, 10),
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
                ...bullets.map((b) => Padding(
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
                    )),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            children: [
              _PriceChip(
                labelTop: monthPrice ?? '—',
                labelBottom: '/ month',
                color: primary,
                onTap: () => onBuy(monthlyId),
              ),
              const SizedBox(height: 10),
              _MiniPrice(
                title: yearPrice ?? '—',
                subtitle: '/ year',
                tertiary: effectiveMonthly,
                onTap: () => onBuy(yearlyId),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String? _effectiveMonthly(ProductDetails? yearly) {
    if (yearly == null) return null;
    final raw = yearly.rawPrice;
    if (raw <= 0) return null;
    final perMonth = raw / 12.0;
    return '\$${perMonth.toStringAsFixed(2)}/month';
  }
}

class _PriceChip extends StatelessWidget {
  const _PriceChip({
    required this.labelTop,
    required this.labelBottom,
    required this.color,
    required this.onTap,
  });

  final String labelTop;
  final String labelBottom;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ink = Theme.of(context).colorScheme.onPrimary;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 92,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: color.withValues(alpha: 0.25), blurRadius: 14, offset: const Offset(0, 8))],
        ),
        child: Column(
          children: [
            Text(labelTop, style: TextStyle(color: ink, fontWeight: FontWeight.w900, fontSize: 14)),
            Text(labelBottom, style: TextStyle(color: ink.withValues(alpha: 0.85), fontWeight: FontWeight.w700, fontSize: 11)),
          ],
        ),
      ),
    );
  }
}

class _MiniPrice extends StatelessWidget {
  const _MiniPrice({required this.title, required this.subtitle, required this.tertiary, required this.onTap});
  final String title;
  final String subtitle;
  final String? tertiary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final line = scheme.outlineVariant.withValues(alpha: 0.55);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 92,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: line),
        ),
        child: Column(
          children: [
            Text(title, style: TextStyle(color: scheme.onSurface, fontWeight: FontWeight.w900, fontSize: 12)),
            Text(subtitle, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.60), fontWeight: FontWeight.w700, fontSize: 10)),
            if (tertiary != null) ...[
              const SizedBox(height: 4),
              Text(tertiary!, style: TextStyle(color: scheme.primary.withValues(alpha: 0.9), fontWeight: FontWeight.w800, fontSize: 10)),
            ],
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.title, required this.message, required this.onRetry});
  final String title;
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 14),
            FilledButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
