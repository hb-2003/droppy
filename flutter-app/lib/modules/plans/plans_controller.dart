import 'dart:async';

import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
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
        AppSnack.error('Store error', res.error!.message);
      }
      if (res.notFoundIDs.isNotEmpty) {
        AppSnack.info('Missing products', res.notFoundIDs.join(', '));
      }
    } catch (e) {
      AppSnack.error('Store error', e.toString());
    } finally {
      loading.value = false;
    }
  }

  Future<void> buy(String productId) async {
    if (!available.value) {
      AppSnack.error('Store unavailable', 'In-app purchases are not available on this device.');
      return;
    }
    final p = products[productId];
    if (p == null) {
      AppSnack.error('Not found', 'Product is not loaded yet.');
      return;
    }
    final param = PurchaseParam(productDetails: p);
    await _iap.buyNonConsumable(purchaseParam: param);
  }

  Future<void> restore() async {
    try {
      await _iap.restorePurchases();
      AppSnack.success('Restore started', 'We are checking your purchases.');
    } catch (e) {
      AppSnack.error('Restore failed', e.toString());
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> list) {
    for (final p in list) {
      switch (p.status) {
        case PurchaseStatus.pending:
          AppSnack.info('Processing', 'Please wait…');
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          AppSnack.success('Success', 'Purchase completed.');
          if (p.pendingCompletePurchase) {
            InAppPurchase.instance.completePurchase(p);
          }
          break;
        case PurchaseStatus.error:
          final msg = p.error?.message ?? 'Purchase failed.';
          AppSnack.error('Purchase error', msg);
          if (p.pendingCompletePurchase) {
            InAppPurchase.instance.completePurchase(p);
          }
          break;
        case PurchaseStatus.canceled:
          AppSnack.info('Canceled', 'Purchase canceled.');
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

