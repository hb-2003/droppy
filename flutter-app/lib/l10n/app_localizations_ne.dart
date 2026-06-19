// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'ठूला भिडियो फाइलहरू साझेदारी गर्नुहोस्';

  @override
  String get heroAccent => 'तुरुन्तै।';

  @override
  String get heroTitle => 'भारी फाइलहरू पठाउनुहोस्';

  @override
  String get splashLoading => 'लोड हुँदै...';

  @override
  String get navSend => 'ड्यासबोर्ड';

  @override
  String get navHome => 'घर';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get navReceive => 'प्राप्त गर्नुहोस्';

  @override
  String get navPlans => 'योजनाहरू';

  @override
  String get navDownload => 'डाउनलोड गर्नुहोस्';

  @override
  String get navSettings => 'सेटिङहरू';

  @override
  String get modeLink => 'लिङ्क प्राप्त गर्नुहोस्';

  @override
  String get modeEmail => 'इमेल मार्फत पठाउनुहोस्';

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
  String get pickFiles => 'फाइलहरू छान्नुहोस्';

  @override
  String get pickFolder => 'फोल्डर छान्नुहोस्';

  @override
  String get emailFrom => 'तपाईको इमेल';

  @override
  String get mailFromUsesAccount => 'तपाईंको साइन-इन इमेल प्रयोग गर्दछ।';

  @override
  String get recipientEmailsHelper =>
      'बहु प्राप्तकर्ताहरू: अल्पविराम, अर्धविराम, वा खाली ठाउँहरूसँग अलग गर्नुहोस्।';

  @override
  String get emailTo => 'प्रापक इमेल';

  @override
  String get messageOptional => 'सन्देश (वैकल्पिक)';

  @override
  String get passwordOptional => 'पासवर्ड (वैकल्पिक)';

  @override
  String get destructAfterDownload => 'डाउनलोड पछि मेट्नुहोस्';

  @override
  String get destructNo => 'उपलब्ध राख्नुहोस्';

  @override
  String get sendButton => 'पठाउनुहोस्';

  @override
  String get uploading => 'अपलोड गर्दै...';

  @override
  String get uploadComplete => 'सकियो';

  @override
  String get shareLinkTitle => 'तपाईंको लिङ्क';

  @override
  String get copyLink => 'लिङ्क प्रतिलिपि गर्नुहोस्';

  @override
  String get share => 'सेयर गर्नुहोस्';

  @override
  String get shareQrCode => 'QR कोड साझा गर्नुहोस्';

  @override
  String get uploadMore => 'अर्को पठाउनुहोस्';

  @override
  String get emailSentTitle => 'इमेलहरू पठाइयो';

  @override
  String get verifyEmailTitle => 'आफ्नो इमेल प्रमाणित गर्नुहोस्';

  @override
  String get verifyCodeHint => 'आफ्नो इमेल बाट कोड प्रविष्ट गर्नुहोस्';

  @override
  String get verifySubmit => 'प्रमाणित गर्नुहोस्';

  @override
  String get verifyResendCode => 'कोड पुन: पठाउनुहोस्';

  @override
  String get verifyCodeSent =>
      'तपाईंको इमेलमा एउटा नयाँ प्रमाणीकरण कोड पठाइएको थियो।';

  @override
  String get verifyEmailSmtpWarningTitle => 'प्रमाणीकरण इमेल नपठाएको हुन सक्छ';

  @override
  String get verifyEmailSmtpWarningBody =>
      'सर्भरले डेलिभरी पुष्टि गर्न सकेन (प्रायः SMTP गलत कन्फिगर हुन्छ)। आफ्नो साइट प्रशासकलाई व्यवस्थापक प्यानलमा मेल सेटिङहरू जाँच गर्न सोध्नुहोस्, त्यसपछि कोड पुन: पठाउनुहोस् ट्याप गर्नुहोस्।';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'यदि यो आइपुग्दैन भने: जंक/स्प्याम र प्रमोशनहरू जाँच गर्नुहोस्, एक मिनेट पर्खनुहोस्, पुष्टि गर्नुहोस् $email कुनै टाइपो छैन, त्यसपछि पुन: पठाउनुहोस् ट्याप गर्नुहोस्।';
  }

  @override
  String get loginTitle => 'साइन इन गर्नुहोस्';

  @override
  String get signupHint => 'आफ्नो साइट खाता इमेल र पासवर्ड प्रयोग गर्नुहोस्।';

  @override
  String get emailHint => 'इमेल';

  @override
  String get passwordHint => 'पासवर्ड';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get signIn => 'साइन इन गर्नुहोस्';

  @override
  String get downloadIdHint => 'स्थानान्तरण आईडी';

  @override
  String get privateIdHint => 'निजी आईडी (वैकल्पिक)';

  @override
  String get fetchTransfer => 'ओपन ट्रान्सफर';

  @override
  String get downloadFile => 'डाउनलोड गर्नुहोस्';

  @override
  String get unlockDownload => 'डाउनलोड अनलक गर्नुहोस्';

  @override
  String get downloadSaved => 'डाउनलोडहरूमा सुरक्षित गरियो';

  @override
  String get errorGeneric => 'केही गडबड भयो';

  @override
  String get errorNetwork => 'नेटवर्क त्रुटि';

  @override
  String get errorBadResponse => 'अप्रत्याशित सर्भर प्रतिक्रिया';

  @override
  String get termsAccept => 'म सर्तहरूमा सहमत छु';

  @override
  String get settingsApiUrl => 'सार्वजनिक साइट URL';

  @override
  String get settingsAccount => 'खाता';

  @override
  String get settingsAppearance => 'उपस्थिति';

  @override
  String get settingsTheme => 'विषयवस्तु';

  @override
  String get themeSystem => 'प्रणाली';

  @override
  String get themeLight => 'उज्यालो';

  @override
  String get themeDark => 'अँध्यारो';

  @override
  String get settingsSignedIn => 'तपाईं साइन इन हुनुहुन्छ।';

  @override
  String get settingsSignedOut => 'तपाईं साइन इन हुनुहुन्न।';

  @override
  String get settingsOpenWebsite => 'वेबसाइट खोल्नुहोस्';

  @override
  String get signUp => 'साइन अप गर्नुहोस्';

  @override
  String get settingsLinks => 'लिङ्कहरू';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get termsOfService => 'सेवाका सर्तहरू';

  @override
  String get about => 'बारे';

  @override
  String get moreApps => 'थप एपहरू';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get languageEnglish => 'अंग्रेजी';

  @override
  String get languageHindi => 'हिन्दी';

  @override
  String get logout => 'लग आउट गर्नुहोस्';

  @override
  String get deleteAccount => 'खाता मेटाउनुहोस्';

  @override
  String get deleteAccountConfirmTitle => 'आफ्नो खाता मेट्ने हो?';

  @override
  String get deleteAccountConfirmBody =>
      'यसले तपाईंको खाता स्थायी रूपमा मेटाउँछ र तपाईंलाई साइन आउट गर्छ। तपाईंको स्थानान्तरण लिङ्कहरूले काम गरिरहनेछन्, तर तिनीहरू अब तपाईंको इतिहासमा देखा पर्ने छैनन्।';

  @override
  String get deleteAccountSuccess => 'खाता मेटाइयो';

  @override
  String get deleteAccountSuccessBody => 'तपाईंको खाता हटाइयो।';

  @override
  String get deleteAccountFailed => 'खाता मेटाउन सकिएन';

  @override
  String get deleteAccountFailedBody =>
      'कृपया पुन: प्रयास गर्नुहोस् वा समर्थनलाई सम्पर्क गर्नुहोस्।';

  @override
  String get maxFilesReached => 'धेरै फाइलहरू';

  @override
  String get fileTooLarge => 'फाइल धेरै ठूलो छ';

  @override
  String get ipLimit => 'यस नेटवर्कबाट धेरै अपलोडहरू';

  @override
  String get fillFields => 'कृपया आवश्यक क्षेत्रहरू भर्नुहोस्';

  @override
  String get invalidEmail => 'अवैध इमेल';

  @override
  String get maxRecipientsReached => 'धेरै प्राप्तकर्ताहरू';

  @override
  String get loginRequiredTitle => 'साइन इन आवश्यक छ';

  @override
  String get loginRequiredBody =>
      'यो सर्भरलाई अपलोड वा डाउनलोड गर्न खाता चाहिन्छ।';

  @override
  String get settingsSubtitle => 'एप प्राथमिकताहरू र खाता।';

  @override
  String get dropHeavyFile => 'भारी फाइल यहाँ छोड्नुहोस्।';

  @override
  String upToTotal(String max) {
    return 'कुल $max सम्म';
  }

  @override
  String get removeAll => 'सबै हटाउनुहोस्';

  @override
  String get addFiles => 'फाइलहरू थप्नुहोस्';

  @override
  String get adding => 'थप्दै...';

  @override
  String get options => 'विकल्पहरू';

  @override
  String get selfDestruct => 'डाउनलोड पछि आत्म-विनाश';

  @override
  String get expiry => 'म्याद समाप्त';

  @override
  String get cancelUpload => 'अपलोड रद्द गर्नुहोस्';

  @override
  String get transferReady => 'स्थानान्तरण तयार छ!';

  @override
  String get emailSentReady => 'इमेल पठाइयो!';

  @override
  String get shareRecipientHint => 'आफ्नो प्रापकसँग यो लिङ्क साझा गर्नुहोस्।';

  @override
  String get emailSentBody => 'हामीले तपाईंको प्रापक(हरू) लाई सूचित गरेका छौं।';

  @override
  String get scanQr => 'स्थानान्तरण लिङ्क खोल्न स्क्यान गर्नुहोस्।';

  @override
  String get shareLinkButton => 'LINK SHARE गर्नुहोस्';

  @override
  String get verifyFourDigit =>
      'तपाईंको प्रेषक इमेलमा पठाइएको 4-अङ्कको कोड प्रविष्ट गर्नुहोस्।';

  @override
  String get starting => 'सुरु हुँदै…';

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
    return '$amount MB बाँकी';
  }

  @override
  String get fillField => 'कृपया यो फिल्ड भर्नुहोस्।';

  @override
  String get enterValidEmail => 'वैध इमेल प्रविष्ट गर्नुहोस्।';

  @override
  String get message => 'सन्देश';

  @override
  String get recipientEmail => 'प्रापक इमेल';

  @override
  String get active => 'सक्रिय';

  @override
  String get expired => 'म्याद सकियो';

  @override
  String get historyTitle => 'मेरो स्थानान्तरण';

  @override
  String get signInToSeeTransfers =>
      'आफ्नो स्थानान्तरण हेर्न साइन इन गर्नुहोस्';

  @override
  String get signInTransfersBody =>
      'हामी तपाईंको खातामा स्थानान्तरणहरू लिङ्क गर्न तपाईंको इमेल प्रयोग गर्छौं — कुनै पासवर्ड आवश्यक छैन।';

  @override
  String get couldNotLoadTransfers => 'स्थानान्तरण लोड गर्न सकिएन';

  @override
  String get retry => 'पुन: प्रयास गर्नुहोस्';

  @override
  String get noTransfersYet => 'अझै कुनै स्थानान्तरण छैन';

  @override
  String get noTransfersBody => 'तपाईंले फाइल पठाउनुभएपछि, यो यहाँ देखिनेछ।';

  @override
  String get transferDetails => 'स्थानान्तरण विवरण';

  @override
  String get filesSection => 'फाइलहरू';

  @override
  String get receiveTitle => 'फाइलहरू प्राप्त गर्नुहोस्';

  @override
  String get receiveSubtitle =>
      'फाइलहरू डाउनलोड गर्न स्थानान्तरण लिङ्क टाँस्नुहोस्।';

  @override
  String get pasteTooltip => 'टाँस्नुहोस्';

  @override
  String get findTransfer => 'स्थानान्तरण खोज्नुहोस्';

  @override
  String get receiveScanQr => 'QR स्क्यान गर्नुहोस्';

  @override
  String get receiveScanQrTitle => 'स्थानान्तरण QR स्क्यान गर्नुहोस्';

  @override
  String get receiveScanQrHint => 'फ्रेम भित्र QR कोड पङ्क्तिबद्ध गर्नुहोस्।';

  @override
  String get receiveScanQrInvalid => 'यो QR कोड मान्य स्थानान्तरण लिङ्क होइन।';

  @override
  String get receiveScanQrCameraDenied =>
      'QR कोडहरू स्क्यान गर्न क्यामेरा पहुँच आवश्यक छ।';

  @override
  String get receiveStepGetLink => 'लिङ्क प्राप्त गर्नुहोस्';

  @override
  String get receiveStepGetLinkBody =>
      'प्रेषकलाई तपाईसँग स्थानान्तरण लिङ्क साझेदारी गर्न सोध्नुहोस्।';

  @override
  String get receiveStepPaste => 'टाँस्नुहोस् र फेला पार्नुहोस्';

  @override
  String get receiveStepPasteBody =>
      'माथिको लिङ्क टाँस्नुहोस् र \"स्थानान्तरण खोज्नुहोस्\" मा ट्याप गर्नुहोस्।';

  @override
  String get receiveStepDownload => 'फाइलहरू डाउनलोड गर्नुहोस्';

  @override
  String get receiveStepDownloadBody =>
      'फाइल विवरण हेर्नुहोस् र एकैचोटि सबै डाउनलोड गर्नुहोस्।';

  @override
  String get lookingUpTransfer => 'स्थानान्तरण खोज्दै...';

  @override
  String get transferNotFound =>
      'स्थानान्तरण फेला परेन। लिङ्क जाँच गर्नुहोस् र फेरि प्रयास गर्नुहोस्।';

  @override
  String get transferExpired =>
      'यो स्थानान्तरणको म्याद सकिएको छ र अब उपलब्ध छैन।';

  @override
  String get transferLoginRequired =>
      'यो स्थानान्तरण पहुँच गर्न साइन इन आवश्यक छ।';

  @override
  String get transferBadResponse =>
      'अप्रत्याशित सर्भर प्रतिक्रिया। आफ्नो जडान जाँच गर्नुहोस्।';

  @override
  String get transferNetworkError =>
      'नेटवर्क त्रुटि। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String transferLoadFailed(String error) {
    return 'स्थानान्तरण लोड गर्न सकिएन: $error';
  }

  @override
  String get passwordProtected => 'पासवर्ड सुरक्षित';

  @override
  String get enterPassword => 'पासवर्ड प्रविष्ट गर्नुहोस्';

  @override
  String get unlock => 'अनलक गर्नुहोस्';

  @override
  String get downloading => 'डाउनलोड गर्दै...';

  @override
  String get downloadAllFiles => 'सबै फाइलहरू डाउनलोड गर्नुहोस्';

  @override
  String get downloadSingleFile => 'फाइल डाउनलोड गर्नुहोस्';

  @override
  String get receiveAnother => 'अर्को स्थानान्तरण प्राप्त गर्नुहोस्';

  @override
  String get plansTitle => 'योजनाहरू';

  @override
  String get plansSubtitle =>
      'विज्ञापनहरू हटाउन र ठूला फाइलहरू पठाउन अपग्रेड गर्नुहोस्।';

  @override
  String get storeUnavailable => 'स्टोर उपलब्ध छैन';

  @override
  String get storeUnavailableBody => 'इन-एप खरिदहरू अहिले उपलब्ध छैनन्।';

  @override
  String get storeLoadingPrices => 'एप स्टोरबाट मूल्यहरू लोड गर्दै...';

  @override
  String get storePricesUnavailable => 'मूल्यहरू उपलब्ध छैनन्';

  @override
  String get storePricesPartial => 'केही मूल्यहरू लोड गर्न सकिएन';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded को $total सदस्यता उत्पादनहरू लोड गरियो।';
  }

  @override
  String get storeSetupHint =>
      'वास्तविक आईफोनमा परीक्षण गर्नुहोस् (सिम्युलेटर होइन), स्यान्डबक्स एप्पल आईडी प्रयोग गर्नुहोस्, र मूल्य निर्धारण सेटको साथ एप स्टोर जडानमा यस एपको बन्डल आईडी अन्तर्गत सबै 6 सदस्यताहरू सिर्जना गरिएको सुनिश्चित गर्नुहोस्।';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/महिना';
  }

  @override
  String get freeVersionAds =>
      'हाल तपाईं विज्ञापनहरूको साथ हाम्रो नि: शुल्क संस्करण प्रयोग गर्दै हुनुहुन्छ';

  @override
  String get restorePurchases => 'खरिदहरू पुनर्स्थापित गर्नुहोस्';

  @override
  String get plansContinue => 'जारी राख्नुहोस्';

  @override
  String get planLinkRestore => 'पुनर्स्थापना गर्नुहोस्';

  @override
  String get termsAndConditions => 'नियम र सर्तहरू';

  @override
  String get createAccountTitle => 'खाता सिर्जना गर्नुहोस्';

  @override
  String get signUpSubtitle => 'इमेल र पासवर्डको साथ साइन अप गर्नुहोस्।';

  @override
  String get confirmPassword => 'पासवर्ड पुष्टि गर्नुहोस्';

  @override
  String get passwordMin8 => 'पासवर्ड (न्यूनतम 8 वर्ण)';

  @override
  String get alreadyHaveAccount => 'पहिले नै खाता छ?';

  @override
  String get checkEmailTitle => 'आफ्नो जाँच गर्नुहोस्\nइमेल';

  @override
  String otpSentTo(String email) {
    return 'हामीले ६ अंकको कोड पठाएका छौं\n$email';
  }

  @override
  String get verifyAndSignIn => 'प्रमाणित गर्नुहोस् र साइन इन गर्नुहोस्';

  @override
  String get didntReceiveCode => 'प्राप्त गर्नुभएन?';

  @override
  String get tryAgain => 'पुन: प्रयास गर्नुहोस्';

  @override
  String get otpExpiresHint =>
      'कोड 5 मिनेटमा समाप्त हुन्छ। यदि तपाईंले यो देख्नुभएन भने आफ्नो स्प्याम फोल्डर जाँच गर्नुहोस्।';

  @override
  String get snackError => 'त्रुटि';

  @override
  String get snackCopied => 'प्रतिलिपि गरियो';

  @override
  String get snackCopiedBody => 'लिंक क्लिपबोर्डमा प्रतिलिपि गरियो';

  @override
  String get snackWelcome => 'स्वागत छ';

  @override
  String get snackAccountCreated => 'खाता बनाइयो';

  @override
  String get snackEnterEmail => 'कृपया आफ्नो इमेल प्रविष्ट गर्नुहोस्';

  @override
  String get snackEnterPassword => 'कृपया आफ्नो पासवर्ड प्रविष्ट गर्नुहोस्';

  @override
  String get snackInvalidEmail => 'अवैध इमेल ठेगाना';

  @override
  String get snackInvalidCredentials => 'गलत इमेल वा पासवर्ड';

  @override
  String get snackPasswordMin8 => 'पासवर्ड कम्तिमा 8 वर्णको हुनुपर्छ';

  @override
  String get snackPasswordMismatch => 'पासवर्डहरू मेल खाँदैनन्।';

  @override
  String get snackAccountExists =>
      'खाता पहिल्यै अवस्थित छ। कृपया साइन इन गर्नुहोस्।';

  @override
  String get snackSignupFailed => 'खाता बनाउन सकिएन। पुन: प्रयास गर्नुहोस्।';

  @override
  String get snackEnterOtp => 'कृपया ६ अंकको कोड प्रविष्ट गर्नुहोस्';

  @override
  String get snackOtpExpired => 'कोडको म्याद सकियो';

  @override
  String get snackOtpExpiredBody => 'कृपया नयाँ कोड अनुरोध गर्नुहोस्।';

  @override
  String get snackInvalidCode => 'अवैध कोड';

  @override
  String get snackInvalidCodeBody => 'कोड गलत छ। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get snackSendCodeFailed =>
      'कोड पठाउन सकिएन। आफ्नो जडान जाँच गर्नुहोस् र फेरि प्रयास गर्नुहोस्।';

  @override
  String get snackEmptyFolder => 'खाली फोल्डर';

  @override
  String get snackEmptyFolderBody => 'चयन गरिएको फोल्डरमा कुनै फाइल फेला परेन।';

  @override
  String get snackFolderUnsupported => 'समर्थित छैन';

  @override
  String get snackFolderUnsupportedBody =>
      'यस प्लेटफर्ममा फोल्डर अपलोड उपलब्ध छैन।';

  @override
  String get snackFolderReadError => 'चयन गरिएको फोल्डर पढ्न सकिएन।';

  @override
  String get snackLimitReached => 'सीमा पुग्यो';

  @override
  String get snackLimitFilesBody =>
      'केही फाइलहरू आकार वा फाइल गणना सीमाहरूको कारण थपिएका थिएनन्।';

  @override
  String get snackFreePlanLimit =>
      'नि: शुल्क योजना प्रति स्थानान्तरण 5GB सम्म अनुमति दिन्छ। कृपया केही फाइलहरू हटाउनुहोस् वा अपग्रेड गर्नुहोस्।';

  @override
  String get snackSignInEmail => 'इमेल मार्फत पठाउन कृपया साइन इन गर्नुहोस्।';

  @override
  String get snackUploadStartFailed => 'अपलोड सुरु गर्न सकिएन।';

  @override
  String get snackVerifyEnterCode =>
      'आफ्नो इमेलबाट ४ अंकको कोड प्रविष्ट गर्नुहोस्।';

  @override
  String get snackVerifyInvalid =>
      'अवैध वा म्याद सकिएको कोड। इमेल जाँच गर्नुहोस् र फेरि प्रयास गर्नुहोस्।';

  @override
  String get snackVerifyResendFailed =>
      'कोड पुन: पठाउन सकिएन। पुन: प्रयास गर्नुहोस्।';

  @override
  String get snackDownloadComplete => 'डाउनलोड पूरा भयो';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" डाउनलोडहरूमा सुरक्षित गरियो';
  }

  @override
  String get snackDownloadFailed => 'डाउनलोड असफल भयो';

  @override
  String get snackSaved => 'सुरक्षित गरियो';

  @override
  String get snackServerUrlUpdated =>
      'सर्भर URL अद्यावधिक गरियो। आवेदन गर्नको लागि एप पुन: सुरु गर्नुहोस्।';

  @override
  String get snackStoreError => 'स्टोर त्रुटि';

  @override
  String get snackMissingProducts => 'हराइरहेको उत्पादनहरू';

  @override
  String get snackStoreUnavailable => 'स्टोर उपलब्ध छैन';

  @override
  String get snackStoreUnavailableBody =>
      'यस यन्त्रमा इन-एप खरिदहरू उपलब्ध छैनन्।';

  @override
  String get snackProductNotLoaded => 'उत्पादन अझै लोड गरिएको छैन।';

  @override
  String get snackRestoreStarted => 'पुनर्स्थापना सुरु भयो';

  @override
  String get snackRestoreStartedBody => 'हामी तपाईंको खरिदहरू जाँच गर्दैछौं।';

  @override
  String get snackRestoreFailed => 'पुनर्स्थापना असफल भयो';

  @override
  String get snackProcessing => 'प्रशोधन गर्दै';

  @override
  String get snackPleaseWait => 'कृपया पर्खनुहोस्...';

  @override
  String get snackSuccess => 'सफलता';

  @override
  String get snackPurchaseCompleted => 'खरिद सम्पन्न भयो।';

  @override
  String get snackPurchaseError => 'खरिद त्रुटि';

  @override
  String get snackPurchaseFailed => 'खरिद असफल भयो।';

  @override
  String get snackCanceled => 'रद्द गरियो';

  @override
  String get snackPurchaseCanceled => 'खरिद रद्द गरियो।';

  @override
  String get snackUpload => 'अपलोड गर्नुहोस्';

  @override
  String get snackVerify => 'प्रमाणित गर्नुहोस्';

  @override
  String get doNotExpire => 'म्याद समाप्त नगर्नुहोस्';

  @override
  String get hourSingular => 'घण्टा';

  @override
  String get hourPlural => 'घण्टा';

  @override
  String get daySingular => 'दिन';

  @override
  String get dayPlural => 'दिनहरू';

  @override
  String get emailAddressLabel => 'इमेल ठेगाना';

  @override
  String get passwordLabelCaps => 'पासवर्ड';

  @override
  String get confirmPasswordLabelCaps => 'पासवर्ड पुष्टि गर्नुहोस्';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'स्थानान्तरण लिङ्क वा आईडी';

  @override
  String get howToReceive => 'कसरी प्राप्त गर्ने';

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
  String get planAdsTitle => 'विज्ञापन योजना';

  @override
  String get planAdsBullet1 => 'विज्ञापन मुक्त अनुप्रयोग पहुँच';

  @override
  String get planAdsBullet2 => 'सबै विज्ञापनहरू हटाउनुहोस्';

  @override
  String get planProTitle => 'प्रो योजना';

  @override
  String get planProBullet1 => '20GB सम्म फाइलहरू पठाउनुहोस्';

  @override
  String get planProBullet2 => 'द्रुत अपलोड';

  @override
  String get planPremiumTitle => 'प्रिमियम योजना';

  @override
  String get planPremiumBullet1 => '100GB सम्म फाइलहरू पठाउनुहोस्';

  @override
  String get planPremiumBullet2 => 'सुपर फास्ट अपलोड';

  @override
  String get planSubscriptionDisclaimer =>
      'कुनै परीक्षण अवधि - अतिरिक्त अनुप्रयोग कार्यक्षमता प्रयोग गर्न सदस्यता आवश्यक छ। तपाईंलाई तुरुन्तै शुल्क लगाइनेछ। तपाईं जुनसुकै बेला रद्द गर्न सक्नुहुन्छ।';

  @override
  String get perMonth => '/ महिना';

  @override
  String get perYear => '/ वर्ष';

  @override
  String get snackConnectionProblem =>
      'जडान समस्या। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get networkTitle => 'नेटवर्क';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'फाइलहरू: $count · $size बाइटहरू';
  }

  @override
  String todayAt(String time) {
    return 'आज · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'हिजो · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysदिन अघि · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount एमबी';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining बाँया';
  }

  @override
  String get loadingShort => 'लोड हुँदै...';

  @override
  String get colorPaletteTitle => 'रङ प्यालेट';

  @override
  String get colorPaletteSectionBackgrounds => 'पृष्ठभूमि (मसी स्केल)';

  @override
  String get colorPaletteSectionAccent => 'उच्चारण / प्राथमिक';

  @override
  String get colorPaletteSectionText => 'पाठ';

  @override
  String get colorPaletteSectionBorders => 'बोर्डर र ग्लास';

  @override
  String get colorPaletteSectionSemantic => 'सिमान्टिक';

  @override
  String get colorPaletteSectionLive => 'प्रत्यक्ष विषयवस्तु (वर्तमान)';

  @override
  String get colorPaletteActiveHint =>
      '★ = सक्रिय रूपमा स्क्रिनहरूमा प्रयोग गरिन्छ';

  @override
  String get colorPaletteCopyHint =>
      'यसको हेक्स मान प्रतिलिपि गर्न कुनै पनि स्विचलाई लामो समयसम्म थिच्नुहोस्।';

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
  String get settingsAppBrand => 'ठूलो सेयर गर्नुहोस्\nभिडियो फाइलहरू';

  @override
  String get loginEmailPasswordPrompt =>
      'साइन इन गर्न आफ्नो इमेल र पासवर्ड प्रविष्ट गर्नुहोस्।';

  @override
  String get forgotPassword => 'पासवर्ड बिर्सनुभयो?';

  @override
  String get forgotPasswordTitle => 'पासवर्ड रिसेट गर्नुहोस्';

  @override
  String get forgotPasswordBody =>
      'आफ्नो खाता इमेल प्रविष्ट गर्नुहोस् र हामी रिसेट कोड पठाउनेछौं।';

  @override
  String get forgotPasswordSubmit => 'रिसेट कोड पठाउनुहोस्';

  @override
  String get resetPasswordTitle => 'नयाँ पासवर्ड सिर्जना गर्नुहोस्';

  @override
  String get resetPasswordBody =>
      'आफ्नो इमेलबाट ६ अंकको कोड प्रविष्ट गर्नुहोस् र नयाँ पासवर्ड छान्नुहोस्।';

  @override
  String get resetPasswordSubmit => 'पासवर्ड अपडेट गर्नुहोस्';

  @override
  String get snackPasswordResetSent => 'रिसेट कोड पठाइयो';

  @override
  String get snackPasswordResetSentBody =>
      '6-अंकको रिसेट कोडको लागि आफ्नो इमेल जाँच गर्नुहोस्।';

  @override
  String get snackPasswordResetFailed =>
      'रिसेट कोड पठाउन सकिएन। पुन: प्रयास गर्नुहोस्।';

  @override
  String get snackPasswordUpdated => 'पासवर्ड अपडेट गरियो';

  @override
  String get snackPasswordUpdatedBody =>
      'आफ्नो नयाँ पासवर्डको साथ साइन इन गर्नुहोस्।';

  @override
  String get snackPasswordResetInvalid => 'अवैध वा म्याद सकिएको रिसेट कोड।';

  @override
  String get otpDigitLabel => '6-अङ्कको कोड';

  @override
  String receiveMoreFiles(int count) {
    return '+$count थप फाइलहरू';
  }
}
