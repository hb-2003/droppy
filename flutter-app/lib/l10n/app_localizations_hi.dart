// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'बड़ी वीडियो फ़ाइलें साझा करें';

  @override
  String get heroAccent => 'तुरंत।';

  @override
  String get heroTitle => 'भारी फ़ाइलें भेजें';

  @override
  String get splashLoading => 'लोड हो रहा है…';

  @override
  String get navSend => 'डैशबोर्ड';

  @override
  String get navHome => 'होम';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get navReceive => 'प्राप्त करें';

  @override
  String get navPlans => 'प्लान';

  @override
  String get navDownload => 'डाउनलोड';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get modeLink => 'लिंक पाएं';

  @override
  String get modeEmail => 'ईमेल से भेजें';

  @override
  String get pickFiles => 'फ़ाइलें चुनें';

  @override
  String get pickFolder => 'फ़ोल्डर चुनें';

  @override
  String get emailFrom => 'आपका ईमेल';

  @override
  String get mailFromUsesAccount => 'साइन-इन ईमेल उपयोग में है।';

  @override
  String get recipientEmailsHelper =>
      'कई प्राप्तकर्ता: अलग करने के लिए अल्पविराम, अर्धविराम या खाली जगह का उपयोग करें।';

  @override
  String get emailTo => 'प्राप्तकर्ता का ईमेल';

  @override
  String get messageOptional => 'संदेश (वैकल्पिक)';

  @override
  String get passwordOptional => 'पासवर्ड (वैकल्पिक)';

  @override
  String get destructAfterDownload => 'डाउनलोड के बाद हटाएं';

  @override
  String get destructNo => 'उपलब्ध रखें';

  @override
  String get sendButton => 'भेजें';

  @override
  String get uploading => 'अपलोड हो रहा है…';

  @override
  String get uploadComplete => 'पूर्ण';

  @override
  String get shareLinkTitle => 'आपका लिंक';

  @override
  String get copyLink => 'लिंक कॉपी करें';

  @override
  String get share => 'साझा करें';

  @override
  String get shareQrCode => 'QR कोड साझा करें';

  @override
  String get uploadMore => 'एक और भेजें';

  @override
  String get emailSentTitle => 'ईमेल भेजे गए';

  @override
  String get verifyEmailTitle => 'अपना ईमेल सत्यापित करें';

  @override
  String get verifyCodeHint => 'अपने ईमेल से कोड दर्ज करें';

  @override
  String get verifySubmit => 'सत्यापित करें';

  @override
  String get verifyResendCode => 'कोड फिर भेजें';

  @override
  String get verifyCodeSent => 'आपके ईमेल पर नया सत्यापन कोड भेजा गया है।';

  @override
  String get verifyEmailSmtpWarningTitle => 'सत्यापन ईमेल शायद नहीं गया';

  @override
  String get verifyEmailSmtpWarningBody =>
      'सर्वर डिलीवरी की पुष्टि नहीं कर सका (अक्सर SMTP गलत होता है)। एडमिन से मेल सेटिंग जाँच करवाएँ, फिर कोड फिर भेजें पर टैप करें।';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'अगर न आए: स्पैम/प्रमोशन देखें, एक मिनट प्रतीक्षा करें, $email में टाइपो न हो, फिर कोड फिर भेजें।';
  }

  @override
  String get loginTitle => 'साइन इन';

  @override
  String get signupHint => 'अपने साइट खाते का ईमेल और पासवर्ड उपयोग करें।';

  @override
  String get emailHint => 'ईमेल';

  @override
  String get passwordHint => 'पासवर्ड';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get signIn => 'साइन इन';

  @override
  String get downloadIdHint => 'ट्रांसफ़र ID';

  @override
  String get privateIdHint => 'निजी ID (वैकल्पिक)';

  @override
  String get fetchTransfer => 'ट्रांसफ़र खोलें';

  @override
  String get downloadFile => 'डाउनलोड';

  @override
  String get unlockDownload => 'डाउनलोड अनलॉक करें';

  @override
  String get downloadSaved => 'डाउनलोड में सहेजा गया';

  @override
  String get errorGeneric => 'कुछ गलत हो गया';

  @override
  String get errorNetwork => 'नेटवर्क त्रुटि';

  @override
  String get errorBadResponse => 'अप्रत्याशित सर्वर प्रतिक्रिया';

  @override
  String get termsAccept => 'मैं नियमों से सहमत हूँ';

  @override
  String get settingsApiUrl => 'सार्वजनिक साइट URL';

  @override
  String get settingsAccount => 'खाता';

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsTheme => 'थीम';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get settingsSignedIn => 'आप साइन इन हैं।';

  @override
  String get settingsSignedOut => 'आप साइन इन नहीं हैं।';

  @override
  String get settingsOpenWebsite => 'वेबसाइट खोलें';

  @override
  String get signUp => 'साइन अप';

  @override
  String get settingsLinks => 'लिंक';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get termsOfService => 'सेवा की शर्तें';

  @override
  String get about => 'परिचय';

  @override
  String get moreApps => 'और ऐप';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get languageEnglish => 'अंग्रेज़ी';

  @override
  String get languageHindi => 'हिंदी';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get maxFilesReached => 'बहुत अधिक फ़ाइलें';

  @override
  String get fileTooLarge => 'फ़ाइल बहुत बड़ी है';

  @override
  String get ipLimit => 'इस नेटवर्क से बहुत अधिक अपलोड';

  @override
  String get fillFields => 'कृपया आवश्यक फ़ील्ड भरें';

  @override
  String get invalidEmail => 'अमान्य ईमेल';

  @override
  String get maxRecipientsReached => 'बहुत अधिक प्राप्तकर्ता';

  @override
  String get loginRequiredTitle => 'साइन इन आवश्यक';

  @override
  String get loginRequiredBody =>
      'इस सर्वर पर अपलोड या डाउनलोड के लिए खाता आवश्यक है।';

  @override
  String get settingsSubtitle => 'ऐप प्राथमिकताएँ और खाता।';

  @override
  String get dropHeavyFile => 'यहाँ भारी फ़ाइल छोड़ें।';

  @override
  String upToTotal(String max) {
    return 'कुल $max तक';
  }

  @override
  String get removeAll => 'सभी हटाएं';

  @override
  String get addFiles => 'और फ़ाइलें जोड़ें';

  @override
  String get adding => 'जोड़ा जा रहा है…';

  @override
  String get options => 'विकल्प';

  @override
  String get selfDestruct => 'डाउनलोड के बाद स्वयं नष्ट';

  @override
  String get expiry => 'समाप्ति';

  @override
  String get cancelUpload => 'अपलोड रद्द करें';

  @override
  String get transferReady => 'ट्रांसफ़र तैयार!';

  @override
  String get emailSentReady => 'ईमेल भेजा गया!';

  @override
  String get shareRecipientHint =>
      'यह लिंक अपने प्राप्तकर्ता के साथ साझा करें।';

  @override
  String get emailSentBody => 'हमने आपके प्राप्तकर्ता(ओं) को सूचित किया है।';

  @override
  String get scanQr => 'ट्रांसफ़र लिंक खोलने के लिए स्कैन करें।';

  @override
  String get shareLinkButton => 'लिंक साझा करें';

  @override
  String get verifyFourDigit =>
      'प्रेषक ईमेल पर भेजा गया 4-अंकीय कोड दर्ज करें।';

  @override
  String get starting => 'शुरू हो रहा है…';

  @override
  String filesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फ़ाइलें',
      one: '1 फ़ाइल',
    );
    return '$_temp0';
  }

  @override
  String mbLeft(String amount) {
    return '$amount MB शेष';
  }

  @override
  String get fillField => 'कृपया यह फ़ील्ड भरें।';

  @override
  String get enterValidEmail => 'मान्य ईमेल दर्ज करें।';

  @override
  String get message => 'संदेश';

  @override
  String get recipientEmail => 'प्राप्तकर्ता का ईमेल';

  @override
  String get active => 'सक्रिय';

  @override
  String get expired => 'समाप्त';

  @override
  String get historyTitle => 'मेरे ट्रांसफ़र';

  @override
  String get signInToSeeTransfers => 'अपने ट्रांसफ़र देखने के लिए साइन इन करें';

  @override
  String get signInTransfersBody =>
      'हम आपके ईमेल से ट्रांसफ़र जोड़ते हैं — पासवर्ड की ज़रूरत नहीं।';

  @override
  String get couldNotLoadTransfers => 'ट्रांसफ़र लोड नहीं हो सके';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get noTransfersYet => 'अभी कोई ट्रांसफ़र नहीं';

  @override
  String get noTransfersBody => 'जब आप फ़ाइल भेजेंगे, वह यहाँ दिखेगी।';

  @override
  String get transferDetails => 'ट्रांसफ़र विवरण';

  @override
  String get filesSection => 'फ़ाइलें';

  @override
  String get receiveTitle => 'फ़ाइलें प्राप्त करें';

  @override
  String get receiveSubtitle => 'डाउनलोड के लिए ट्रांसफ़र लिंक चिपकाएँ।';

  @override
  String get pasteTooltip => 'चिपकाएँ';

  @override
  String get findTransfer => 'ट्रांसफ़र खोजें';

  @override
  String get receiveScanQr => 'QR स्कैन करें';

  @override
  String get receiveScanQrTitle => 'ट्रांसफ़र QR स्कैन करें';

  @override
  String get receiveScanQrHint => 'QR को फ़्रेम के अंदर संरेखित करें।';

  @override
  String get receiveScanQrInvalid => 'यह QR कोड मान्य ट्रांसफ़र लिंक नहीं है।';

  @override
  String get receiveScanQrCameraDenied =>
      'QR कोड स्कैन करने के लिए कैमरा अनुमति आवश्यक है।';

  @override
  String get receiveStepGetLink => 'लिंक प्राप्त करें';

  @override
  String get receiveStepGetLinkBody =>
      'प्रेषक से ट्रांसफ़र लिंक साझा करने को कहें।';

  @override
  String get receiveStepPaste => 'चिपकाएँ और खोजें';

  @override
  String get receiveStepPasteBody =>
      'ऊपर लिंक चिपकाएँ और \"ट्रांसफ़र खोजें\" टैप करें।';

  @override
  String get receiveStepDownload => 'फ़ाइलें डाउनलोड करें';

  @override
  String get receiveStepDownloadBody =>
      'फ़ाइल विवरण देखें और एक साथ सब डाउनलोड करें।';

  @override
  String get lookingUpTransfer => 'ट्रांसफ़र खोजा जा रहा है…';

  @override
  String get transferNotFound =>
      'ट्रांसफ़र नहीं मिला। लिंक जाँचें और फिर कोशिश करें।';

  @override
  String get transferExpired =>
      'यह ट्रांसफ़र समाप्त हो चुका है और उपलब्ध नहीं है।';

  @override
  String get transferLoginRequired =>
      'इस ट्रांसफ़र तक पहुँच के लिए साइन इन आवश्यक है।';

  @override
  String get transferBadResponse =>
      'अप्रत्याशित सर्वर प्रतिक्रिया। कनेक्शन जाँचें।';

  @override
  String get transferNetworkError => 'नेटवर्क त्रुटि। अपना इंटरनेट जाँचें।';

  @override
  String transferLoadFailed(String error) {
    return 'ट्रांसफ़र लोड नहीं हो सका: $error';
  }

  @override
  String get passwordProtected => 'पासवर्ड सुरक्षित';

  @override
  String get enterPassword => 'पासवर्ड दर्ज करें';

  @override
  String get unlock => 'अनलॉक';

  @override
  String get downloading => 'डाउनलोड हो रहा है…';

  @override
  String get downloadAllFiles => 'सभी फ़ाइलें डाउनलोड करें';

  @override
  String get downloadSingleFile => 'फ़ाइल डाउनलोड करें';

  @override
  String get receiveAnother => 'एक और ट्रांसफ़र प्राप्त करें';

  @override
  String get plansTitle => 'प्लान';

  @override
  String get plansSubtitle =>
      'विज्ञापन हटाने और बड़ी फ़ाइलें भेजने के लिए अपग्रेड करें।';

  @override
  String get storeUnavailable => 'स्टोर उपलब्ध नहीं';

  @override
  String get storeUnavailableBody => 'इन-ऐप खरीद अभी उपलब्ध नहीं है।';

  @override
  String get freeVersionAds =>
      'आप अभी विज्ञापनों वाला मुफ़्त संस्करण उपयोग कर रहे हैं';

  @override
  String get restorePurchases => 'खरीद पुनर्स्थापित करें';

  @override
  String get createAccountTitle => 'खाता बनाएं';

  @override
  String get signUpSubtitle => 'ईमेल और पासवर्ड से साइन अप करें।';

  @override
  String get confirmPassword => 'पासवर्ड की पुष्टि करें';

  @override
  String get passwordMin8 => 'पासवर्ड (कम से कम 8 अक्षर)';

  @override
  String get alreadyHaveAccount => 'पहले से खाता है?';

  @override
  String get checkEmailTitle => 'अपना\nईमेल देखें';

  @override
  String otpSentTo(String email) {
    return 'हमने 6-अंकीय कोड भेजा है\n$email';
  }

  @override
  String get verifyAndSignIn => 'सत्यापित करें और साइन इन';

  @override
  String get didntReceiveCode => 'नहीं मिला?';

  @override
  String get tryAgain => 'फिर कोशिश करें';

  @override
  String get otpExpiresHint =>
      'कोड 5 मिनट में समाप्त होता है। स्पैम फ़ोल्डर भी देखें।';

  @override
  String get snackError => 'त्रुटि';

  @override
  String get snackCopied => 'कॉपी हो गया';

  @override
  String get snackCopiedBody => 'लिंक क्लिपबोर्ड पर कॉपी हो गया';

  @override
  String get snackWelcome => 'स्वागत है';

  @override
  String get snackAccountCreated => 'खाता बन गया';

  @override
  String get snackEnterEmail => 'कृपया अपना ईमेल दर्ज करें';

  @override
  String get snackEnterPassword => 'कृपया अपना पासवर्ड दर्ज करें';

  @override
  String get snackInvalidEmail => 'अमान्य ईमेल पता';

  @override
  String get snackInvalidCredentials => 'गलत ईमेल या पासवर्ड';

  @override
  String get snackPasswordMin8 => 'पासवर्ड कम से कम 8 अक्षर का होना चाहिए';

  @override
  String get snackPasswordMismatch => 'पासवर्ड मेल नहीं खाते।';

  @override
  String get snackAccountExists => 'खाता पहले से मौजूद है। कृपया साइन इन करें।';

  @override
  String get snackSignupFailed => 'खाता नहीं बन सका। फिर कोशिश करें।';

  @override
  String get snackEnterOtp => 'कृपया 6-अंकीय कोड दर्ज करें';

  @override
  String get snackOtpExpired => 'कोड समाप्त';

  @override
  String get snackOtpExpiredBody => 'कृपया नया कोड माँगें।';

  @override
  String get snackInvalidCode => 'अमान्य कोड';

  @override
  String get snackInvalidCodeBody => 'कोड गलत है। फिर कोशिश करें।';

  @override
  String get snackSendCodeFailed => 'कोड नहीं भेजा जा सका। कनेक्शन जाँचें।';

  @override
  String get snackEmptyFolder => 'खाली फ़ोल्डर';

  @override
  String get snackEmptyFolderBody => 'चुने फ़ोल्डर में कोई फ़ाइल नहीं मिली।';

  @override
  String get snackFolderUnsupported => 'समर्थित नहीं';

  @override
  String get snackFolderUnsupportedBody =>
      'इस प्लेटफ़ॉर्म पर फ़ोल्डर अपलोड उपलब्ध नहीं है।';

  @override
  String get snackFolderReadError => 'चुना फ़ोल्डर पढ़ा नहीं जा सका।';

  @override
  String get snackLimitReached => 'सीमा पूरी';

  @override
  String get snackLimitFilesBody =>
      'आकार या फ़ाइल संख्या की सीमा के कारण कुछ फ़ाइलें नहीं जोड़ी गईं।';

  @override
  String get snackFreePlanLimit =>
      'मुफ़्त प्लान में प्रति ट्रांसफ़र 5GB तक। कुछ फ़ाइलें हटाएँ या अपग्रेड करें।';

  @override
  String get snackSignInEmail => 'ईमेल से भेजने के लिए साइन इन करें।';

  @override
  String get snackUploadStartFailed => 'अपलोड शुरू नहीं हो सका।';

  @override
  String get snackVerifyEnterCode => 'ईमेल से 4-अंकीय कोड दर्ज करें।';

  @override
  String get snackVerifyInvalid => 'अमान्य या समाप्त कोड। ईमेल जाँचें।';

  @override
  String get snackVerifyResendFailed =>
      'कोड फिर नहीं भेजा जा सका। फिर कोशिश करें।';

  @override
  String get snackDownloadComplete => 'डाउनलोड पूर्ण';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" डाउनलोड में सहेजा गया';
  }

  @override
  String get snackDownloadFailed => 'डाउनलोड विफल';

  @override
  String get snackSaved => 'सहेजा गया';

  @override
  String get snackServerUrlUpdated =>
      'सर्वर URL अपडेट। लागू करने के लिए ऐप फिर चलाएँ।';

  @override
  String get snackStoreError => 'स्टोर त्रुटि';

  @override
  String get snackMissingProducts => 'उत्पाद नहीं मिले';

  @override
  String get snackStoreUnavailable => 'स्टोर उपलब्ध नहीं';

  @override
  String get snackStoreUnavailableBody =>
      'इस डिवाइस पर इन-ऐप खरीद उपलब्ध नहीं है।';

  @override
  String get snackProductNotLoaded => 'उत्पाद अभी लोड नहीं हुआ।';

  @override
  String get snackRestoreStarted => 'पुनर्स्थापना शुरू';

  @override
  String get snackRestoreStartedBody => 'हम आपकी खरीद जाँच रहे हैं।';

  @override
  String get snackRestoreFailed => 'पुनर्स्थापना विफल';

  @override
  String get snackProcessing => 'प्रक्रिया में';

  @override
  String get snackPleaseWait => 'कृपया प्रतीक्षा करें…';

  @override
  String get snackSuccess => 'सफल';

  @override
  String get snackPurchaseCompleted => 'खरीद पूर्ण।';

  @override
  String get snackPurchaseError => 'खरीद त्रुटि';

  @override
  String get snackPurchaseFailed => 'खरीद विफल।';

  @override
  String get snackCanceled => 'रद्द';

  @override
  String get snackPurchaseCanceled => 'खरीद रद्द।';

  @override
  String get snackUpload => 'अपलोड';

  @override
  String get snackVerify => 'सत्यापन';

  @override
  String get doNotExpire => 'समाप्त न करें';

  @override
  String get hourSingular => 'घंटा';

  @override
  String get hourPlural => 'घंटे';

  @override
  String get daySingular => 'दिन';

  @override
  String get dayPlural => 'दिन';

  @override
  String get emailAddressLabel => 'ईमेल पता';

  @override
  String get passwordLabelCaps => 'पासवर्ड';

  @override
  String get confirmPasswordLabelCaps => 'पासवर्ड की पुष्टि';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ट्रांसफ़र लिंक या ID';

  @override
  String get howToReceive => 'कैसे प्राप्त करें';

  @override
  String get transferLinkHint => 'https://… या ID चिपकाएँ';

  @override
  String filesReady(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फ़ाइलें तैयार',
      one: '1 फ़ाइल तैयार',
    );
    return '$_temp0';
  }

  @override
  String get planAdsTitle => 'विज्ञापन प्लान';

  @override
  String get planAdsBullet1 => 'विज्ञापन-मुक्त ऐप तक पहुँच';

  @override
  String get planAdsBullet2 => 'सभी विज्ञापन हटाएँ';

  @override
  String get planProTitle => 'प्रो प्लान';

  @override
  String get planProBullet1 => '20GB तक फ़ाइलें भेजें';

  @override
  String get planProBullet2 => 'तेज़ अपलोड';

  @override
  String get planPremiumTitle => 'प्रीमियम प्लान';

  @override
  String get planPremiumBullet1 => '100GB तक फ़ाइलें भेजें';

  @override
  String get planPremiumBullet2 => 'अति तेज़ अपलोड';

  @override
  String get planSubscriptionDisclaimer =>
      'कोई ट्रायल नहीं — अतिरिक्त सुविधाओं के लिए सदस्यता आवश्यक है। शुल्क तुरंत लगेगा। आप कभी भी रद्द कर सकते हैं।';

  @override
  String get perMonth => '/ माह';

  @override
  String get perYear => '/ वर्ष';

  @override
  String get snackConnectionProblem => 'कनेक्शन समस्या। फिर कोशिश करें।';

  @override
  String get networkTitle => 'नेटवर्क';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'फ़ाइलें: $count · $size बाइट';
  }

  @override
  String todayAt(String time) {
    return 'आज · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'कल · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$days दिन पहले · $time';
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
    return '$sent / $total  •  $remaining शेष';
  }

  @override
  String get loadingShort => 'लोड हो रहा है…';

  @override
  String get colorPaletteTitle => 'रंग पैलेट';

  @override
  String get colorPaletteSectionBackgrounds => 'पृष्ठभूमि (ink scale)';

  @override
  String get colorPaletteSectionAccent => 'एक्सेंट / प्राथमिक';

  @override
  String get colorPaletteSectionText => 'पाठ';

  @override
  String get colorPaletteSectionBorders => 'बॉर्डर और ग्लास';

  @override
  String get colorPaletteSectionSemantic => 'सिमेंटिक';

  @override
  String get colorPaletteSectionLive => 'लाइव थीम (वर्तमान)';

  @override
  String get colorPaletteActiveHint => '★ = स्क्रीन में सक्रिय उपयोग';

  @override
  String get colorPaletteCopyHint =>
      'हेक्स कॉपी करने के लिए किसी भी स्वैच को देर तक दबाएँ।';

  @override
  String historyFilesSize(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फ़ाइलें',
      one: '1 फ़ाइल',
    );
    return '$_temp0 · $size';
  }

  @override
  String get settingsAppBrand => 'Share Large\nVideo Files';

  @override
  String get loginEmailPasswordPrompt =>
      'साइन इन के लिए अपना ईमेल और पासवर्ड दर्ज करें।';

  @override
  String get forgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get forgotPasswordTitle => 'पासवर्ड रीसेट करें';

  @override
  String get forgotPasswordBody =>
      'अपना खाता ईमेल दर्ज करें, हम रीसेट कोड भेजेंगे।';

  @override
  String get forgotPasswordSubmit => 'रीसेट कोड भेजें';

  @override
  String get resetPasswordTitle => 'नया पासवर्ड बनाएं';

  @override
  String get resetPasswordBody =>
      'ईमेल से 6-अंकीय कोड दर्ज करें और नया पासवर्ड चुनें।';

  @override
  String get resetPasswordSubmit => 'पासवर्ड अपडेट करें';

  @override
  String get snackPasswordResetSent => 'रीसेट कोड भेजा गया';

  @override
  String get snackPasswordResetSentBody =>
      '6-अंकीय रीसेट कोड के लिए अपना ईमेल देखें।';

  @override
  String get snackPasswordResetFailed =>
      'रीसेट कोड नहीं भेजा जा सका। फिर कोशिश करें।';

  @override
  String get snackPasswordUpdated => 'पासवर्ड अपडेट हो गया';

  @override
  String get snackPasswordUpdatedBody => 'नए पासवर्ड से साइन इन करें।';

  @override
  String get snackPasswordResetInvalid => 'अमान्य या समाप्त रीसेट कोड।';

  @override
  String get otpDigitLabel => '6-अंकीय कोड';

  @override
  String receiveMoreFiles(int count) {
    return '+$count और फ़ाइलें';
  }
}
