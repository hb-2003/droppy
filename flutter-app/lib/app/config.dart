/// App runtime defaults (non-secret).
///
/// Public site origin (upload page), not the `/admin` panel.
abstract final class AppConfigDefaults {
  AppConfigDefaults._();

  // 10.0.2.2 is the Android emulator's alias for the host machine's localhost.
  static const String apiBaseUrl = 'http://10.0.2.2:8000/';
}

