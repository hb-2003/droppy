// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ದೊಡ್ಡ ವೀಡಿಯೊ ಫೈಲ್‌ಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get heroAccent => 'ತಕ್ಷಣ.';

  @override
  String get heroTitle => 'ಭಾರೀ ಫೈಲ್‌ಗಳನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get splashLoading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get navSend => 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್';

  @override
  String get navHome => 'ಮನೆ';

  @override
  String get navHistory => 'ಇತಿಹಾಸ';

  @override
  String get navReceive => 'ಸ್ವೀಕರಿಸಿ';

  @override
  String get navPlans => 'ಯೋಜನೆಗಳು';

  @override
  String get navDownload => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get navSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get modeLink => 'ಲಿಂಕ್ ಪಡೆಯಿರಿ';

  @override
  String get modeEmail => 'ಇಮೇಲ್ ಮೂಲಕ ಕಳುಹಿಸಿ';

  @override
  String get modeWifi => 'Wi‑Fi';

  @override
  String get modePc => 'PC';

  @override
  String get modeNearby => 'Nearby';

  @override
  String get nearbyTitle => 'Nearby share';

  @override
  String get nearbySubtitle =>
      'Send files to a device next to you on the same Wi‑Fi — no internet upload needed.';

  @override
  String get nearbySend => 'Send';

  @override
  String get nearbyReceive => 'Receive';

  @override
  String get nearbySendDesc =>
      'Pick files and wait for a nearby device to connect';

  @override
  String get nearbyReceiveDesc =>
      'Find nearby devices and download their files';

  @override
  String get nearbyPickFiles => 'Choose files to send';

  @override
  String get nearbyStartSharing => 'Start sharing nearby';

  @override
  String get nearbyWaitingForReceiver => 'Waiting for nearby device…';

  @override
  String get nearbyScanning => 'Looking for nearby devices…';

  @override
  String get nearbyNoDevices => 'No nearby devices found';

  @override
  String get nearbyNoDevicesHint =>
      'Ask the sender to tap Send, choose files, and start sharing on the same Wi‑Fi.';

  @override
  String nearbyFilesReady(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files ready',
      one: '1 file ready',
    );
    return '$_temp0';
  }

  @override
  String get nearbyDownloadAll => 'Download all';

  @override
  String get nearbySharingActive => 'Ready to share';

  @override
  String get nearbyStopSharing => 'Stop sharing';

  @override
  String get nearbyConnectFailed =>
      'Could not connect to this device. Try again.';

  @override
  String get nearbyComplete => 'Transfer complete';

  @override
  String get nearbyOpen => 'Share nearby';

  @override
  String get nearbyOpenDesc => 'Auto-find devices — no QR or link needed';

  @override
  String get driveTitle => 'Google Drive';

  @override
  String get driveSubtitle =>
      'Back up files to your Drive or download files you saved from this app.';

  @override
  String get driveBackup => 'Back up to Drive';

  @override
  String get driveBackupDesc =>
      'Pick files on this device and upload to your Google Drive';

  @override
  String get driveDownload => 'Download from Drive';

  @override
  String get driveDownloadDesc =>
      'Download files you previously backed up with this app';

  @override
  String get drivePickFilesHint =>
      'Choose one or more files to back up to Google Drive.';

  @override
  String get driveStartBackup => 'Back up now';

  @override
  String get driveStartDownload => 'Download to device';

  @override
  String get driveYourFiles => 'Your backed-up files';

  @override
  String get driveNoFiles => 'No files in Drive yet. Back up some files first.';

  @override
  String get driveBackingUp => 'Backing up…';

  @override
  String get driveDownloading => 'Downloading…';

  @override
  String driveUploadingFile(int current, int total) {
    return 'Uploading file $current of $total';
  }

  @override
  String get driveBackupDone => 'Backed up';

  @override
  String get driveBackupDoneBody => 'Your files are saved to Google Drive.';

  @override
  String get driveUploadFailed =>
      'Could not upload to Google Drive. Try again.';

  @override
  String get driveListFailed => 'Could not load files from Google Drive.';

  @override
  String get driveDownloadFailed => 'Could not download from Google Drive.';

  @override
  String get driveComplete => 'Done';

  @override
  String get driveDone => 'Back';

  @override
  String get driveSignOut => 'Sign out of Google';

  @override
  String driveSignedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get driveSetupTitle => 'Google Drive not configured';

  @override
  String get driveSetupBody =>
      'Add Google OAuth client IDs when building the app (see drive_config.dart).';

  @override
  String get driveOpen => 'Google Drive';

  @override
  String get driveOpenDesc => 'Back up or download your files';

  @override
  String get pcShareHint =>
      'Share files with a computer on the same Wi‑Fi network.';

  @override
  String get pcStartSharing => 'Share with PC';

  @override
  String get pcShareReady => 'Open on your computer';

  @override
  String get pcShareReadyBody =>
      'Open the link below in Chrome, Edge, or Safari on your computer to download the files.';

  @override
  String get pcOpenInBrowser => 'Scan the QR or open the link on your computer';

  @override
  String get pcBrowserUrlLabel => 'Computer link';

  @override
  String get snackPcNoNetwork => 'No network connection';

  @override
  String get snackPcShareFailed => 'Could not start PC sharing';

  @override
  String get snackPcShareFailedBody => 'Connect to Wi‑Fi and try again.';

  @override
  String get snackPcReceiveFailed => 'Could not start PC receive';

  @override
  String get snackPcReceiveFailedBody => 'Connect to Wi‑Fi and try again.';

  @override
  String get receivePcTitle => 'Receive from computer';

  @override
  String get pcReceiveStart => 'Start receiving';

  @override
  String get pcReceiveStop => 'Stop receiving';

  @override
  String get pcReceiveReady => 'Waiting for uploads';

  @override
  String get pcReceiveHint =>
      'On your computer, open the link below and upload files.';

  @override
  String pcReceivedFiles(int count) {
    return '$count files received';
  }

  @override
  String get receivePcHowTo1 => 'Start receiving on your phone';

  @override
  String get receivePcHowTo1Body =>
      'Tap Start receiving, then keep this screen open.';

  @override
  String get receivePcHowTo2 => 'Open the link on your computer';

  @override
  String get receivePcHowTo2Body =>
      'Use the QR code or copy the http:// address into your browser.';

  @override
  String get receivePcHowTo3 => 'Upload from the browser';

  @override
  String get receivePcHowTo3Body =>
      'Files are saved to Downloads on this phone.';

  @override
  String get historyPcSent => 'PC';

  @override
  String get historyPcReceived => 'From PC';

  @override
  String get historyPcSessionEnded =>
      'This PC session has ended. Share again from Send to transfer files.';

  @override
  String get historyPcReceivedNote =>
      'Files were saved to Downloads on this device.';

  @override
  String get wifiShareHint =>
      'Share files directly with a nearby device on the same Wi‑Fi network.';

  @override
  String get wifiSameNetworkHint =>
      'Both devices must be on the same Wi‑Fi network.';

  @override
  String get wifiStartSharing => 'Start sharing';

  @override
  String get wifiShareReady => 'Ready to receive';

  @override
  String get wifiShareReadyBody =>
      'Ask the receiver to scan the QR code or open the address below on the same Wi‑Fi network.';

  @override
  String get snackWifiNoNetwork => 'No Wi‑Fi connection';

  @override
  String get snackWifiNoNetworkBody =>
      'Connect to Wi‑Fi to share files locally.';

  @override
  String get snackWifiShareFailed => 'Could not start Wi‑Fi sharing';

  @override
  String get snackWifiShareFailedBody =>
      'Check your Wi‑Fi connection and try again.';

  @override
  String get receiveWifiTitle => 'Receive via Wi‑Fi';

  @override
  String get receiveWifiUrlLabel => 'Sender address';

  @override
  String get receiveWifiUrlHint => 'http://192.168.1.5:12345/wifi/...';

  @override
  String get receiveWifiFind => 'Find files';

  @override
  String get receiveWifiScanQr => 'Scan Wi‑Fi QR';

  @override
  String get receiveWifiInvalidUrl =>
      'This is not a valid Wi‑Fi share address.';

  @override
  String get receiveWifiConnectFailed =>
      'Could not reach the sender. Make sure both devices are on the same Wi‑Fi.';

  @override
  String get receiveWifiHowTo1 => 'Start sharing on the sender';

  @override
  String get receiveWifiHowTo1Body =>
      'On Send, choose Wi‑Fi and tap Start sharing.';

  @override
  String get receiveWifiHowTo2 => 'Scan or paste the address';

  @override
  String get receiveWifiHowTo2Body =>
      'Use the scanner or paste the http:// address from the sender.';

  @override
  String get receiveWifiHowTo3 => 'Download the files';

  @override
  String get receiveWifiHowTo3Body =>
      'Files are saved to your Downloads folder.';

  @override
  String get wifiDownloadAll => 'Download all';

  @override
  String wifiDownloadedFiles(int count) {
    return 'Saved $count files to Downloads';
  }

  @override
  String wifiDownloadingProgress(int current, int total) {
    return 'Downloading $current of $total…';
  }

  @override
  String get historyWifiSent => 'Wi‑Fi';

  @override
  String get historyWifiReceived => 'Received';

  @override
  String get historyWifiSessionEnded =>
      'This Wi‑Fi session has ended. Start a new share on Send to transfer again.';

  @override
  String get historyWifiReceivedNote =>
      'Files were saved to Downloads on this device.';

  @override
  String get pickFiles => 'ಫೈಲ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get pickFolder => 'ಫೋಲ್ಡರ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get emailFrom => 'ನಿಮ್ಮ ಇಮೇಲ್';

  @override
  String get mailFromUsesAccount =>
      'ನಿಮ್ಮ ಸೈನ್ ಇನ್ ಮಾಡಿದ ಇಮೇಲ್ ಅನ್ನು ಬಳಸುತ್ತದೆ.';

  @override
  String get recipientEmailsHelper =>
      'ಬಹು ಸ್ವೀಕೃತದಾರರು: ಅಲ್ಪವಿರಾಮಗಳು, ಅರ್ಧವಿರಾಮ ಚಿಹ್ನೆಗಳು ಅಥವಾ ಸ್ಪೇಸ್‌ಗಳೊಂದಿಗೆ ಪ್ರತ್ಯೇಕಿಸಿ.';

  @override
  String get emailTo => 'ಸ್ವೀಕರಿಸುವವರ ಇಮೇಲ್';

  @override
  String get messageOptional => 'ಸಂದೇಶ (ಐಚ್ಛಿಕ)';

  @override
  String get passwordOptional => 'ಪಾಸ್ವರ್ಡ್ (ಐಚ್ಛಿಕ)';

  @override
  String get destructAfterDownload => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ನಂತರ ಅಳಿಸಿ';

  @override
  String get destructNo => 'ಲಭ್ಯವಿರಲಿ';

  @override
  String get sendButton => 'ಕಳುಹಿಸು';

  @override
  String get uploading => 'ಅಪ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get uploadComplete => 'ಮುಗಿದಿದೆ';

  @override
  String get shareLinkTitle => 'ನಿಮ್ಮ ಲಿಂಕ್';

  @override
  String get copyLink => 'ಲಿಂಕ್ ನಕಲಿಸಿ';

  @override
  String get share => 'ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareQrCode => 'QR ಕೋಡ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get uploadMore => 'ಇನ್ನೊಂದನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get emailSentTitle => 'ಇಮೇಲ್‌ಗಳನ್ನು ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String get verifyEmailTitle => 'ನಿಮ್ಮ ಇಮೇಲ್ ಪರಿಶೀಲಿಸಿ';

  @override
  String get verifyCodeHint => 'ನಿಮ್ಮ ಇಮೇಲ್‌ನಿಂದ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get verifySubmit => 'ಪರಿಶೀಲಿಸಿ';

  @override
  String get verifyResendCode => 'ಕೋಡ್ ಅನ್ನು ಮರುಕಳುಹಿಸಿ';

  @override
  String get verifyCodeSent =>
      'ನಿಮ್ಮ ಇಮೇಲ್‌ಗೆ ಹೊಸ ಪರಿಶೀಲನಾ ಕೋಡ್ ಅನ್ನು ಕಳುಹಿಸಲಾಗಿದೆ.';

  @override
  String get verifyEmailSmtpWarningTitle => 'ಪರಿಶೀಲನೆ ಇಮೇಲ್ ಕಳುಹಿಸದೇ ಇರಬಹುದು';

  @override
  String get verifyEmailSmtpWarningBody =>
      'ಸರ್ವರ್ ವಿತರಣೆಯನ್ನು ಖಚಿತಪಡಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ (ಸಾಮಾನ್ಯವಾಗಿ SMTP ಅನ್ನು ತಪ್ಪಾಗಿ ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗಿದೆ). ನಿರ್ವಾಹಕ ಫಲಕದಲ್ಲಿ ಮೇಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಲು ನಿಮ್ಮ ಸೈಟ್ ನಿರ್ವಾಹಕರನ್ನು ಕೇಳಿ, ನಂತರ ಕೋಡ್ ಅನ್ನು ಮರುಕಳುಹಿಸಿ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'ಅದು ಬರದಿದ್ದರೆ: ಜಂಕ್/ಸ್ಪ್ಯಾಮ್ ಮತ್ತು ಪ್ರಚಾರಗಳನ್ನು ಪರಿಶೀಲಿಸಿ, ಒಂದು ನಿಮಿಷ ನಿರೀಕ್ಷಿಸಿ, $email ಯಾವುದೇ ಮುದ್ರಣದೋಷಗಳಿಲ್ಲ ಎಂದು ಖಚಿತಪಡಿಸಿ, ನಂತರ ಮರುಕಳುಹಿಸಿ ಟ್ಯಾಪ್ ಮಾಡಿ.';
  }

  @override
  String get loginTitle => 'ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signupHint => 'ನಿಮ್ಮ ಸೈಟ್ ಖಾತೆ ಇಮೇಲ್ ಮತ್ತು ಪಾಸ್‌ವರ್ಡ್ ಬಳಸಿ.';

  @override
  String get emailHint => 'ಇಮೇಲ್';

  @override
  String get passwordHint => 'ಪಾಸ್ವರ್ಡ್';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get signIn => 'ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get downloadIdHint => 'ವರ್ಗಾವಣೆ ID';

  @override
  String get privateIdHint => 'ಖಾಸಗಿ ID (ಐಚ್ಛಿಕ)';

  @override
  String get fetchTransfer => 'ತೆರೆದ ವರ್ಗಾವಣೆ';

  @override
  String get downloadFile => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get unlockDownload => 'ಡೌನ್‌ಲೋಡ್ ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಿ';

  @override
  String get downloadSaved => 'ಡೌನ್‌ಲೋಡ್‌ಗಳಿಗೆ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get errorGeneric => 'ಏನೋ ತಪ್ಪಾಗಿದೆ';

  @override
  String get errorNetwork => 'ನೆಟ್‌ವರ್ಕ್ ದೋಷ';

  @override
  String get errorBadResponse => 'ಅನಿರೀಕ್ಷಿತ ಸರ್ವರ್ ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get termsAccept => 'ನಾನು ನಿಯಮಗಳನ್ನು ಒಪ್ಪುತ್ತೇನೆ';

  @override
  String get settingsApiUrl => 'ಸಾರ್ವಜನಿಕ ಸೈಟ್ URL';

  @override
  String get settingsAccount => 'ಖಾತೆ';

  @override
  String get settingsAppearance => 'ಗೋಚರತೆ';

  @override
  String get settingsTheme => 'ಥೀಮ್';

  @override
  String get themeSystem => 'ವ್ಯವಸ್ಥೆ';

  @override
  String get themeLight => 'ಬೆಳಕು';

  @override
  String get themeDark => 'ಕತ್ತಲು';

  @override
  String get settingsSignedIn => 'ನೀವು ಸೈನ್ ಇನ್ ಆಗಿರುವಿರಿ.';

  @override
  String get settingsSignedOut => 'ನೀವು ಸೈನ್ ಇನ್ ಆಗಿಲ್ಲ.';

  @override
  String get settingsOpenWebsite => 'ವೆಬ್‌ಸೈಟ್ ತೆರೆಯಿರಿ';

  @override
  String get signUp => 'ಸೈನ್ ಅಪ್ ಮಾಡಿ';

  @override
  String get settingsLinks => 'ಲಿಂಕ್‌ಗಳು';

  @override
  String get privacyPolicy => 'ಗೌಪ್ಯತೆ ನೀತಿ';

  @override
  String get termsOfService => 'ಸೇವಾ ನಿಯಮಗಳು';

  @override
  String get about => 'ಬಗ್ಗೆ';

  @override
  String get moreApps => 'ಇನ್ನಷ್ಟು ಅಪ್ಲಿಕೇಶನ್‌ಗಳು';

  @override
  String get settingsLanguage => 'ಭಾಷೆ';

  @override
  String get languageEnglish => 'ಇಂಗ್ಲೀಷ್';

  @override
  String get languageHindi => 'ಹಿಂದಿ';

  @override
  String get logout => 'ಲಾಗ್ ಔಟ್ ಮಾಡಿ';

  @override
  String get deleteAccount => 'ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get deleteAccountConfirmTitle => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಅಳಿಸುವುದೇ?';

  @override
  String get deleteAccountConfirmBody =>
      'ಇದು ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸುತ್ತದೆ ಮತ್ತು ನಿಮ್ಮನ್ನು ಸೈನ್ ಔಟ್ ಮಾಡುತ್ತದೆ. ನಿಮ್ಮ ವರ್ಗಾವಣೆ ಲಿಂಕ್‌ಗಳು ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತಲೇ ಇರುತ್ತವೆ, ಆದರೆ ಅವು ಇನ್ನು ಮುಂದೆ ನಿಮ್ಮ ಇತಿಹಾಸದಲ್ಲಿ ಕಾಣಿಸುವುದಿಲ್ಲ.';

  @override
  String get deleteAccountSuccess => 'ಖಾತೆಯನ್ನು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get deleteAccountSuccessBody => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ತೆಗೆದುಹಾಕಲಾಗಿದೆ.';

  @override
  String get deleteAccountFailed => 'ಖಾತೆಯನ್ನು ಅಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get deleteAccountFailedBody =>
      'ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ.';

  @override
  String get maxFilesReached => 'ಹಲವಾರು ಫೈಲ್‌ಗಳು';

  @override
  String get fileTooLarge => 'ಫೈಲ್ ತುಂಬಾ ದೊಡ್ಡದಾಗಿದೆ';

  @override
  String get ipLimit => 'ಈ ನೆಟ್‌ವರ್ಕ್‌ನಿಂದ ಹಲವಾರು ಅಪ್‌ಲೋಡ್‌ಗಳು';

  @override
  String get fillFields => 'ದಯವಿಟ್ಟು ಅಗತ್ಯವಿರುವ ಕ್ಷೇತ್ರಗಳನ್ನು ಭರ್ತಿ ಮಾಡಿ';

  @override
  String get invalidEmail => 'ಅಮಾನ್ಯ ಇಮೇಲ್';

  @override
  String get maxRecipientsReached => 'ಹಲವಾರು ಸ್ವೀಕರಿಸುವವರು';

  @override
  String get loginRequiredTitle => 'ಸೈನ್ ಇನ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get loginRequiredBody =>
      'ಈ ಸರ್ವರ್‌ಗೆ ಅಪ್‌ಲೋಡ್ ಮಾಡಲು ಅಥವಾ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲು ಖಾತೆಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get settingsSubtitle => 'ಅಪ್ಲಿಕೇಶನ್ ಆದ್ಯತೆಗಳು ಮತ್ತು ಖಾತೆ.';

  @override
  String get dropHeavyFile => 'ಭಾರೀ ಫೈಲ್ ಅನ್ನು ಇಲ್ಲಿ ಬಿಡಿ.';

  @override
  String upToTotal(String max) {
    return 'ಒಟ್ಟು $max ವರೆಗೆ';
  }

  @override
  String get removeAll => 'ಎಲ್ಲವನ್ನೂ ತೆಗೆದುಹಾಕಿ';

  @override
  String get addFiles => 'ಫೈಲ್‌ಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get adding => 'ಸೇರಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get options => 'ಆಯ್ಕೆಗಳು';

  @override
  String get selfDestruct => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ನಂತರ ಸ್ವಯಂ-ನಾಶ';

  @override
  String get expiry => 'ಅವಧಿ ಮುಗಿಯುತ್ತಿದೆ';

  @override
  String get cancelUpload => 'ಅಪ್‌ಲೋಡ್ ರದ್ದುಮಾಡಿ';

  @override
  String get transferReady => 'ವರ್ಗಾವಣೆ ಸಿದ್ಧವಾಗಿದೆ!';

  @override
  String get emailSentReady => 'ಇಮೇಲ್ ಕಳುಹಿಸಲಾಗಿದೆ!';

  @override
  String get shareRecipientHint =>
      'ಈ ಲಿಂಕ್ ಅನ್ನು ನಿಮ್ಮ ಸ್ವೀಕೃತದಾರರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಿ.';

  @override
  String get emailSentBody => 'ನಾವು ನಿಮ್ಮ ಸ್ವೀಕೃತದಾರರಿಗೆ(ರು) ಸೂಚನೆ ನೀಡಿದ್ದೇವೆ.';

  @override
  String get scanQr => 'ವರ್ಗಾವಣೆ ಲಿಂಕ್ ತೆರೆಯಲು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ.';

  @override
  String get shareLinkButton => 'ಲಿಂಕ್ ಅನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get verifyFourDigit =>
      'ನಿಮ್ಮ ಕಳುಹಿಸುವವರ ಇಮೇಲ್‌ಗೆ ಕಳುಹಿಸಲಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get starting => 'ಪ್ರಾರಂಭಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String filesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String mbLeft(String amount) {
    return '$amount MB ಉಳಿದಿದೆ';
  }

  @override
  String get fillField => 'ದಯವಿಟ್ಟು ಈ ಕ್ಷೇತ್ರವನ್ನು ಭರ್ತಿ ಮಾಡಿ.';

  @override
  String get enterValidEmail => 'ಮಾನ್ಯವಾದ ಇಮೇಲ್ ಅನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get message => 'ಸಂದೇಶ';

  @override
  String get recipientEmail => 'ಸ್ವೀಕರಿಸುವವರ ಇಮೇಲ್';

  @override
  String get active => 'ಸಕ್ರಿಯ';

  @override
  String get expired => 'ಅವಧಿ ಮೀರಿದೆ';

  @override
  String get historyTitle => 'ನನ್ನ ವರ್ಗಾವಣೆಗಳು';

  @override
  String get signInToSeeTransfers => 'ನಿಮ್ಮ ವರ್ಗಾವಣೆಗಳನ್ನು ನೋಡಲು ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signInTransfersBody =>
      'ನಿಮ್ಮ ಖಾತೆಗೆ ವರ್ಗಾವಣೆಗಳನ್ನು ಲಿಂಕ್ ಮಾಡಲು ನಾವು ನಿಮ್ಮ ಇಮೇಲ್ ಅನ್ನು ಬಳಸುತ್ತೇವೆ - ಯಾವುದೇ ಪಾಸ್‌ವರ್ಡ್ ಅಗತ್ಯವಿಲ್ಲ.';

  @override
  String get couldNotLoadTransfers => 'ವರ್ಗಾವಣೆಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get retry => 'ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get noTransfersYet => 'ಇನ್ನೂ ಯಾವುದೇ ವರ್ಗಾವಣೆಗಳಿಲ್ಲ';

  @override
  String get noTransfersBody =>
      'ಒಮ್ಮೆ ನೀವು ಫೈಲ್ ಅನ್ನು ಕಳುಹಿಸಿದರೆ, ಅದು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get transferDetails => 'ವರ್ಗಾವಣೆ ವಿವರಗಳು';

  @override
  String get filesSection => 'ಫೈಲ್‌ಗಳು';

  @override
  String get receiveTitle => 'ಫೈಲ್‌ಗಳನ್ನು ಸ್ವೀಕರಿಸಿ';

  @override
  String get receiveSubtitle =>
      'ಫೈಲ್‌ಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಲು ವರ್ಗಾವಣೆ ಲಿಂಕ್ ಅನ್ನು ಅಂಟಿಸಿ.';

  @override
  String get pasteTooltip => 'ಅಂಟಿಸಿ';

  @override
  String get findTransfer => 'ವರ್ಗಾವಣೆಯನ್ನು ಹುಡುಕಿ';

  @override
  String get receiveScanQr => 'QR ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get receiveScanQrTitle => 'ವರ್ಗಾವಣೆ QR ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get receiveScanQrHint => 'ಫ್ರೇಮ್ ಒಳಗೆ QR ಕೋಡ್ ಅನ್ನು ಹೊಂದಿಸಿ.';

  @override
  String get receiveScanQrInvalid => 'ಈ QR ಕೋಡ್ ಮಾನ್ಯ ವರ್ಗಾವಣೆ ಲಿಂಕ್ ಅಲ್ಲ.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR ಕೋಡ್‌ಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ಕ್ಯಾಮರಾ ಪ್ರವೇಶದ ಅಗತ್ಯವಿದೆ.';

  @override
  String get receiveStepGetLink => 'ಲಿಂಕ್ ಪಡೆಯಿರಿ';

  @override
  String get receiveStepGetLinkBody =>
      'ನಿಮ್ಮೊಂದಿಗೆ ವರ್ಗಾವಣೆ ಲಿಂಕ್ ಅನ್ನು ಹಂಚಿಕೊಳ್ಳಲು ಕಳುಹಿಸುವವರನ್ನು ಕೇಳಿ.';

  @override
  String get receiveStepPaste => 'ಅಂಟಿಸಿ ಮತ್ತು ಹುಡುಕಿ';

  @override
  String get receiveStepPasteBody =>
      'ಮೇಲಿನ ಲಿಂಕ್ ಅನ್ನು ಅಂಟಿಸಿ ಮತ್ತು \"ವರ್ಗಾವಣೆ ಹುಡುಕಿ\" ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get receiveStepDownload => 'ಫೈಲ್‌ಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get receiveStepDownloadBody =>
      'ಫೈಲ್ ವಿವರಗಳನ್ನು ನೋಡಿ ಮತ್ತು ಎಲ್ಲವನ್ನೂ ಒಂದೇ ಬಾರಿಗೆ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ.';

  @override
  String get lookingUpTransfer => 'ವರ್ಗಾವಣೆಯನ್ನು ಹುಡುಕಲಾಗುತ್ತಿದೆ...';

  @override
  String get transferNotFound =>
      'ವರ್ಗಾವಣೆ ಕಂಡುಬಂದಿಲ್ಲ. ಲಿಂಕ್ ಪರಿಶೀಲಿಸಿ ಹಾಗೂ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get transferExpired =>
      'ಈ ವರ್ಗಾವಣೆಯ ಅವಧಿ ಮುಗಿದಿದೆ ಮತ್ತು ಇನ್ನು ಮುಂದೆ ಲಭ್ಯವಿರುವುದಿಲ್ಲ.';

  @override
  String get transferLoginRequired =>
      'ಈ ವರ್ಗಾವಣೆಯನ್ನು ಪ್ರವೇಶಿಸಲು ಸೈನ್ ಇನ್ ಅಗತ್ಯವಿದೆ.';

  @override
  String get transferBadResponse =>
      'ಅನಿರೀಕ್ಷಿತ ಸರ್ವರ್ ಪ್ರತಿಕ್ರಿಯೆ. ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get transferNetworkError =>
      'ನೆಟ್‌ವರ್ಕ್ ದೋಷ. ನಿಮ್ಮ ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String transferLoadFailed(String error) {
    return 'ವರ್ಗಾವಣೆಯನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get passwordProtected => 'ಪಾಸ್ವರ್ಡ್ ರಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get enterPassword => 'ಪಾಸ್ವರ್ಡ್ ನಮೂದಿಸಿ';

  @override
  String get unlock => 'ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get downloading => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get downloadAllFiles => 'ಎಲ್ಲಾ ಫೈಲ್‌ಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get downloadSingleFile => 'ಫೈಲ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get receiveAnother => 'ಮತ್ತೊಂದು ವರ್ಗಾವಣೆಯನ್ನು ಸ್ವೀಕರಿಸಿ';

  @override
  String get plansTitle => 'ಯೋಜನೆಗಳು';

  @override
  String get plansSubtitle =>
      'ಜಾಹೀರಾತುಗಳನ್ನು ತೆಗೆದುಹಾಕಲು ಮತ್ತು ದೊಡ್ಡ ಫೈಲ್‌ಗಳನ್ನು ಕಳುಹಿಸಲು ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get storeUnavailable => 'ಅಂಗಡಿ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get storeUnavailableBody =>
      'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಖರೀದಿಗಳು ಇದೀಗ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get storeLoadingPrices =>
      'ಆಪ್ ಸ್ಟೋರ್‌ನಿಂದ ಬೆಲೆಗಳನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get storePricesUnavailable => 'ಬೆಲೆಗಳು ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get storePricesPartial => 'ಕೆಲವು ಬೆಲೆಗಳನ್ನು ಲೋಡ್ ಮಾಡಲಾಗಲಿಲ್ಲ';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total ಚಂದಾದಾರಿಕೆ ಉತ್ಪನ್ನಗಳ $loaded ಅನ್ನು ಲೋಡ್ ಮಾಡಲಾಗಿದೆ.';
  }

  @override
  String get storeSetupHint =>
      'ನಿಜವಾದ iPhone ನಲ್ಲಿ ಪರೀಕ್ಷಿಸಿ (ಸಿಮ್ಯುಲೇಟರ್ ಅಲ್ಲ), ಸ್ಯಾಂಡ್‌ಬಾಕ್ಸ್ Apple ID ಅನ್ನು ಬಳಸಿ ಮತ್ತು ಎಲ್ಲಾ 6 ಚಂದಾದಾರಿಕೆಗಳನ್ನು ಈ ಅಪ್ಲಿಕೇಶನ್‌ನ ಬಂಡಲ್ ID ಅಡಿಯಲ್ಲಿ ಅಪ್ಲಿಕೇಶನ್ ಸ್ಟೋರ್‌ನಲ್ಲಿ ಬೆಲೆ ಸೆಟ್‌ನೊಂದಿಗೆ ಸಂಪರ್ಕಿಸಿ.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ತಿಂಗಳು';
  }

  @override
  String get freeVersionAds =>
      'ಪ್ರಸ್ತುತ ನೀವು ಜಾಹೀರಾತುಗಳೊಂದಿಗೆ ನಮ್ಮ ಉಚಿತ ಆವೃತ್ತಿಯನ್ನು ಬಳಸುತ್ತಿರುವಿರಿ';

  @override
  String get restorePurchases => 'ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get plansContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get planLinkRestore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get termsAndConditions => 'ನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತುಗಳು';

  @override
  String get createAccountTitle => 'ಖಾತೆಯನ್ನು ರಚಿಸಿ';

  @override
  String get signUpSubtitle => 'ಇಮೇಲ್ ಮತ್ತು ಪಾಸ್ವರ್ಡ್ನೊಂದಿಗೆ ಸೈನ್ ಅಪ್ ಮಾಡಿ.';

  @override
  String get confirmPassword => 'ಪಾಸ್ವರ್ಡ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get passwordMin8 => 'ಪಾಸ್ವರ್ಡ್ (ನಿಮಿಷ 8 ಅಕ್ಷರಗಳು)';

  @override
  String get alreadyHaveAccount => 'ಈಗಾಗಲೇ ಖಾತೆಯನ್ನು ಹೊಂದಿರುವಿರಾ?';

  @override
  String get checkEmailTitle => 'ನಿಮ್ಮ ಪರಿಶೀಲಿಸಿ\nಇಮೇಲ್';

  @override
  String otpSentTo(String email) {
    return 'ನಾವು 6-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಕಳುಹಿಸಿದ್ದೇವೆ\n$email';
  }

  @override
  String get verifyAndSignIn => 'ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get didntReceiveCode => 'ಅದನ್ನು ಸ್ವೀಕರಿಸಲಿಲ್ಲವೇ?';

  @override
  String get tryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get otpExpiresHint =>
      'ಕೋಡ್ 5 ನಿಮಿಷಗಳಲ್ಲಿ ಮುಕ್ತಾಯಗೊಳ್ಳುತ್ತದೆ. ನಿಮ್ಮ ಸ್ಪ್ಯಾಮ್ ಫೋಲ್ಡರ್ ನಿಮಗೆ ಕಾಣಿಸದಿದ್ದರೆ ಅದನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get snackError => 'ದೋಷ';

  @override
  String get snackCopied => 'ನಕಲು ಮಾಡಲಾಗಿದೆ';

  @override
  String get snackCopiedBody => 'ಲಿಂಕ್ ಅನ್ನು ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get snackWelcome => 'ಸ್ವಾಗತ';

  @override
  String get snackAccountCreated => 'ಖಾತೆಯನ್ನು ರಚಿಸಲಾಗಿದೆ';

  @override
  String get snackEnterEmail => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಇಮೇಲ್ ನಮೂದಿಸಿ';

  @override
  String get snackEnterPassword => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಗುಪ್ತಪದವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get snackInvalidEmail => 'ಅಮಾನ್ಯ ಇಮೇಲ್ ವಿಳಾಸ';

  @override
  String get snackInvalidCredentials => 'ತಪ್ಪಾದ ಇಮೇಲ್ ಅಥವಾ ಪಾಸ್‌ವರ್ಡ್';

  @override
  String get snackPasswordMin8 => 'ಪಾಸ್ವರ್ಡ್ ಕನಿಷ್ಠ 8 ಅಕ್ಷರಗಳಾಗಿರಬೇಕು';

  @override
  String get snackPasswordMismatch => 'ಪಾಸ್‌ವರ್ಡ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ.';

  @override
  String get snackAccountExists =>
      'ಖಾತೆ ಈಗಾಗಲೇ ಅಸ್ತಿತ್ವದಲ್ಲಿದೆ. ದಯವಿಟ್ಟು ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get snackSignupFailed =>
      'ಖಾತೆಯನ್ನು ರಚಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get snackEnterOtp => 'ದಯವಿಟ್ಟು 6-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get snackOtpExpired => 'ಕೋಡ್ ಅವಧಿ ಮೀರಿದೆ';

  @override
  String get snackOtpExpiredBody => 'ದಯವಿಟ್ಟು ಹೊಸ ಕೋಡ್ ಅನ್ನು ವಿನಂತಿಸಿ.';

  @override
  String get snackInvalidCode => 'ಅಮಾನ್ಯ ಕೋಡ್';

  @override
  String get snackInvalidCodeBody =>
      'ಕೋಡ್ ತಪ್ಪಾಗಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get snackSendCodeFailed =>
      'ಕೋಡ್ ಕಳುಹಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಹಾಗೂ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get snackEmptyFolder => 'ಖಾಲಿ ಫೋಲ್ಡರ್';

  @override
  String get snackEmptyFolderBody =>
      'ಆಯ್ಕೆಮಾಡಿದ ಫೋಲ್ಡರ್‌ನಲ್ಲಿ ಯಾವುದೇ ಫೈಲ್‌ಗಳು ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String get snackFolderUnsupported => 'ಬೆಂಬಲಿತವಾಗಿಲ್ಲ';

  @override
  String get snackFolderUnsupportedBody =>
      'ಈ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್‌ನಲ್ಲಿ ಫೋಲ್ಡರ್ ಅಪ್‌ಲೋಡ್ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get snackFolderReadError => 'ಆಯ್ಕೆಮಾಡಿದ ಫೋಲ್ಡರ್ ಅನ್ನು ಓದಲಾಗಲಿಲ್ಲ.';

  @override
  String get snackLimitReached => 'ಮಿತಿಯನ್ನು ತಲುಪಿದೆ';

  @override
  String get snackLimitFilesBody =>
      'ಗಾತ್ರ ಅಥವಾ ಫೈಲ್ ಎಣಿಕೆ ಮಿತಿಗಳ ಕಾರಣದಿಂದಾಗಿ ಕೆಲವು ಫೈಲ್‌ಗಳನ್ನು ಸೇರಿಸಲಾಗಿಲ್ಲ.';

  @override
  String get snackFreePlanLimit =>
      'ಉಚಿತ ಯೋಜನೆಯು ಪ್ರತಿ ವರ್ಗಾವಣೆಗೆ 5GB ವರೆಗೆ ಅನುಮತಿಸುತ್ತದೆ. ದಯವಿಟ್ಟು ಕೆಲವು ಫೈಲ್‌ಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಅಥವಾ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get snackSignInEmail => 'ಇಮೇಲ್ ಮೂಲಕ ಕಳುಹಿಸಲು ದಯವಿಟ್ಟು ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get snackUploadStartFailed => 'ಅಪ್‌ಲೋಡ್ ಪ್ರಾರಂಭಿಸಲಾಗಲಿಲ್ಲ.';

  @override
  String get snackVerifyEnterCode =>
      'ನಿಮ್ಮ ಇಮೇಲ್‌ನಿಂದ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get snackVerifyInvalid =>
      'ಅಮಾನ್ಯ ಅಥವಾ ಅವಧಿ ಮೀರಿದ ಕೋಡ್. ಇಮೇಲ್ ಪರಿಶೀಲಿಸಿ ಹಾಗೂ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get snackVerifyResendFailed =>
      'ಕೋಡ್ ಅನ್ನು ಮರುಕಳುಹಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get snackDownloadComplete => 'ಡೌನ್‌ಲೋಡ್ ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" ಅನ್ನು ಡೌನ್‌ಲೋಡ್‌ಗಳಿಗೆ ಉಳಿಸಲಾಗಿದೆ';
  }

  @override
  String get snackDownloadFailed => 'ಡೌನ್‌ಲೋಡ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get snackSaved => 'ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get snackServerUrlUpdated =>
      'ಸರ್ವರ್ URL ಅನ್ನು ನವೀಕರಿಸಲಾಗಿದೆ. ಅನ್ವಯಿಸಲು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಿ.';

  @override
  String get snackStoreError => 'ಅಂಗಡಿ ದೋಷ';

  @override
  String get snackMissingProducts => 'ಕಾಣೆಯಾದ ಉತ್ಪನ್ನಗಳು';

  @override
  String get snackStoreUnavailable => 'ಅಂಗಡಿ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get snackStoreUnavailableBody =>
      'ಈ ಸಾಧನದಲ್ಲಿ ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಖರೀದಿಗಳು ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get snackProductNotLoaded => 'ಉತ್ಪನ್ನವನ್ನು ಇನ್ನೂ ಲೋಡ್ ಮಾಡಲಾಗಿಲ್ಲ.';

  @override
  String get snackRestoreStarted => 'ಮರುಸ್ಥಾಪನೆ ಪ್ರಾರಂಭವಾಗಿದೆ';

  @override
  String get snackRestoreStartedBody =>
      'ನಿಮ್ಮ ಖರೀದಿಗಳನ್ನು ನಾವು ಪರಿಶೀಲಿಸುತ್ತಿದ್ದೇವೆ.';

  @override
  String get snackRestoreFailed => 'ಮರುಸ್ಥಾಪನೆ ವಿಫಲವಾಗಿದೆ';

  @override
  String get snackProcessing => 'ಸಂಸ್ಕರಣೆ';

  @override
  String get snackPleaseWait => 'ದಯವಿಟ್ಟು ನಿರೀಕ್ಷಿಸಿ...';

  @override
  String get snackSuccess => 'ಯಶಸ್ಸು';

  @override
  String get snackPurchaseCompleted => 'ಖರೀದಿ ಪೂರ್ಣಗೊಂಡಿದೆ.';

  @override
  String get snackPurchaseError => 'ಖರೀದಿ ದೋಷ';

  @override
  String get snackPurchaseFailed => 'ಖರೀದಿ ವಿಫಲವಾಗಿದೆ.';

  @override
  String get snackCanceled => 'ರದ್ದುಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get snackPurchaseCanceled => 'ಖರೀದಿಯನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗಿದೆ.';

  @override
  String get snackUpload => 'ಅಪ್ಲೋಡ್ ಮಾಡಿ';

  @override
  String get snackVerify => 'ಪರಿಶೀಲಿಸಿ';

  @override
  String get doNotExpire => 'ಅವಧಿ ಮೀರಬಾರದು';

  @override
  String get hourSingular => 'ಗಂಟೆ';

  @override
  String get hourPlural => 'ಗಂಟೆಗಳು';

  @override
  String get daySingular => 'ದಿನ';

  @override
  String get dayPlural => 'ದಿನಗಳು';

  @override
  String get emailAddressLabel => 'ಇಮೇಲ್ ವಿಳಾಸ';

  @override
  String get passwordLabelCaps => 'ಪಾಸ್ವರ್ಡ್';

  @override
  String get confirmPasswordLabelCaps => 'ಪಾಸ್ವರ್ಡ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ಲಿಂಕ್ ಅಥವಾ ಐಡಿಯನ್ನು ವರ್ಗಾಯಿಸಿ';

  @override
  String get howToReceive => 'ಹೇಗೆ ಸ್ವೀಕರಿಸುವುದು';

  @override
  String get transferLinkHint => 'https://… or paste ID';

  @override
  String filesReady(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files ready',
      one: '1 file ready',
    );
    return '$_temp0';
  }

  @override
  String get planAdsTitle => 'ಜಾಹೀರಾತು ಯೋಜನೆ';

  @override
  String get planAdsBullet1 => 'ಜಾಹೀರಾತುಗಳ ಉಚಿತ ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಪ್ರವೇಶ';

  @override
  String get planAdsBullet2 => 'ಎಲ್ಲಾ ಜಾಹೀರಾತುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get planProTitle => 'ಪ್ರೊ ಯೋಜನೆ';

  @override
  String get planProBullet1 => '20GB ವರೆಗಿನ ಫೈಲ್‌ಗಳನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get planProBullet2 => 'ವೇಗದ ಅಪ್ಲೋಡ್';

  @override
  String get planPremiumTitle => 'ಪ್ರೀಮಿಯಂ ಯೋಜನೆ';

  @override
  String get planPremiumBullet1 => '100GB ವರೆಗಿನ ಫೈಲ್‌ಗಳನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get planPremiumBullet2 => 'ಸೂಪರ್ ಫಾಸ್ಟ್ ಅಪ್‌ಲೋಡ್';

  @override
  String get planSubscriptionDisclaimer =>
      'ಯಾವುದೇ ಪ್ರಾಯೋಗಿಕ ಅವಧಿಯಿಲ್ಲ - ಹೆಚ್ಚುವರಿ ಅಪ್ಲಿಕೇಶನ್ ಕಾರ್ಯವನ್ನು ಬಳಸಲು ಚಂದಾದಾರಿಕೆಯ ಅಗತ್ಯವಿದೆ. ನಿಮಗೆ ತಕ್ಷಣವೇ ಶುಲ್ಕ ವಿಧಿಸಲಾಗುತ್ತದೆ. ನೀವು ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದು ಮಾಡಬಹುದು.';

  @override
  String get perMonth => '/ ತಿಂಗಳು';

  @override
  String get perYear => '/ ವರ್ಷ';

  @override
  String get snackConnectionProblem =>
      'ಸಂಪರ್ಕ ಸಮಸ್ಯೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get networkTitle => 'ನೆಟ್ವರ್ಕ್';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ಫೈಲ್‌ಗಳು: $count · $size ಬೈಟ್‌ಗಳು';
  }

  @override
  String todayAt(String time) {
    return 'ಇಂದು · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'ನಿನ್ನೆ · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysದಿನ ಹಿಂದೆ · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining ಉಳಿದಿದೆ';
  }

  @override
  String get loadingShort => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get colorPaletteTitle => 'ಬಣ್ಣದ ಪ್ಯಾಲೆಟ್';

  @override
  String get colorPaletteSectionBackgrounds => 'ಹಿನ್ನೆಲೆಗಳು (ಇಂಕ್ ಸ್ಕೇಲ್)';

  @override
  String get colorPaletteSectionAccent => 'ಉಚ್ಚಾರಣೆ / ಪ್ರಾಥಮಿಕ';

  @override
  String get colorPaletteSectionText => 'ಪಠ್ಯ';

  @override
  String get colorPaletteSectionBorders => 'ಗಡಿಗಳು ಮತ್ತು ಗಾಜು';

  @override
  String get colorPaletteSectionSemantic => 'ಲಾಕ್ಷಣಿಕ';

  @override
  String get colorPaletteSectionLive => 'ಲೈವ್ ಥೀಮ್ (ಪ್ರಸ್ತುತ)';

  @override
  String get colorPaletteActiveHint => '★ = ಪರದೆಗಳಲ್ಲಿ ಸಕ್ರಿಯವಾಗಿ ಬಳಸಲಾಗುತ್ತದೆ';

  @override
  String get colorPaletteCopyHint =>
      'ಅದರ ಹೆಕ್ಸ್ ಮೌಲ್ಯವನ್ನು ನಕಲಿಸಲು ಯಾವುದೇ ಸ್ವಾಚ್ ಅನ್ನು ದೀರ್ಘವಾಗಿ ಒತ್ತಿರಿ.';

  @override
  String historyFilesSize(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0 · $size';
  }

  @override
  String get settingsAppBrand => 'ದೊಡ್ಡದಾಗಿ ಹಂಚಿಕೊಳ್ಳಿ\nವೀಡಿಯೊ ಫೈಲ್‌ಗಳು';

  @override
  String get loginEmailPasswordPrompt =>
      'ಸೈನ್ ಇನ್ ಮಾಡಲು ನಿಮ್ಮ ಇಮೇಲ್ ಮತ್ತು ಪಾಸ್‌ವರ್ಡ್ ಅನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get forgotPassword => 'ಪಾಸ್ವರ್ಡ್ ಮರೆತಿರುವಿರಾ?';

  @override
  String get forgotPasswordTitle => 'ಪಾಸ್ವರ್ಡ್ ಮರುಹೊಂದಿಸಿ';

  @override
  String get forgotPasswordBody =>
      'ನಿಮ್ಮ ಖಾತೆಯ ಇಮೇಲ್ ಅನ್ನು ನಮೂದಿಸಿ ಮತ್ತು ನಾವು ಮರುಹೊಂದಿಸುವ ಕೋಡ್ ಅನ್ನು ಕಳುಹಿಸುತ್ತೇವೆ.';

  @override
  String get forgotPasswordSubmit => 'ಮರುಹೊಂದಿಸುವ ಕೋಡ್ ಕಳುಹಿಸಿ';

  @override
  String get resetPasswordTitle => 'ಹೊಸ ಗುಪ್ತಪದವನ್ನು ರಚಿಸಿ';

  @override
  String get resetPasswordBody =>
      'ನಿಮ್ಮ ಇಮೇಲ್‌ನಿಂದ 6-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ ಮತ್ತು ಹೊಸ ಪಾಸ್‌ವರ್ಡ್ ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get resetPasswordSubmit => 'ಪಾಸ್ವರ್ಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';

  @override
  String get snackPasswordResetSent => 'ಮರುಹೊಂದಿಸಿ ಕೋಡ್ ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String get snackPasswordResetSentBody =>
      '6-ಅಂಕಿಯ ಮರುಹೊಂದಿಸುವ ಕೋಡ್‌ಗಾಗಿ ನಿಮ್ಮ ಇಮೇಲ್ ಅನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get snackPasswordResetFailed =>
      'ಮರುಹೊಂದಿಸುವ ಕೋಡ್ ಅನ್ನು ಕಳುಹಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get snackPasswordUpdated => 'ಪಾಸ್ವರ್ಡ್ ನವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get snackPasswordUpdatedBody =>
      'ನಿಮ್ಮ ಹೊಸ ಪಾಸ್‌ವರ್ಡ್‌ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get snackPasswordResetInvalid =>
      'ಅಮಾನ್ಯ ಅಥವಾ ಅವಧಿ ಮೀರಿದ ಮರುಹೊಂದಿಸುವ ಕೋಡ್.';

  @override
  String get otpDigitLabel => '6-ಅಂಕಿಯ ಕೋಡ್';

  @override
  String receiveMoreFiles(int count) {
    return '+$count ಹೆಚ್ಚಿನ ಫೈಲ್‌ಗಳು';
  }
}
