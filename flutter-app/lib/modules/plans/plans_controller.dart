import 'dart:async';

import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

class PlansController extends GetxController {
  static const productIds = <String>{
    'com_sharelargefilesfree_subs_ads_monthly',
    'com_sharelargefilesfree_subs_ads_yearly',
    'com_sharelargefilesfree_subs_pro_monthly',
    'com_sharelargefilesfree_subs_pro_yearly',
    'com_sharelargefilesfree_subs_premium_monthly',
    'com_sharelargefilesfree_subs_premium_yearly',
  };

  final loading = true.obs;
  final available = false.obs;
  final products = <String, ProductDetails>{}.obs;

  final _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _sub;

  @override
  void onInit() {
    super.onInit();
    _sub = _iap.purchaseStream.listen(_onPurchaseUpdate, onError: (_) {});
    initStore();
  }

  Future<void> initStore() async {
    loading.value = true;
    try {
      final ok = await _iap.isAvailable();
      available.value = ok;
      if (!ok) {
        loading.value = false;
        return;
      }

      final res = await _iap.queryProductDetails(productIds);
      products.assignAll({for (final p in res.productDetails) p.id: p});

      if (res.error != null) {
        await AppSnack.showDynamic(
          appL10n().snackStoreError,
          res.error!.message,
          type: AppSnackType.error,
        );
      }
      if (res.notFoundIDs.isNotEmpty) {
        await AppSnack.showDynamic(
          appL10n().snackMissingProducts,
          res.notFoundIDs.join(', '),
        );
      }
    } catch (e) {
      await AppSnack.showDynamic(
        appL10n().snackStoreError,
        e.toString(),
        type: AppSnackType.error,
      );
    } finally {
      loading.value = false;
    }
  }

  Future<void> buy(String productId) async {
    final t = appL10n();
    if (!available.value) {
      AppSnack.error(t.snackStoreUnavailable, t.snackStoreUnavailableBody);
      return;
    }
    final p = products[productId];
    if (p == null) {
      AppSnack.error(t.snackError, t.snackProductNotLoaded);
      return;
    }
    final param = PurchaseParam(productDetails: p);
    await _iap.buyNonConsumable(purchaseParam: param);
  }

  Future<void> restore() async {
    final t = appL10n();
    try {
      await _iap.restorePurchases();
      AppSnack.success(t.snackRestoreStarted, t.snackRestoreStartedBody);
    } catch (e) {
      await AppSnack.showDynamic(
        t.snackRestoreFailed,
        e.toString(),
        type: AppSnackType.error,
      );
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> list) {
    final t = appL10n();
    for (final p in list) {
      switch (p.status) {
        case PurchaseStatus.pending:
          AppSnack.info(t.snackProcessing, t.snackPleaseWait);
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          AppSnack.success(t.snackSuccess, t.snackPurchaseCompleted);
          if (p.pendingCompletePurchase) {
            InAppPurchase.instance.completePurchase(p);
          }
          break;
        case PurchaseStatus.error:
          final msg = p.error?.message ?? t.snackPurchaseFailed;
          AppSnack.showDynamic(t.snackPurchaseError, msg, type: AppSnackType.error);
          if (p.pendingCompletePurchase) {
            InAppPurchase.instance.completePurchase(p);
          }
          break;
        case PurchaseStatus.canceled:
          AppSnack.info(t.snackCanceled, t.snackPurchaseCanceled);
          break;
      }
    }
  }

  @override
  void onClose() {
    _sub?.cancel();
    super.onClose();
  }
}
