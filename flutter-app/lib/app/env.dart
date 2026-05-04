/// Compile-time server base URL, e.g.
/// `flutter run --dart-define=API_BASE_URL=https://files.example.com/`
/// Use the **public** site origin (upload page), not `/admin`.
class Env {
  Env._();

  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: '',
  );
}
