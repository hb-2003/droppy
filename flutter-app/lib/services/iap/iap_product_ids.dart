/// App Store / Play Store subscription product identifiers.
/// Must match App Store Connect exactly (case-sensitive).
abstract final class IapProductIds {
  static const adsMonthly = 'com_sharelargefilesfree_subs_ads_monthly';
  static const adsYearly = 'com_sharelargefilesfree_subs_ads_yearly';
  static const proMonthly = 'com_sharelargefilesfree_subs_pro_monthly';
  static const proYearly = 'com_sharelargefilesfree_subs_pro_yearly';
  static const premiumMonthly = 'com_sharelargefilesfree_subs_premium_monthly';
  static const premiumYearly = 'com_sharelargefilesfree_subs_premium_yearly';

  static const Set<String> all = {
    adsMonthly,
    adsYearly,
    proMonthly,
    proYearly,
    premiumMonthly,
    premiumYearly,
  };
}

/// UI grouping for subscription tiers.
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

const kIapPlanTiers = <IapPlanTier>[
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
