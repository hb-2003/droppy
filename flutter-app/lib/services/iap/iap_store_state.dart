enum IapStoreState {
  /// Service created; purchase listener not ready yet.
  initializing,

  /// Querying App Store / Play Store for product details.
  loading,

  /// StoreKit / Billing unavailable on this device.
  unavailable,

  /// All configured products were returned with prices.
  ready,

  /// Some products loaded (still usable).
  partial,

  /// No products or repeated query failures.
  failed,
}
