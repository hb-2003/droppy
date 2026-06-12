import 'dart:async';

import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/services/iap/iap_product_ids.dart';
import 'package:sendlargefiles/services/iap/iap_service.dart';
import 'package:sendlargefiles/services/iap/iap_store_state.dart';
import 'package:url_launcher/url_launcher.dart';

class PlansController extends GetxController {
  IapService get _iap => IapService.to;

  final selectedProductId = RxnString(IapProductIds.adsMonthly);

  @override
  void onInit() {
    super.onInit();
    ever(_iap.products, (_) => _syncDefaultSelection());
    unawaited(refreshStore());
  }

  void _syncDefaultSelection() {
    final current = selectedProductId.value;
    if (current != null && priceFor(current) != null) return;

    for (final id in IapProductIds.all) {
      if (priceFor(id) != null) {
        selectedProductId.value = id;
        return;
      }
    }
  }

  Rx<IapStoreState> get storeState => _iap.storeState;

  bool get loading => _iap.isLoading;

  bool get isPurchasing => _iap.purchasingProductId.value != null;

  String? get lastError => _iap.lastError.value;

  int get loadedCount => _iap.loadedProductCount;

  int get expectedCount => _iap.expectedProductCount;

  Future<void> refreshStore() => _iap.loadProducts();

  Future<void> buy(String productId) => _iap.buy(productId);

  void selectProduct(String productId) {
    if (priceFor(productId) == null) return;
    selectedProductId.value = productId;
  }

  bool isSelected(String productId) => selectedProductId.value == productId;

  bool get canContinue =>
      !isPurchasing &&
      selectedProductId.value != null &&
      priceFor(selectedProductId.value!) != null;

  Future<void> continuePurchase() async {
    final id = selectedProductId.value;
    if (id == null) return;
    await buy(id);
  }

  Future<void> restore() => _iap.restorePurchases();

  String? priceFor(String productId) => _iap.priceLabel(productId);

  String? effectiveMonthlyForYearly(String yearlyProductId) =>
      _iap.effectiveMonthlyFromYearly(yearlyProductId);

  Future<void> openPrivacy() => _openPath('privacy');

  Future<void> openTerms() => _openPath('terms');

  Future<void> _openPath(String path) async {
    final uri = Uri.tryParse(resolveBaseUrl());
    if (uri == null) return;
    await launchUrl(uri.replace(path: '/$path'), mode: LaunchMode.externalApplication);
  }
}
