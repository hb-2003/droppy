import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:intl/intl.dart';
import 'package:sendlargefiles/localization/app_locale.dart';
import 'package:sendlargefiles/services/iap/iap_product_ids.dart';
import 'package:sendlargefiles/services/iap/iap_store_state.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

/// Centralized in-app purchase / subscription handling.
class IapService extends GetxService {
  static IapService get to => Get.find<IapService>();

  final InAppPurchase _iap = InAppPurchase.instance;

  final storeState = IapStoreState.initializing.obs;
  final products = <String, ProductDetails>{}.obs;
  final notFoundIds = <String>[].obs;
  final lastError = RxnString();
  final purchasingProductId = RxnString();

  StreamSubscription<List<PurchaseDetails>>? _purchaseSub;
  bool _purchaseListenerReady = false;

  bool get isStoreAvailable =>
      storeState.value != IapStoreState.unavailable &&
      storeState.value != IapStoreState.initializing;

  bool get hasAnyProduct => products.isNotEmpty;

  int get loadedProductCount => products.length;

  int get expectedProductCount => IapProductIds.all.length;

  bool get isLoading =>
      storeState.value == IapStoreState.initializing ||
      storeState.value == IapStoreState.loading;

  Future<IapService> init() async {
    await _ensurePurchaseListener();
    await loadProducts();
    return this;
  }

  Future<void> _ensurePurchaseListener() async {
    if (_purchaseListenerReady) return;
    _purchaseSub?.cancel();
    _purchaseSub = _iap.purchaseStream.listen(
      _onPurchaseUpdate,
      onError: (Object e, StackTrace st) {
        if (kDebugMode) {
          debugPrint('[IapService] purchaseStream error: $e\n$st');
        }
        lastError.value = e.toString();
        purchasingProductId.value = null;
      },
    );
    _purchaseListenerReady = true;
  }

  /// Loads product metadata and localized prices from the store.
  Future<void> loadProducts() async {
    await _ensurePurchaseListener();
    storeState.value = IapStoreState.loading;
    lastError.value = null;
    notFoundIds.clear();

    try {
      final available = await _iap.isAvailable();
      if (!available) {
        storeState.value = IapStoreState.unavailable;
        lastError.value = 'In-app purchases are not available on this device.';
        if (kDebugMode) debugPrint('[IapService] isAvailable=false');
        return;
      }

      ProductDetailsResponse? response;
      Object? lastException;

      for (var attempt = 0; attempt < 3; attempt++) {
        if (attempt > 0) {
          await Future<void>.delayed(Duration(seconds: 1 + attempt));
        }
        try {
          response = await _iap.queryProductDetails(IapProductIds.all);
          if (kDebugMode) {
            debugPrint(
              '[IapService] query attempt ${attempt + 1}: '
              'found=${response.productDetails.length} '
              'notFound=${response.notFoundIDs} '
              'error=${response.error?.message}',
            );
          }
          if (response.error == null && response.productDetails.isNotEmpty) {
            break;
          }
        } catch (e, st) {
          lastException = e;
          if (kDebugMode) debugPrint('[IapService] query exception: $e\n$st');
        }
      }

      if (response == null) {
        storeState.value = IapStoreState.failed;
        lastError.value = lastException?.toString() ?? 'Could not query the App Store.';
        return;
      }

      if (response.error != null) {
        lastError.value = response.error!.message;
      }

      products.assignAll({
        for (final p in response.productDetails) p.id: p,
      });
      notFoundIds.assignAll(response.notFoundIDs);

      if (products.length == IapProductIds.all.length) {
        storeState.value = IapStoreState.ready;
      } else if (products.isNotEmpty) {
        storeState.value = IapStoreState.partial;
        if (lastError.value == null && notFoundIds.isNotEmpty) {
          lastError.value = 'Missing: ${notFoundIds.join(', ')}';
        }
      } else {
        storeState.value = IapStoreState.failed;
        if (lastError.value == null) {
          lastError.value = notFoundIds.isEmpty
              ? 'No subscription products returned from the store.'
              : 'Products not found: ${notFoundIds.join(', ')}';
        }
      }
    } catch (e, st) {
      storeState.value = IapStoreState.failed;
      lastError.value = e.toString();
      if (kDebugMode) debugPrint('[IapService] loadProducts failed: $e\n$st');
    }
  }

  ProductDetails? product(String productId) => products[productId];

  String? priceLabel(String productId) => products[productId]?.price;

  /// Yearly price divided by 12, formatted in the product currency.
  String? effectiveMonthlyFromYearly(String yearlyProductId) {
    final yearly = products[yearlyProductId];
    if (yearly == null || yearly.rawPrice <= 0) return null;
    final perMonth = yearly.rawPrice / 12;
    final format = NumberFormat.simpleCurrency(name: yearly.currencyCode);
    return format.format(perMonth);
  }

  Future<void> buy(String productId) async {
    final t = appL10n();
    if (purchasingProductId.value != null) {
      AppSnack.info(t.snackProcessing, t.snackPleaseWait);
      return;
    }

    if (!isStoreAvailable) {
      AppSnack.error(t.snackStoreUnavailable, t.snackStoreUnavailableBody);
      return;
    }

    final details = products[productId];
    if (details == null) {
      AppSnack.error(t.snackError, t.snackProductNotLoaded);
      await loadProducts();
      return;
    }

    purchasingProductId.value = productId;
    try {
      final param = PurchaseParam(productDetails: details);
      final started = await _iap.buyNonConsumable(purchaseParam: param);
      if (!started) {
        purchasingProductId.value = null;
        AppSnack.error(t.snackPurchaseError, t.snackPurchaseFailed);
      }
    } catch (e) {
      purchasingProductId.value = null;
      await AppSnack.showDynamic(
        t.snackPurchaseError,
        e.toString(),
        type: AppSnackType.error,
      );
    }
  }

  Future<void> restorePurchases() async {
    final t = appL10n();
    if (!isStoreAvailable) {
      AppSnack.error(t.snackStoreUnavailable, t.snackStoreUnavailableBody);
      return;
    }
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

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) {
    final t = appL10n();
    for (final purchase in purchases) {
      if (kDebugMode) {
        debugPrint(
          '[IapService] purchase ${purchase.productID} '
          'status=${purchase.status} pendingComplete=${purchase.pendingCompletePurchase}',
        );
      }

      switch (purchase.status) {
        case PurchaseStatus.pending:
          AppSnack.info(t.snackProcessing, t.snackPleaseWait);
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          purchasingProductId.value = null;
          AppSnack.success(t.snackSuccess, t.snackPurchaseCompleted);
          if (purchase.pendingCompletePurchase) {
            unawaited(_iap.completePurchase(purchase));
          }
          break;
        case PurchaseStatus.error:
          purchasingProductId.value = null;
          final msg = purchase.error?.message ?? t.snackPurchaseFailed;
          AppSnack.showDynamic(t.snackPurchaseError, msg, type: AppSnackType.error);
          if (purchase.pendingCompletePurchase) {
            unawaited(_iap.completePurchase(purchase));
          }
          break;
        case PurchaseStatus.canceled:
          purchasingProductId.value = null;
          AppSnack.info(t.snackCanceled, t.snackPurchaseCanceled);
          break;
      }
    }
  }

  @override
  void onClose() {
    _purchaseSub?.cancel();
    super.onClose();
  }
}
