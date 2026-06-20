// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'بڑی ویڈیو فائلیں شیئر کریں۔';

  @override
  String get heroAccent => 'فوری طور پر';

  @override
  String get heroTitle => 'بھاری فائلیں بھیجیں۔';

  @override
  String get splashLoading => 'لوڈ ہو رہا ہے…';

  @override
  String get navSend => 'ڈیش بورڈ';

  @override
  String get navHome => 'گھر';

  @override
  String get navHistory => 'تاریخ';

  @override
  String get navReceive => 'وصول کریں۔';

  @override
  String get navPlans => 'منصوبے';

  @override
  String get navDownload => 'ڈاؤن لوڈ کریں۔';

  @override
  String get navSettings => 'ترتیبات';

  @override
  String get modeLink => 'ایک لنک حاصل کریں۔';

  @override
  String get modeEmail => 'ای میل کے ذریعے بھیجیں۔';

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
  String get pickFiles => 'فائلوں کا انتخاب کریں۔';

  @override
  String get pickFolder => 'فولڈر کا انتخاب کریں۔';

  @override
  String get emailFrom => 'آپ کا ای میل';

  @override
  String get mailFromUsesAccount =>
      'آپ کا سائن ان کردہ ای میل استعمال کرتا ہے۔';

  @override
  String get recipientEmailsHelper =>
      'متعدد وصول کنندگان: کوما، نیم کالون، یا خالی جگہوں سے الگ کریں۔';

  @override
  String get emailTo => 'وصول کنندہ کا ای میل';

  @override
  String get messageOptional => 'پیغام (اختیاری)';

  @override
  String get passwordOptional => 'پاس ورڈ (اختیاری)';

  @override
  String get destructAfterDownload => 'ڈاؤن لوڈ کرنے کے بعد حذف کریں۔';

  @override
  String get destructNo => 'دستیاب رکھیں';

  @override
  String get sendButton => 'بھیجیں۔';

  @override
  String get uploading => 'اپ لوڈ ہو رہا ہے…';

  @override
  String get uploadComplete => 'ہو گیا';

  @override
  String get shareLinkTitle => 'آپ کا لنک';

  @override
  String get copyLink => 'لنک کاپی کریں۔';

  @override
  String get share => 'شیئر کریں۔';

  @override
  String get shareQrCode => 'QR کوڈ کا اشتراک کریں۔';

  @override
  String get uploadMore => 'دوسرا بھیج دیں۔';

  @override
  String get emailSentTitle => 'ای میلز بھیجی گئیں۔';

  @override
  String get verifyEmailTitle => 'اپنے ای میل کی تصدیق کریں۔';

  @override
  String get verifyCodeHint => 'اپنے ای میل سے کوڈ درج کریں۔';

  @override
  String get verifySubmit => 'تصدیق کریں۔';

  @override
  String get verifyResendCode => 'کوڈ دوبارہ بھیجیں۔';

  @override
  String get verifyCodeSent =>
      'آپ کے ای میل پر ایک نیا تصدیقی کوڈ بھیجا گیا تھا۔';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'ہو سکتا ہے توثیقی ای میل نہیں بھیجی گئی ہو۔';

  @override
  String get verifyEmailSmtpWarningBody =>
      'سرور ڈیلیوری کی تصدیق نہیں کر سکا (اکثر SMTP غلط کنفیگر ہوتا ہے)۔ اپنی سائٹ کے منتظم سے ایڈمن پینل میں میل کی ترتیبات چیک کرنے کو کہیں، پھر کوڈ دوبارہ بھیجیں پر ٹیپ کریں۔';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'اگر یہ نہیں پہنچتا ہے: جنک/سپیم اور پروموشنز کو چیک کریں، ایک منٹ انتظار کریں، تصدیق کریں کہ $email میں ٹائپنگ کی کوئی غلطی نہیں ہے، پھر دوبارہ بھیجیں پر ٹیپ کریں۔';
  }

  @override
  String get loginTitle => 'سائن ان کریں۔';

  @override
  String get signupHint =>
      'اپنے سائٹ اکاؤنٹ کا ای میل اور پاس ورڈ استعمال کریں۔';

  @override
  String get emailHint => 'ای میل';

  @override
  String get passwordHint => 'پاس ورڈ';

  @override
  String get cancel => 'منسوخ کریں۔';

  @override
  String get signIn => 'سائن ان کریں۔';

  @override
  String get downloadIdHint => 'منتقلی کی شناخت';

  @override
  String get privateIdHint => 'نجی ID (اختیاری)';

  @override
  String get fetchTransfer => 'اوپن ٹرانسفر';

  @override
  String get downloadFile => 'ڈاؤن لوڈ کریں۔';

  @override
  String get unlockDownload => 'ڈاؤن لوڈ کو غیر مقفل کریں۔';

  @override
  String get downloadSaved => 'ڈاؤن لوڈز میں محفوظ کیا گیا۔';

  @override
  String get errorGeneric => 'کچھ غلط ہو گیا۔';

  @override
  String get errorNetwork => 'نیٹ ورک کی خرابی۔';

  @override
  String get errorBadResponse => 'سرور کا غیر متوقع جواب';

  @override
  String get termsAccept => 'میں شرائط سے اتفاق کرتا ہوں۔';

  @override
  String get settingsApiUrl => 'عوامی سائٹ کا URL';

  @override
  String get settingsAccount => 'اکاؤنٹ';

  @override
  String get settingsAppearance => 'ظاہری شکل';

  @override
  String get settingsTheme => 'تھیم';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'روشنی';

  @override
  String get themeDark => 'اندھیرا';

  @override
  String get settingsSignedIn => 'آپ سائن ان ہیں۔';

  @override
  String get settingsSignedOut => 'آپ سائن ان نہیں ہیں۔';

  @override
  String get settingsOpenWebsite => 'ویب سائٹ کھولیں۔';

  @override
  String get signUp => 'سائن اپ کریں۔';

  @override
  String get settingsLinks => 'لنکس';

  @override
  String get privacyPolicy => 'رازداری کی پالیسی';

  @override
  String get termsOfService => 'سروس کی شرائط';

  @override
  String get about => 'کے بارے میں';

  @override
  String get moreApps => 'مزید ایپس';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get languageEnglish => 'انگریزی';

  @override
  String get languageHindi => 'ہندی';

  @override
  String get logout => 'لاگ آؤٹ کریں۔';

  @override
  String get deleteAccount => 'اکاؤنٹ حذف کریں۔';

  @override
  String get deleteAccountConfirmTitle => 'اپنا اکاؤنٹ حذف کریں؟';

  @override
  String get deleteAccountConfirmBody =>
      'یہ آپ کا اکاؤنٹ مستقل طور پر حذف کر دیتا ہے اور آپ کو سائن آؤٹ کر دیتا ہے۔ آپ کے ٹرانسفر لنکس کام کرتے رہیں گے، لیکن وہ آپ کی تاریخ میں مزید ظاہر نہیں ہوں گے۔';

  @override
  String get deleteAccountSuccess => 'اکاؤنٹ حذف کر دیا گیا۔';

  @override
  String get deleteAccountSuccessBody => 'آپ کا اکاؤنٹ ہٹا دیا گیا ہے۔';

  @override
  String get deleteAccountFailed => 'اکاؤنٹ حذف نہیں کیا جا سکا';

  @override
  String get deleteAccountFailedBody =>
      'براہ کرم دوبارہ کوشش کریں یا سپورٹ سے رابطہ کریں۔';

  @override
  String get maxFilesReached => 'بہت ساری فائلیں';

  @override
  String get fileTooLarge => 'فائل بہت بڑی ہے۔';

  @override
  String get ipLimit => 'اس نیٹ ورک سے بہت زیادہ اپ لوڈز';

  @override
  String get fillFields => 'براہ کرم مطلوبہ فیلڈز پُر کریں۔';

  @override
  String get invalidEmail => 'غلط ای میل';

  @override
  String get maxRecipientsReached => 'بہت زیادہ وصول کنندگان';

  @override
  String get loginRequiredTitle => 'سائن ان کی ضرورت ہے۔';

  @override
  String get loginRequiredBody =>
      'اس سرور کو اپ لوڈ یا ڈاؤن لوڈ کرنے کے لیے ایک اکاؤنٹ درکار ہے۔';

  @override
  String get settingsSubtitle => 'ایپ کی ترجیحات اور اکاؤنٹ۔';

  @override
  String get dropHeavyFile => 'ایک بھاری فائل یہاں چھوڑ دو۔';

  @override
  String upToTotal(String max) {
    return 'کل $max تک';
  }

  @override
  String get removeAll => 'سب کو ہٹا دیں۔';

  @override
  String get addFiles => 'فائلیں شامل کریں۔';

  @override
  String get adding => 'شامل کیا جا رہا ہے…';

  @override
  String get options => 'اختیارات';

  @override
  String get selfDestruct => 'ڈاؤن لوڈ کے بعد خود کو تباہ کریں۔';

  @override
  String get expiry => 'ختم';

  @override
  String get cancelUpload => 'اپ لوڈ منسوخ کریں۔';

  @override
  String get transferReady => 'منتقلی تیار ہے!';

  @override
  String get emailSentReady => 'ای میل بھیجی گئی!';

  @override
  String get shareRecipientHint =>
      'اس لنک کو اپنے وصول کنندہ کے ساتھ شیئر کریں۔';

  @override
  String get emailSentBody => 'ہم نے آپ کے وصول کنندگان کو مطلع کر دیا ہے۔';

  @override
  String get scanQr => 'ٹرانسفر لنک کو کھولنے کے لیے اسکین کریں۔';

  @override
  String get shareLinkButton => 'لنک شیئر کریں۔';

  @override
  String get verifyFourDigit =>
      'آپ کے بھیجنے والے کے ای میل پر بھیجا گیا 4 ہندسوں کا کوڈ درج کریں۔';

  @override
  String get starting => 'شروع ہو رہا ہے…';

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
    return '$amount MB باقی ہے۔';
  }

  @override
  String get fillField => 'براہ کرم اس فیلڈ کو پُر کریں۔';

  @override
  String get enterValidEmail => 'ایک درست ای میل درج کریں۔';

  @override
  String get message => 'پیغام';

  @override
  String get recipientEmail => 'وصول کنندہ کا ای میل';

  @override
  String get active => 'فعال';

  @override
  String get expired => 'میعاد ختم';

  @override
  String get historyTitle => 'میری ٹرانسفرز';

  @override
  String get signInToSeeTransfers => 'اپنی منتقلی دیکھنے کے لیے سائن ان کریں۔';

  @override
  String get signInTransfersBody =>
      'ہم آپ کے اکاؤنٹ سے ٹرانسفرز کو لنک کرنے کے لیے آپ کا ای میل استعمال کرتے ہیں — پاس ورڈ کی ضرورت نہیں۔';

  @override
  String get couldNotLoadTransfers => 'منتقلی لوڈ نہیں ہو سکی';

  @override
  String get retry => 'دوبارہ کوشش کریں۔';

  @override
  String get noTransfersYet => 'ابھی تک کوئی منتقلی نہیں ہے۔';

  @override
  String get noTransfersBody =>
      'ایک بار جب آپ فائل بھیجیں گے، تو وہ یہاں ظاہر ہوگی۔';

  @override
  String get transferDetails => 'منتقلی کی تفصیلات';

  @override
  String get filesSection => 'فائلیں';

  @override
  String get receiveTitle => 'فائلیں وصول کریں۔';

  @override
  String get receiveSubtitle =>
      'فائلیں ڈاؤن لوڈ کرنے کے لیے ٹرانسفر لنک چسپاں کریں۔';

  @override
  String get pasteTooltip => 'چسپاں کریں۔';

  @override
  String get findTransfer => 'ٹرانسفر تلاش کریں۔';

  @override
  String get receiveScanQr => 'QR اسکین کریں۔';

  @override
  String get receiveScanQrTitle => 'اسکین ٹرانسفر QR';

  @override
  String get receiveScanQrHint => 'QR کوڈ کو فریم کے اندر سیدھ کریں۔';

  @override
  String get receiveScanQrInvalid => 'یہ QR کوڈ درست ٹرانسفر لنک نہیں ہے۔';

  @override
  String get receiveScanQrCameraDenied =>
      'QR کوڈز کو اسکین کرنے کے لیے کیمرے تک رسائی درکار ہے۔';

  @override
  String get receiveStepGetLink => 'لنک حاصل کریں۔';

  @override
  String get receiveStepGetLinkBody =>
      'بھیجنے والے سے کہیں کہ وہ آپ کے ساتھ ٹرانسفر لنک کا اشتراک کرے۔';

  @override
  String get receiveStepPaste => 'پیسٹ کریں اور تلاش کریں۔';

  @override
  String get receiveStepPasteBody =>
      'اوپر لنک چسپاں کریں اور \"ٹرانسفر تلاش کریں\" پر ٹیپ کریں۔';

  @override
  String get receiveStepDownload => 'فائلیں ڈاؤن لوڈ کریں۔';

  @override
  String get receiveStepDownloadBody =>
      'فائل کی تفصیلات دیکھیں اور سب کچھ ایک ساتھ ڈاؤن لوڈ کریں۔';

  @override
  String get lookingUpTransfer => 'ٹرانسفر تلاش کر رہا ہے…';

  @override
  String get transferNotFound =>
      'منتقلی نہیں ملی۔ لنک چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get transferExpired =>
      'اس منتقلی کی میعاد ختم ہو گئی ہے اور اب دستیاب نہیں ہے۔';

  @override
  String get transferLoginRequired =>
      'اس منتقلی تک رسائی کے لیے سائن ان کی ضرورت ہے۔';

  @override
  String get transferBadResponse =>
      'سرور کا غیر متوقع جواب۔ اپنا کنکشن چیک کریں۔';

  @override
  String get transferNetworkError =>
      'نیٹ ورک کی خرابی۔ اپنا انٹرنیٹ کنکشن چیک کریں۔';

  @override
  String transferLoadFailed(String error) {
    return 'منتقلی لوڈ نہیں ہو سکی: $error';
  }

  @override
  String get passwordProtected => 'پاس ورڈ محفوظ ہے۔';

  @override
  String get enterPassword => 'پاس ورڈ درج کریں۔';

  @override
  String get unlock => 'غیر مقفل کریں۔';

  @override
  String get downloading => 'ڈاؤن لوڈ ہو رہا ہے…';

  @override
  String get downloadAllFiles => 'تمام فائلیں ڈاؤن لوڈ کریں۔';

  @override
  String get downloadSingleFile => 'فائل ڈاؤن لوڈ کریں۔';

  @override
  String get receiveAnother => 'دوسری منتقلی وصول کریں۔';

  @override
  String get plansTitle => 'منصوبے';

  @override
  String get plansSubtitle =>
      'اشتہارات کو ہٹانے اور بڑی فائلیں بھیجنے کے لیے اپ گریڈ کریں۔';

  @override
  String get storeUnavailable => 'اسٹور دستیاب نہیں ہے۔';

  @override
  String get storeUnavailableBody => 'درون ایپ خریداریاں ابھی دستیاب نہیں ہیں۔';

  @override
  String get storeLoadingPrices => 'ایپ اسٹور سے قیمتیں لوڈ ہو رہی ہیں…';

  @override
  String get storePricesUnavailable => 'قیمتیں دستیاب نہیں ہیں۔';

  @override
  String get storePricesPartial => 'کچھ قیمتیں لوڈ نہیں کی جا سکیں';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded میں سے $total سبسکرپشن پروڈکٹس لوڈ ہو گئے۔';
  }

  @override
  String get storeSetupHint =>
      'اصلی آئی فون پر ٹیسٹ کریں (سمولیٹر نہیں)، سینڈ باکس ایپل آئی ڈی استعمال کریں، اور یقینی بنائیں کہ تمام 6 سبسکرپشنز اس ایپ کے بنڈل آئی ڈی کے تحت ایپ اسٹور کنیکٹ کے ساتھ پرائسنگ سیٹ کے ساتھ بنی ہیں۔';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/مہینہ';
  }

  @override
  String get freeVersionAds =>
      'فی الحال آپ اشتہارات کے ساتھ ہمارا مفت ورژن استعمال کر رہے ہیں۔';

  @override
  String get restorePurchases => 'خریداریوں کو بحال کریں۔';

  @override
  String get plansContinue => 'جاری رکھیں';

  @override
  String get planLinkRestore => 'بحال کریں۔';

  @override
  String get termsAndConditions => 'شرائط و ضوابط';

  @override
  String get createAccountTitle => 'اکاؤنٹ بنائیں';

  @override
  String get signUpSubtitle => 'ای میل اور پاس ورڈ کے ساتھ سائن اپ کریں۔';

  @override
  String get confirmPassword => 'پاس ورڈ کی تصدیق کریں۔';

  @override
  String get passwordMin8 => 'پاس ورڈ (کم سے کم 8 حروف)';

  @override
  String get alreadyHaveAccount => 'پہلے سے ہی اکاؤنٹ ہے؟';

  @override
  String get checkEmailTitle => 'اپنا چیک کریں۔\nای میل';

  @override
  String otpSentTo(String email) {
    return 'ہم نے 6 ہندسوں کا کوڈ بھیجا ہے۔\n$email';
  }

  @override
  String get verifyAndSignIn => 'تصدیق کریں اور سائن ان کریں۔';

  @override
  String get didntReceiveCode => 'وصول نہیں کیا؟';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں۔';

  @override
  String get otpExpiresHint =>
      'کوڈ کی میعاد 5 منٹ میں ختم ہو جاتی ہے۔ اگر آپ کو یہ نظر نہیں آتا ہے تو اپنا اسپام فولڈر چیک کریں۔';

  @override
  String get snackError => 'خرابی';

  @override
  String get snackCopied => 'کاپی';

  @override
  String get snackCopiedBody => 'لنک کلپ بورڈ پر کاپی ہو گیا۔';

  @override
  String get snackWelcome => 'خوش آمدید';

  @override
  String get snackAccountCreated => 'اکاؤنٹ بنایا گیا۔';

  @override
  String get snackEnterEmail => 'براہ کرم اپنا ای میل درج کریں۔';

  @override
  String get snackEnterPassword => 'براہ کرم اپنا پاس ورڈ درج کریں۔';

  @override
  String get snackInvalidEmail => 'غلط ای میل پتہ';

  @override
  String get snackInvalidCredentials => 'غلط ای میل یا پاس ورڈ';

  @override
  String get snackPasswordMin8 => 'پاس ورڈ کم از کم 8 حروف کا ہونا چاہیے۔';

  @override
  String get snackPasswordMismatch => 'پاس ورڈز مماثل نہیں ہیں۔';

  @override
  String get snackAccountExists =>
      'اکاؤنٹ پہلے سے موجود ہے۔ براہ کرم سائن ان کریں۔';

  @override
  String get snackSignupFailed => 'اکاؤنٹ نہیں بنا سکا۔ دوبارہ کوشش کریں۔';

  @override
  String get snackEnterOtp => 'براہ کرم 6 ہندسوں کا کوڈ درج کریں۔';

  @override
  String get snackOtpExpired => 'کوڈ کی میعاد ختم ہوگئی';

  @override
  String get snackOtpExpiredBody => 'براہ کرم ایک نئے کوڈ کی درخواست کریں۔';

  @override
  String get snackInvalidCode => 'غلط کوڈ';

  @override
  String get snackInvalidCodeBody => 'کوڈ غلط ہے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get snackSendCodeFailed =>
      'کوڈ نہیں بھیج سکا۔ اپنا کنکشن چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get snackEmptyFolder => 'خالی فولڈر';

  @override
  String get snackEmptyFolderBody => 'منتخب فولڈر میں کوئی فائل نہیں ملی۔';

  @override
  String get snackFolderUnsupported => 'تعاون یافتہ نہیں۔';

  @override
  String get snackFolderUnsupportedBody =>
      'اس پلیٹ فارم پر فولڈر اپ لوڈ دستیاب نہیں ہے۔';

  @override
  String get snackFolderReadError => 'منتخب فولڈر کو پڑھا نہیں جا سکا۔';

  @override
  String get snackLimitReached => 'حد ہو گئی۔';

  @override
  String get snackLimitFilesBody =>
      'کچھ فائلیں سائز یا فائل کی گنتی کی حد کی وجہ سے شامل نہیں کی گئیں۔';

  @override
  String get snackFreePlanLimit =>
      'مفت منصوبہ 5GB تک فی منتقلی کی اجازت دیتا ہے۔ براہ کرم کچھ فائلیں ہٹائیں یا اپ گریڈ کریں۔';

  @override
  String get snackSignInEmail =>
      'ای میل کے ذریعے بھیجنے کے لیے براہ کرم سائن ان کریں۔';

  @override
  String get snackUploadStartFailed => 'اپ لوڈ شروع نہیں ہو سکا۔';

  @override
  String get snackVerifyEnterCode => 'اپنے ای میل سے 4 ہندسوں کا کوڈ درج کریں۔';

  @override
  String get snackVerifyInvalid =>
      'غلط یا ختم شدہ کوڈ۔ ای میل چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get snackVerifyResendFailed =>
      'کوڈ دوبارہ نہیں بھیجا جا سکا۔ دوبارہ کوشش کریں۔';

  @override
  String get snackDownloadComplete => 'ڈاؤن لوڈ مکمل';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" ڈاؤن لوڈز میں محفوظ ہو گیا۔';
  }

  @override
  String get snackDownloadFailed => 'ڈاؤن لوڈ ناکام ہو گیا۔';

  @override
  String get snackSaved => 'محفوظ کیا گیا۔';

  @override
  String get snackServerUrlUpdated =>
      'سرور URL اپ ڈیٹ ہو گیا۔ درخواست دینے کے لیے ایپ کو دوبارہ شروع کریں۔';

  @override
  String get snackStoreError => 'اسٹور کی خرابی۔';

  @override
  String get snackMissingProducts => 'غائب مصنوعات';

  @override
  String get snackStoreUnavailable => 'اسٹور دستیاب نہیں ہے۔';

  @override
  String get snackStoreUnavailableBody =>
      'درون ایپ خریداریاں اس ڈیوائس پر دستیاب نہیں ہیں۔';

  @override
  String get snackProductNotLoaded => 'پروڈکٹ ابھی لوڈ نہیں ہوئی ہے۔';

  @override
  String get snackRestoreStarted => 'بحالی شروع ہو گئی۔';

  @override
  String get snackRestoreStartedBody =>
      'ہم آپ کی خریداریوں کی جانچ کر رہے ہیں۔';

  @override
  String get snackRestoreFailed => 'بحالی ناکام ہو گئی۔';

  @override
  String get snackProcessing => 'پروسیسنگ';

  @override
  String get snackPleaseWait => 'براہ کرم انتظار کریں…';

  @override
  String get snackSuccess => 'کامیابی';

  @override
  String get snackPurchaseCompleted => 'خریداری مکمل ہو گئی۔';

  @override
  String get snackPurchaseError => 'خریداری میں خرابی۔';

  @override
  String get snackPurchaseFailed => 'خریداری ناکام ہو گئی۔';

  @override
  String get snackCanceled => 'منسوخ';

  @override
  String get snackPurchaseCanceled => 'خریداری منسوخ کر دی گئی۔';

  @override
  String get snackUpload => 'اپ لوڈ کریں۔';

  @override
  String get snackVerify => 'تصدیق کریں۔';

  @override
  String get doNotExpire => 'میعاد ختم نہ ہو۔';

  @override
  String get hourSingular => 'گھنٹہ';

  @override
  String get hourPlural => 'گھنٹے';

  @override
  String get daySingular => 'دن';

  @override
  String get dayPlural => 'دن';

  @override
  String get emailAddressLabel => 'ای میل ایڈریس';

  @override
  String get passwordLabelCaps => 'پاس ورڈ';

  @override
  String get confirmPasswordLabelCaps => 'پاس ورڈ کی تصدیق کریں۔';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'لنک یا آئی ڈی ٹرانسفر کریں۔';

  @override
  String get howToReceive => 'کیسے وصول کیا جائے۔';

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
  String get planAdsTitle => 'اشتہارات کا منصوبہ';

  @override
  String get planAdsBullet1 => 'اشتہارات سے پاک ایپ تک رسائی';

  @override
  String get planAdsBullet2 => 'تمام اشتہارات کو ہٹا دیں۔';

  @override
  String get planProTitle => 'پرو پلان';

  @override
  String get planProBullet1 => '20GB تک فائلیں بھیجیں۔';

  @override
  String get planProBullet2 => 'فاسٹ اپ لوڈ';

  @override
  String get planPremiumTitle => 'پریمیم پلان';

  @override
  String get planPremiumBullet1 => '100GB تک فائلیں بھیجیں۔';

  @override
  String get planPremiumBullet2 => 'سپر فاسٹ اپ لوڈ';

  @override
  String get planSubscriptionDisclaimer =>
      'کوئی آزمائشی مدت نہیں - اضافی ایپ کی فعالیت کو استعمال کرنے کے لیے سبسکرپشن درکار ہے۔ آپ سے فوری طور پر چارج کیا جائے گا۔ آپ کسی بھی وقت منسوخ کر سکتے ہیں۔';

  @override
  String get perMonth => '/ مہینہ';

  @override
  String get perYear => '/ سال';

  @override
  String get snackConnectionProblem =>
      'کنکشن کا مسئلہ۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get networkTitle => 'نیٹ ورک';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'فائلیں: $count · $size بائٹس';
  }

  @override
  String todayAt(String time) {
    return 'آج · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'کل · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d پہلے · $time';
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
    return '$sent / $total • $remaining بائیں';
  }

  @override
  String get loadingShort => 'لوڈ ہو رہا ہے…';

  @override
  String get colorPaletteTitle => 'کلر پیلیٹ';

  @override
  String get colorPaletteSectionBackgrounds => 'پس منظر (سیاہی کا پیمانہ)';

  @override
  String get colorPaletteSectionAccent => 'لہجہ / پرائمری';

  @override
  String get colorPaletteSectionText => 'متن';

  @override
  String get colorPaletteSectionBorders => 'بارڈرز اور گلاس';

  @override
  String get colorPaletteSectionSemantic => 'معنوی';

  @override
  String get colorPaletteSectionLive => 'لائیو تھیم (موجودہ)';

  @override
  String get colorPaletteActiveHint =>
      '★ = اسکرینوں میں فعال طور پر استعمال کیا جاتا ہے۔';

  @override
  String get colorPaletteCopyHint =>
      'کسی بھی سوئچ کی ہیکس ویلیو کاپی کرنے کے لیے اسے دیر تک دبائیں';

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
  String get settingsAppBrand => 'بڑا شیئر کریں۔\nویڈیو فائلز';

  @override
  String get loginEmailPasswordPrompt =>
      'سائن ان کرنے کے لیے اپنا ای میل اور پاس ورڈ درج کریں۔';

  @override
  String get forgotPassword => 'پاس ورڈ بھول گئے؟';

  @override
  String get forgotPasswordTitle => 'پاس ورڈ دوبارہ ترتیب دیں۔';

  @override
  String get forgotPasswordBody =>
      'اپنے اکاؤنٹ کا ای میل درج کریں اور ہم ایک ری سیٹ کوڈ بھیجیں گے۔';

  @override
  String get forgotPasswordSubmit => 'ری سیٹ کوڈ بھیجیں۔';

  @override
  String get resetPasswordTitle => 'نیا پاس ورڈ بنائیں';

  @override
  String get resetPasswordBody =>
      'اپنے ای میل سے 6 ہندسوں کا کوڈ درج کریں اور نیا پاس ورڈ منتخب کریں۔';

  @override
  String get resetPasswordSubmit => 'پاس ورڈ اپ ڈیٹ کریں۔';

  @override
  String get snackPasswordResetSent => 'ری سیٹ کوڈ بھیجا گیا۔';

  @override
  String get snackPasswordResetSentBody =>
      '6 ہندسوں کے ری سیٹ کوڈ کے لیے اپنا ای میل چیک کریں۔';

  @override
  String get snackPasswordResetFailed =>
      'ری سیٹ کوڈ نہیں بھیجا جا سکا۔ دوبارہ کوشش کریں۔';

  @override
  String get snackPasswordUpdated => 'پاس ورڈ اپ ڈیٹ ہو گیا۔';

  @override
  String get snackPasswordUpdatedBody =>
      'اپنے نئے پاس ورڈ کے ساتھ سائن ان کریں۔';

  @override
  String get snackPasswordResetInvalid => 'غلط یا ختم شدہ ری سیٹ کوڈ۔';

  @override
  String get otpDigitLabel => '6 عددی کوڈ';

  @override
  String receiveMoreFiles(int count) {
    return '+$count مزید فائلیں۔';
  }
}
