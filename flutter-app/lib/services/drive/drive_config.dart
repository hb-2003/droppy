/// Google Drive OAuth — configure in Google Cloud Console (Drive API enabled).
///
/// Android: create an OAuth **Web** client and pass its ID via
/// `--dart-define=GOOGLE_WEB_CLIENT_ID=....apps.googleusercontent.com`
///
/// iOS: create an OAuth **iOS** client (bundle ID) and pass
/// `--dart-define=GOOGLE_IOS_CLIENT_ID=....apps.googleusercontent.com`
/// Also add the reversed client ID as a URL scheme in Info.plist.
class DriveConfig {
  DriveConfig._();

  static const String appFolderName = 'Me Transfer';

  static const String webClientId = String.fromEnvironment(
    'GOOGLE_WEB_CLIENT_ID',
    defaultValue: '',
  );

  static const String iosClientId = String.fromEnvironment(
    'GOOGLE_IOS_CLIENT_ID',
    defaultValue: '',
  );

  static bool get isConfigured =>
      webClientId.isNotEmpty || iosClientId.isNotEmpty;
}
