// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'పెద్ద వీడియో ఫైల్‌లను షేర్ చేయండి';

  @override
  String get heroAccent => 'తక్షణమే.';

  @override
  String get heroTitle => 'భారీ ఫైళ్లను పంపండి';

  @override
  String get splashLoading => 'లోడ్ అవుతోంది...';

  @override
  String get navSend => 'డాష్‌బోర్డ్';

  @override
  String get navHome => 'హోమ్';

  @override
  String get navHistory => 'చరిత్ర';

  @override
  String get navReceive => 'స్వీకరించండి';

  @override
  String get navPlans => 'ప్రణాళికలు';

  @override
  String get navDownload => 'డౌన్‌లోడ్ చేయండి';

  @override
  String get navSettings => 'సెట్టింగ్‌లు';

  @override
  String get modeLink => 'లింక్ పొందండి';

  @override
  String get modeEmail => 'ఇమెయిల్ ద్వారా పంపండి';

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
  String get pickFiles => 'ఫైల్‌లను ఎంచుకోండి';

  @override
  String get pickFolder => 'ఫోల్డర్‌ని ఎంచుకోండి';

  @override
  String get emailFrom => 'మీ ఇమెయిల్';

  @override
  String get mailFromUsesAccount =>
      'మీ సైన్ ఇన్ చేసిన ఇమెయిల్‌ను ఉపయోగిస్తుంది.';

  @override
  String get recipientEmailsHelper =>
      'బహుళ గ్రహీతలు: కామాలు, సెమికోలన్‌లు లేదా ఖాళీలతో వేరు చేయండి.';

  @override
  String get emailTo => 'స్వీకర్త ఇమెయిల్';

  @override
  String get messageOptional => 'సందేశం (ఐచ్ఛికం)';

  @override
  String get passwordOptional => 'పాస్‌వర్డ్ (ఐచ్ఛికం)';

  @override
  String get destructAfterDownload => 'డౌన్‌లోడ్ చేసిన తర్వాత తొలగించండి';

  @override
  String get destructNo => 'అందుబాటులో ఉంచుకోండి';

  @override
  String get sendButton => 'పంపండి';

  @override
  String get uploading => 'అప్‌లోడ్ చేస్తోంది...';

  @override
  String get uploadComplete => 'పూర్తయింది';

  @override
  String get shareLinkTitle => 'మీ లింక్';

  @override
  String get copyLink => 'లింక్‌ని కాపీ చేయండి';

  @override
  String get share => 'షేర్ చేయండి';

  @override
  String get shareQrCode => 'QR కోడ్‌ని షేర్ చేయండి';

  @override
  String get uploadMore => 'మరొకటి పంపండి';

  @override
  String get emailSentTitle => 'ఇమెయిల్‌లు పంపబడ్డాయి';

  @override
  String get verifyEmailTitle => 'మీ ఇమెయిల్‌ని ధృవీకరించండి';

  @override
  String get verifyCodeHint => 'మీ ఇమెయిల్ నుండి కోడ్‌ను నమోదు చేయండి';

  @override
  String get verifySubmit => 'ధృవీకరించండి';

  @override
  String get verifyResendCode => 'కోడ్‌ని మళ్లీ పంపండి';

  @override
  String get verifyCodeSent => 'మీ ఇమెయిల్‌కి కొత్త ధృవీకరణ కోడ్ పంపబడింది.';

  @override
  String get verifyEmailSmtpWarningTitle => 'ధృవీకరణ ఇమెయిల్ పంపబడకపోవచ్చు';

  @override
  String get verifyEmailSmtpWarningBody =>
      'సర్వర్ డెలివరీని నిర్ధారించలేకపోయింది (తరచుగా SMTP తప్పుగా కాన్ఫిగర్ చేయబడుతుంది). అడ్మిన్ ప్యానెల్‌లో మెయిల్ సెట్టింగ్‌లను తనిఖీ చేయమని మీ సైట్ అడ్మిన్‌ని అడగండి, ఆపై కోడ్‌ని మళ్లీ పంపు నొక్కండి.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'అది రాకపోతే: జంక్/స్పామ్ మరియు ప్రమోషన్‌లను తనిఖీ చేయండి, ఒక నిమిషం వేచి ఉండండి, $email అక్షరదోషాలు లేవని నిర్ధారించి, ఆపై మళ్లీ పంపు నొక్కండి.';
  }

  @override
  String get loginTitle => 'సైన్ ఇన్ చేయండి';

  @override
  String get signupHint =>
      'మీ సైట్ ఖాతా ఇమెయిల్ మరియు పాస్‌వర్డ్‌ని ఉపయోగించండి.';

  @override
  String get emailHint => 'ఇమెయిల్';

  @override
  String get passwordHint => 'పాస్వర్డ్';

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get signIn => 'సైన్ ఇన్ చేయండి';

  @override
  String get downloadIdHint => 'బదిలీ ID';

  @override
  String get privateIdHint => 'ప్రైవేట్ ID (ఐచ్ఛికం)';

  @override
  String get fetchTransfer => 'ఓపెన్ బదిలీ';

  @override
  String get downloadFile => 'డౌన్‌లోడ్ చేయండి';

  @override
  String get unlockDownload => 'డౌన్‌లోడ్‌ను అన్‌లాక్ చేయండి';

  @override
  String get downloadSaved => 'డౌన్‌లోడ్‌లకు సేవ్ చేయబడింది';

  @override
  String get errorGeneric => 'ఏదో తప్పు జరిగింది';

  @override
  String get errorNetwork => 'నెట్‌వర్క్ లోపం';

  @override
  String get errorBadResponse => 'ఊహించని సర్వర్ ప్రతిస్పందన';

  @override
  String get termsAccept => 'నేను నిబంధనలను అంగీకరిస్తున్నాను';

  @override
  String get settingsApiUrl => 'పబ్లిక్ సైట్ URL';

  @override
  String get settingsAccount => 'ఖాతా';

  @override
  String get settingsAppearance => 'స్వరూపం';

  @override
  String get settingsTheme => 'థీమ్';

  @override
  String get themeSystem => 'వ్యవస్థ';

  @override
  String get themeLight => 'కాంతి';

  @override
  String get themeDark => 'చీకటి';

  @override
  String get settingsSignedIn => 'మీరు సైన్ ఇన్ చేసారు.';

  @override
  String get settingsSignedOut => 'మీరు సైన్ ఇన్ చేయలేదు.';

  @override
  String get settingsOpenWebsite => 'వెబ్‌సైట్‌ను తెరవండి';

  @override
  String get signUp => 'సైన్ అప్ చేయండి';

  @override
  String get settingsLinks => 'లింకులు';

  @override
  String get privacyPolicy => 'గోప్యతా విధానం';

  @override
  String get termsOfService => 'సేవా నిబంధనలు';

  @override
  String get about => 'గురించి';

  @override
  String get moreApps => 'మరిన్ని యాప్‌లు';

  @override
  String get settingsLanguage => 'భాష';

  @override
  String get languageEnglish => 'ఇంగ్లీష్';

  @override
  String get languageHindi => 'హిందీ';

  @override
  String get logout => 'లాగ్ అవుట్ చేయండి';

  @override
  String get deleteAccount => 'ఖాతాను తొలగించండి';

  @override
  String get deleteAccountConfirmTitle => 'మీ ఖాతాను తొలగించాలా?';

  @override
  String get deleteAccountConfirmBody =>
      'ఇది మీ ఖాతాను శాశ్వతంగా తొలగిస్తుంది మరియు మిమ్మల్ని సైన్ అవుట్ చేస్తుంది. మీ బదిలీ లింక్‌లు పని చేస్తూనే ఉంటాయి, కానీ అవి మీ చరిత్రలో కనిపించవు.';

  @override
  String get deleteAccountSuccess => 'ఖాతా తొలగించబడింది';

  @override
  String get deleteAccountSuccessBody => 'మీ ఖాతా తీసివేయబడింది.';

  @override
  String get deleteAccountFailed => 'ఖాతాను తొలగించడం సాధ్యపడలేదు';

  @override
  String get deleteAccountFailedBody =>
      'దయచేసి మళ్లీ ప్రయత్నించండి లేదా మద్దతును సంప్రదించండి.';

  @override
  String get maxFilesReached => 'చాలా ఫైల్‌లు';

  @override
  String get fileTooLarge => 'ఫైల్ చాలా పెద్దది';

  @override
  String get ipLimit => 'ఈ నెట్‌వర్క్ నుండి చాలా ఎక్కువ అప్‌లోడ్‌లు ఉన్నాయి';

  @override
  String get fillFields => 'దయచేసి అవసరమైన ఫీల్డ్‌లను పూరించండి';

  @override
  String get invalidEmail => 'చెల్లని ఇమెయిల్';

  @override
  String get maxRecipientsReached => 'చాలా మంది గ్రహీతలు';

  @override
  String get loginRequiredTitle => 'సైన్ ఇన్ అవసరం';

  @override
  String get loginRequiredBody =>
      'ఈ సర్వర్‌కి అప్‌లోడ్ చేయడానికి లేదా డౌన్‌లోడ్ చేయడానికి ఖాతా అవసరం.';

  @override
  String get settingsSubtitle => 'యాప్ ప్రాధాన్యతలు మరియు ఖాతా.';

  @override
  String get dropHeavyFile => 'భారీ ఫైల్‌ను ఇక్కడ వదలండి.';

  @override
  String upToTotal(String max) {
    return 'మొత్తం $max వరకు';
  }

  @override
  String get removeAll => 'అన్నింటినీ తీసివేయండి';

  @override
  String get addFiles => 'ఫైల్‌లను జోడించండి';

  @override
  String get adding => 'జోడిస్తోంది...';

  @override
  String get options => 'ఎంపికలు';

  @override
  String get selfDestruct => 'డౌన్‌లోడ్ చేసిన తర్వాత స్వీయ-నాశనం';

  @override
  String get expiry => 'గడువు ముగిసింది';

  @override
  String get cancelUpload => 'అప్‌లోడ్‌ని రద్దు చేయండి';

  @override
  String get transferReady => 'బదిలీ సిద్ధంగా ఉంది!';

  @override
  String get emailSentReady => 'ఇమెయిల్ పంపబడింది!';

  @override
  String get shareRecipientHint => 'ఈ లింక్‌ని మీ గ్రహీతతో షేర్ చేయండి.';

  @override
  String get emailSentBody => 'మేము మీ స్వీకర్త(ల)కు తెలియజేసాము.';

  @override
  String get scanQr => 'బదిలీ లింక్‌ను తెరవడానికి స్కాన్ చేయండి.';

  @override
  String get shareLinkButton => 'లింక్ భాగస్వామ్యం చేయండి';

  @override
  String get verifyFourDigit =>
      'మీ పంపినవారి ఇమెయిల్‌కు పంపబడిన 4-అంకెల కోడ్‌ను నమోదు చేయండి.';

  @override
  String get starting => 'ప్రారంభిస్తోంది…';

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
    return '$amount MB మిగిలి ఉంది';
  }

  @override
  String get fillField => 'దయచేసి ఈ ఫీల్డ్‌ను పూరించండి.';

  @override
  String get enterValidEmail => 'చెల్లుబాటు అయ్యే ఇమెయిల్‌ను నమోదు చేయండి.';

  @override
  String get message => 'సందేశం';

  @override
  String get recipientEmail => 'స్వీకర్త ఇమెయిల్';

  @override
  String get active => 'చురుకుగా';

  @override
  String get expired => 'గడువు ముగిసింది';

  @override
  String get historyTitle => 'నా బదిలీలు';

  @override
  String get signInToSeeTransfers => 'మీ బదిలీలను చూడటానికి సైన్ ఇన్ చేయండి';

  @override
  String get signInTransfersBody =>
      'మీ ఖాతాకు బదిలీలను లింక్ చేయడానికి మేము మీ ఇమెయిల్‌ని ఉపయోగిస్తాము — పాస్‌వర్డ్ అవసరం లేదు.';

  @override
  String get couldNotLoadTransfers => 'బదిలీలను లోడ్ చేయడం సాధ్యపడలేదు';

  @override
  String get retry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get noTransfersYet => 'ఇంకా బదిలీలు లేవు';

  @override
  String get noTransfersBody =>
      'మీరు ఫైల్‌ను పంపిన తర్వాత, అది ఇక్కడ కనిపిస్తుంది.';

  @override
  String get transferDetails => 'బదిలీ వివరాలు';

  @override
  String get filesSection => 'ఫైళ్లు';

  @override
  String get receiveTitle => 'ఫైల్‌లను స్వీకరించండి';

  @override
  String get receiveSubtitle =>
      'ఫైల్‌లను డౌన్‌లోడ్ చేయడానికి బదిలీ లింక్‌ను అతికించండి.';

  @override
  String get pasteTooltip => 'అతికించండి';

  @override
  String get findTransfer => 'బదిలీని కనుగొనండి';

  @override
  String get receiveScanQr => 'QRని స్కాన్ చేయండి';

  @override
  String get receiveScanQrTitle => 'QR బదిలీని స్కాన్ చేయండి';

  @override
  String get receiveScanQrHint => 'ఫ్రేమ్ లోపల QR కోడ్‌ను సమలేఖనం చేయండి.';

  @override
  String get receiveScanQrInvalid =>
      'ఈ QR కోడ్ చెల్లుబాటు అయ్యే బదిలీ లింక్ కాదు.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR కోడ్‌లను స్కాన్ చేయడానికి కెమెరా యాక్సెస్ అవసరం.';

  @override
  String get receiveStepGetLink => 'లింక్ పొందండి';

  @override
  String get receiveStepGetLinkBody =>
      'మీతో బదిలీ లింక్‌ను షేర్ చేయమని పంపినవారిని అడగండి.';

  @override
  String get receiveStepPaste => 'అతికించండి & కనుగొనండి';

  @override
  String get receiveStepPasteBody =>
      'ఎగువ లింక్‌ను అతికించి, \"బదిలీని కనుగొను\" నొక్కండి.';

  @override
  String get receiveStepDownload => 'ఫైల్‌లను డౌన్‌లోడ్ చేయండి';

  @override
  String get receiveStepDownloadBody =>
      'ఫైల్ వివరాలను చూడండి మరియు అన్నింటినీ ఒకేసారి డౌన్‌లోడ్ చేయండి.';

  @override
  String get lookingUpTransfer => 'బదిలీ కోసం వెతుకుతోంది…';

  @override
  String get transferNotFound =>
      'బదిలీ కనుగొనబడలేదు. లింక్‌ని తనిఖీ చేసి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get transferExpired =>
      'ఈ బదిలీ గడువు ముగిసింది మరియు ఇకపై అందుబాటులో ఉండదు.';

  @override
  String get transferLoginRequired =>
      'ఈ బదిలీని యాక్సెస్ చేయడానికి సైన్ ఇన్ అవసరం.';

  @override
  String get transferBadResponse =>
      'ఊహించని సర్వర్ ప్రతిస్పందన. మీ కనెక్షన్‌ని తనిఖీ చేయండి.';

  @override
  String get transferNetworkError =>
      'నెట్‌వర్క్ లోపం. మీ ఇంటర్నెట్ కనెక్షన్‌ని తనిఖీ చేయండి.';

  @override
  String transferLoadFailed(String error) {
    return 'బదిలీని లోడ్ చేయడం సాధ్యపడలేదు: $error';
  }

  @override
  String get passwordProtected => 'పాస్‌వర్డ్ రక్షించబడింది';

  @override
  String get enterPassword => 'పాస్వర్డ్ను నమోదు చేయండి';

  @override
  String get unlock => 'అన్‌లాక్ చేయండి';

  @override
  String get downloading => 'డౌన్‌లోడ్ చేస్తోంది...';

  @override
  String get downloadAllFiles => 'అన్ని ఫైల్‌లను డౌన్‌లోడ్ చేయండి';

  @override
  String get downloadSingleFile => 'ఫైల్‌ని డౌన్‌లోడ్ చేయండి';

  @override
  String get receiveAnother => 'మరొక బదిలీని స్వీకరించండి';

  @override
  String get plansTitle => 'ప్రణాళికలు';

  @override
  String get plansSubtitle =>
      'ప్రకటనలను తీసివేయడానికి మరియు పెద్ద ఫైల్‌లను పంపడానికి అప్‌గ్రేడ్ చేయండి.';

  @override
  String get storeUnavailable => 'స్టోర్ అందుబాటులో లేదు';

  @override
  String get storeUnavailableBody =>
      'యాప్‌లో కొనుగోళ్లు ప్రస్తుతం అందుబాటులో లేవు.';

  @override
  String get storeLoadingPrices => 'యాప్ స్టోర్ నుండి ధరలను లోడ్ చేస్తోంది…';

  @override
  String get storePricesUnavailable => 'ధరలు అందుబాటులో లేవు';

  @override
  String get storePricesPartial => 'కొన్ని ధరలను లోడ్ చేయడం సాధ్యపడలేదు';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total యొక్క $loaded సబ్‌స్క్రిప్షన్ ఉత్పత్తులు లోడ్ చేయబడ్డాయి.';
  }

  @override
  String get storeSetupHint =>
      'నిజమైన iPhoneలో పరీక్షించండి (సిమ్యులేటర్ కాదు), శాండ్‌బాక్స్ Apple IDని ఉపయోగించండి మరియు ధర సెట్‌తో కనెక్ట్ అయ్యే యాప్ స్టోర్‌లో ఈ యాప్ బండిల్ ID కింద మొత్తం 6 సభ్యత్వాలు సృష్టించబడినట్లు నిర్ధారించుకోండి.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/నెల';
  }

  @override
  String get freeVersionAds =>
      'ప్రస్తుతం మీరు ప్రకటనలతో మా ఉచిత సంస్కరణను ఉపయోగిస్తున్నారు';

  @override
  String get restorePurchases => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get plansContinue => 'కొనసాగించు';

  @override
  String get planLinkRestore => 'పునరుద్ధరించు';

  @override
  String get termsAndConditions => 'నిబంధనలు మరియు షరతులు';

  @override
  String get createAccountTitle => 'ఖాతాను సృష్టించండి';

  @override
  String get signUpSubtitle => 'ఇమెయిల్ మరియు పాస్‌వర్డ్‌తో సైన్ అప్ చేయండి.';

  @override
  String get confirmPassword => 'పాస్వర్డ్ను నిర్ధారించండి';

  @override
  String get passwordMin8 => 'పాస్‌వర్డ్ (నిమిషం 8 అక్షరాలు)';

  @override
  String get alreadyHaveAccount => 'ఇప్పటికే ఖాతా ఉందా?';

  @override
  String get checkEmailTitle => 'మీ తనిఖీ\nఇమెయిల్';

  @override
  String otpSentTo(String email) {
    return 'మేము 6 అంకెల కోడ్‌ని పంపాము\n$email';
  }

  @override
  String get verifyAndSignIn => 'ధృవీకరించండి & సైన్ ఇన్ చేయండి';

  @override
  String get didntReceiveCode => 'అందుకోలేదా?';

  @override
  String get tryAgain => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get otpExpiresHint =>
      'కోడ్ గడువు 5 నిమిషాల్లో ముగుస్తుంది. మీ స్పామ్ ఫోల్డర్ మీకు కనిపించకుంటే దాన్ని తనిఖీ చేయండి.';

  @override
  String get snackError => 'లోపం';

  @override
  String get snackCopied => 'కాపీ చేయబడింది';

  @override
  String get snackCopiedBody => 'లింక్ క్లిప్‌బోర్డ్‌కి కాపీ చేయబడింది';

  @override
  String get snackWelcome => 'స్వాగతం';

  @override
  String get snackAccountCreated => 'ఖాతా సృష్టించబడింది';

  @override
  String get snackEnterEmail => 'దయచేసి మీ ఇమెయిల్‌ని నమోదు చేయండి';

  @override
  String get snackEnterPassword => 'దయచేసి మీ పాస్‌వర్డ్‌ని నమోదు చేయండి';

  @override
  String get snackInvalidEmail => 'చెల్లని ఇమెయిల్ చిరునామా';

  @override
  String get snackInvalidCredentials => 'తప్పు ఇమెయిల్ లేదా పాస్‌వర్డ్';

  @override
  String get snackPasswordMin8 =>
      'పాస్‌వర్డ్ తప్పనిసరిగా కనీసం 8 అక్షరాలు ఉండాలి';

  @override
  String get snackPasswordMismatch => 'పాస్‌వర్డ్‌లు సరిపోలడం లేదు.';

  @override
  String get snackAccountExists =>
      'ఖాతా ఇప్పటికే ఉంది. దయచేసి సైన్ ఇన్ చేయండి.';

  @override
  String get snackSignupFailed =>
      'ఖాతాను సృష్టించడం సాధ్యపడలేదు. మళ్లీ ప్రయత్నించండి.';

  @override
  String get snackEnterOtp => 'దయచేసి 6-అంకెల కోడ్‌ను నమోదు చేయండి';

  @override
  String get snackOtpExpired => 'కోడ్ గడువు ముగిసింది';

  @override
  String get snackOtpExpiredBody => 'దయచేసి కొత్త కోడ్‌ను అభ్యర్థించండి.';

  @override
  String get snackInvalidCode => 'చెల్లని కోడ్';

  @override
  String get snackInvalidCodeBody => 'కోడ్ తప్పు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get snackSendCodeFailed =>
      'కోడ్‌ని పంపడం సాధ్యపడలేదు. మీ కనెక్షన్‌ని తనిఖీ చేసి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get snackEmptyFolder => 'ఖాళీ ఫోల్డర్';

  @override
  String get snackEmptyFolderBody =>
      'ఎంచుకున్న ఫోల్డర్‌లో ఫైల్‌లు ఏవీ కనుగొనబడలేదు.';

  @override
  String get snackFolderUnsupported => 'మద్దతు లేదు';

  @override
  String get snackFolderUnsupportedBody =>
      'ఈ ప్లాట్‌ఫారమ్‌లో ఫోల్డర్ అప్‌లోడ్ అందుబాటులో లేదు.';

  @override
  String get snackFolderReadError => 'ఎంచుకున్న ఫోల్డర్‌ని చదవడం సాధ్యపడలేదు.';

  @override
  String get snackLimitReached => 'పరిమితిని చేరుకున్నారు';

  @override
  String get snackLimitFilesBody =>
      'పరిమాణం లేదా ఫైల్ కౌంట్ పరిమితుల కారణంగా కొన్ని ఫైల్‌లు జోడించబడలేదు.';

  @override
  String get snackFreePlanLimit =>
      'ఉచిత ప్లాన్ ప్రతి బదిలీకి 5GB వరకు అనుమతిస్తుంది. దయచేసి కొన్ని ఫైల్‌లను తీసివేయండి లేదా అప్‌గ్రేడ్ చేయండి.';

  @override
  String get snackSignInEmail =>
      'ఇమెయిల్ ద్వారా పంపడానికి దయచేసి సైన్ ఇన్ చేయండి.';

  @override
  String get snackUploadStartFailed => 'అప్‌లోడ్ ప్రారంభించడం సాధ్యపడలేదు.';

  @override
  String get snackVerifyEnterCode =>
      'మీ ఇమెయిల్ నుండి 4-అంకెల కోడ్‌ను నమోదు చేయండి.';

  @override
  String get snackVerifyInvalid =>
      'చెల్లని లేదా గడువు ముగిసిన కోడ్. ఇమెయిల్‌ని తనిఖీ చేసి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get snackVerifyResendFailed =>
      'కోడ్‌ని మళ్లీ పంపడం సాధ్యపడలేదు. మళ్లీ ప్రయత్నించండి.';

  @override
  String get snackDownloadComplete => 'డౌన్‌లోడ్ పూర్తయింది';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" డౌన్‌లోడ్‌లకు సేవ్ చేయబడింది';
  }

  @override
  String get snackDownloadFailed => 'డౌన్‌లోడ్ విఫలమైంది';

  @override
  String get snackSaved => 'సేవ్ చేయబడింది';

  @override
  String get snackServerUrlUpdated =>
      'సర్వర్ URL నవీకరించబడింది. దరఖాస్తు చేయడానికి యాప్‌ని రీస్టార్ట్ చేయండి.';

  @override
  String get snackStoreError => 'స్టోర్ లోపం';

  @override
  String get snackMissingProducts => 'ఉత్పత్తులు లేవు';

  @override
  String get snackStoreUnavailable => 'స్టోర్ అందుబాటులో లేదు';

  @override
  String get snackStoreUnavailableBody =>
      'ఈ పరికరంలో యాప్‌లో కొనుగోళ్లు అందుబాటులో లేవు.';

  @override
  String get snackProductNotLoaded => 'ఉత్పత్తి ఇంకా లోడ్ కాలేదు.';

  @override
  String get snackRestoreStarted => 'పునరుద్ధరణ ప్రారంభమైంది';

  @override
  String get snackRestoreStartedBody =>
      'మేము మీ కొనుగోళ్లను తనిఖీ చేస్తున్నాము.';

  @override
  String get snackRestoreFailed => 'పునరుద్ధరించడం విఫలమైంది';

  @override
  String get snackProcessing => 'ప్రాసెసింగ్';

  @override
  String get snackPleaseWait => 'దయచేసి వేచి ఉండండి…';

  @override
  String get snackSuccess => 'విజయం';

  @override
  String get snackPurchaseCompleted => 'కొనుగోలు పూర్తయింది.';

  @override
  String get snackPurchaseError => 'కొనుగోలు లోపం';

  @override
  String get snackPurchaseFailed => 'కొనుగోలు విఫలమైంది.';

  @override
  String get snackCanceled => 'రద్దు చేయబడింది';

  @override
  String get snackPurchaseCanceled => 'కొనుగోలు రద్దు చేయబడింది.';

  @override
  String get snackUpload => 'అప్‌లోడ్ చేయండి';

  @override
  String get snackVerify => 'ధృవీకరించండి';

  @override
  String get doNotExpire => 'గడువు ముగియవద్దు';

  @override
  String get hourSingular => 'గంట';

  @override
  String get hourPlural => 'గంటలు';

  @override
  String get daySingular => 'రోజు';

  @override
  String get dayPlural => 'రోజులు';

  @override
  String get emailAddressLabel => 'ఇమెయిల్ చిరునామా';

  @override
  String get passwordLabelCaps => 'పాస్వర్డ్';

  @override
  String get confirmPasswordLabelCaps => 'పాస్‌వర్డ్‌ని నిర్ధారించండి';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'లింక్ లేదా IDని బదిలీ చేయండి';

  @override
  String get howToReceive => 'ఎలా స్వీకరించాలి';

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
  String get planAdsTitle => 'ప్రకటనల ప్రణాళిక';

  @override
  String get planAdsBullet1 => 'ప్రకటనలు లేని యాప్‌కి యాక్సెస్';

  @override
  String get planAdsBullet2 => 'అన్ని ప్రకటనలను తీసివేయండి';

  @override
  String get planProTitle => 'ప్రో ప్లాన్';

  @override
  String get planProBullet1 => '20GB వరకు ఫైల్‌లను పంపండి';

  @override
  String get planProBullet2 => 'వేగవంతమైన అప్‌లోడ్';

  @override
  String get planPremiumTitle => 'ప్రీమియం ప్లాన్';

  @override
  String get planPremiumBullet1 => '100GB వరకు ఫైల్‌లను పంపండి';

  @override
  String get planPremiumBullet2 => 'సూపర్ ఫాస్ట్ అప్‌లోడ్';

  @override
  String get planSubscriptionDisclaimer =>
      'ట్రయల్ పీరియడ్ లేదు — అదనపు యాప్ ఫంక్షనాలిటీని ఉపయోగించడానికి సబ్‌స్క్రిప్షన్ అవసరం. మీకు వెంటనే ఛార్జీ విధించబడుతుంది. మీరు ఎప్పుడైనా రద్దు చేయవచ్చు.';

  @override
  String get perMonth => '/ నెల';

  @override
  String get perYear => '/ సంవత్సరం';

  @override
  String get snackConnectionProblem =>
      'కనెక్షన్ సమస్య. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get networkTitle => 'నెట్‌వర్క్';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ఫైల్‌లు: $count · $size బైట్‌లు';
  }

  @override
  String todayAt(String time) {
    return 'ఈరోజు · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'నిన్న · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysరోజు క్రితం · $time';
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
    return '$sent / $total • $remaining మిగిలి ఉంది';
  }

  @override
  String get loadingShort => 'లోడ్ అవుతోంది...';

  @override
  String get colorPaletteTitle => 'రంగుల పాలెట్';

  @override
  String get colorPaletteSectionBackgrounds => 'నేపథ్యాలు (ఇంక్ స్కేల్)';

  @override
  String get colorPaletteSectionAccent => 'యాస / ప్రాథమిక';

  @override
  String get colorPaletteSectionText => 'వచనం';

  @override
  String get colorPaletteSectionBorders => 'సరిహద్దులు & గాజు';

  @override
  String get colorPaletteSectionSemantic => 'అర్థసంబంధమైన';

  @override
  String get colorPaletteSectionLive => 'లైవ్ థీమ్ (ప్రస్తుతం)';

  @override
  String get colorPaletteActiveHint =>
      '★ = స్క్రీన్‌లలో చురుకుగా ఉపయోగించబడుతుంది';

  @override
  String get colorPaletteCopyHint =>
      'హెక్స్ విలువను కాపీ చేయడానికి ఏదైనా స్వాచ్‌ని ఎక్కువసేపు నొక్కండి.';

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
  String get settingsAppBrand => 'పెద్దగా షేర్ చేయండి\nవీడియో ఫైల్స్';

  @override
  String get loginEmailPasswordPrompt =>
      'సైన్ ఇన్ చేయడానికి మీ ఇమెయిల్ మరియు పాస్‌వర్డ్‌ని నమోదు చేయండి.';

  @override
  String get forgotPassword => 'పాస్‌వర్డ్ మర్చిపోయారా?';

  @override
  String get forgotPasswordTitle => 'పాస్వర్డ్ను రీసెట్ చేయండి';

  @override
  String get forgotPasswordBody =>
      'మీ ఖాతా ఇమెయిల్‌ను నమోదు చేయండి మరియు మేము రీసెట్ కోడ్‌ను పంపుతాము.';

  @override
  String get forgotPasswordSubmit => 'రీసెట్ కోడ్‌ని పంపండి';

  @override
  String get resetPasswordTitle => 'కొత్త పాస్‌వర్డ్‌ని సృష్టించండి';

  @override
  String get resetPasswordBody =>
      'మీ ఇమెయిల్ నుండి 6-అంకెల కోడ్‌ను నమోదు చేసి, కొత్త పాస్‌వర్డ్‌ను ఎంచుకోండి.';

  @override
  String get resetPasswordSubmit => 'పాస్వర్డ్ను నవీకరించండి';

  @override
  String get snackPasswordResetSent => 'రీసెట్ కోడ్ పంపబడింది';

  @override
  String get snackPasswordResetSentBody =>
      '6-అంకెల రీసెట్ కోడ్ కోసం మీ ఇమెయిల్‌ను తనిఖీ చేయండి.';

  @override
  String get snackPasswordResetFailed =>
      'రీసెట్ కోడ్‌ని పంపడం సాధ్యపడలేదు. మళ్లీ ప్రయత్నించండి.';

  @override
  String get snackPasswordUpdated => 'పాస్‌వర్డ్ నవీకరించబడింది';

  @override
  String get snackPasswordUpdatedBody =>
      'మీ కొత్త పాస్‌వర్డ్‌తో సైన్ ఇన్ చేయండి.';

  @override
  String get snackPasswordResetInvalid =>
      'చెల్లని లేదా గడువు ముగిసిన రీసెట్ కోడ్.';

  @override
  String get otpDigitLabel => '6-అంకెల కోడ్';

  @override
  String receiveMoreFiles(int count) {
    return '+$count మరిన్ని ఫైల్‌లు';
  }
}
