import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

/// iOS: App Store Connect → "All Plans" subscription group.
abstract final class IapProductIds {
  // ── Android (Google Play) ─────────────────────────────────────────────────

  static const _androidAdsMonthly = 'remove_ads';
  static const _androidAdsYearly = 'remove_ads_yearly';
  static const _androidProMonthly = 'twenty_gb';
  static const _androidProYearly = 'twenty_gb_yearly';
  static const _androidPremiumMonthly = 'hundred_gb';
  static const _androidPremiumYearly = 'hundred_gb_yearly';

  // ── iOS (App Store Connect) ────────────────────────────────────────────────

  static const _iosAdsMonthly = 'com_sharelargefilesfree_allplans_ads_monthly';
  static const _iosAdsYearly = 'com_sharelargefilesfree_allplans_ads_yearly';
  static const _iosProMonthly = 'com_sharelargefilesfree_allplans_pro_monthly';
  static const _iosProYearly = 'com_sharelargefilesfree_allplans_pro_yearly';
  static const _iosPremiumMonthly =
      'com_sharelargefilesfree_allplans_premium_monthly';
  static const _iosPremiumYearly =
      'com_sharelargefilesfree_allplans_premium_yearly';

  static bool get _isAndroid => !kIsWeb && Platform.isAndroid;

  static String get adsMonthly =>
      _isAndroid ? _androidAdsMonthly : _iosAdsMonthly;

  static String get adsYearly => _isAndroid ? _androidAdsYearly : _iosAdsYearly;

  static String get proMonthly =>
      _isAndroid ? _androidProMonthly : _iosProMonthly;

  static String get proYearly => _isAndroid ? _androidProYearly : _iosProYearly;

  static String get premiumMonthly =>
      _isAndroid ? _androidPremiumMonthly : _iosPremiumMonthly;

  static String get premiumYearly =>
      _isAndroid ? _androidPremiumYearly : _iosPremiumYearly;

  static Set<String> get all => {
        adsMonthly,
        adsYearly,
        proMonthly,
        proYearly,
        premiumMonthly,
        premiumYearly,
      };
}

/// UI grouping for subscription tiers (IDs resolved per platform at runtime).
class IapPlanTier {
  const IapPlanTier({
    required this.id,
    required this.monthlyProductId,
    required this.yearlyProductId,
  });

  final String id;
  final String monthlyProductId;
  final String yearlyProductId;
}

List<IapPlanTier> get kIapPlanTiers => [
      IapPlanTier(
        id: 'ads',
        monthlyProductId: IapProductIds.adsMonthly,
        yearlyProductId: IapProductIds.adsYearly,
      ),
      IapPlanTier(
        id: 'pro',
        monthlyProductId: IapProductIds.proMonthly,
        yearlyProductId: IapProductIds.proYearly,
      ),
      IapPlanTier(
        id: 'premium',
        monthlyProductId: IapProductIds.premiumMonthly,
        yearlyProductId: IapProductIds.premiumYearly,
      ),
    ];
