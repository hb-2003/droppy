// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Чоң видео файлдарын бөлүшүңүз';

  @override
  String get heroAccent => 'ошол замат.';

  @override
  String get heroTitle => 'Оор файлдарды жөнөтүңүз';

  @override
  String get splashLoading => 'Жүктөлүүдө…';

  @override
  String get navSend => 'Куралдар тактасы';

  @override
  String get navHome => 'Үй';

  @override
  String get navHistory => 'тарых';

  @override
  String get navReceive => 'Кабыл алуу';

  @override
  String get navPlans => 'Пландар';

  @override
  String get navDownload => 'Жүктөп алуу';

  @override
  String get navSettings => 'Орнотуулар';

  @override
  String get modeLink => 'Шилтеме алыңыз';

  @override
  String get modeEmail => 'Электрондук почта аркылуу жөнөтүү';

  @override
  String get modeWifi => 'Wi‑Fi';

  @override
  String get modePc => 'PC';

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
  String get pickFiles => 'Файлдарды тандаңыз';

  @override
  String get pickFolder => 'Папканы тандаңыз';

  @override
  String get emailFrom => 'Сиздин электрондук почтаңыз';

  @override
  String get mailFromUsesAccount =>
      'Каттоо эсебиңизге кирген электрондук почтаңызды колдонот.';

  @override
  String get recipientEmailsHelper =>
      'Бир нече алуучулар: үтүр, чекиттүү үтүр же боштук менен бөлүңүз.';

  @override
  String get emailTo => 'Алуучунун электрондук почтасы';

  @override
  String get messageOptional => 'Билдирүү (милдеттүү эмес)';

  @override
  String get passwordOptional => 'Сырсөз (милдеттүү эмес)';

  @override
  String get destructAfterDownload => 'Жүктөп алгандан кийин жок кылуу';

  @override
  String get destructNo => 'Жеткиликтүү болуңуз';

  @override
  String get sendButton => 'Жөнөтүү';

  @override
  String get uploading => 'Жүктөлүүдө…';

  @override
  String get uploadComplete => 'Бүттү';

  @override
  String get shareLinkTitle => 'Сиздин шилтеме';

  @override
  String get copyLink => 'Шилтемени көчүрүү';

  @override
  String get share => 'Бөлүшүү';

  @override
  String get shareQrCode => 'QR кодун бөлүшүү';

  @override
  String get uploadMore => 'Башкасын жөнөт';

  @override
  String get emailSentTitle => 'Электрондук почталар жөнөтүлдү';

  @override
  String get verifyEmailTitle => 'Электрондук почтаңызды ырастаңыз';

  @override
  String get verifyCodeHint =>
      'Электрондук почтаңыздан келген кодду киргизиңиз';

  @override
  String get verifySubmit => 'Текшерүү';

  @override
  String get verifyResendCode => 'Кодду кайра жөнөтүү';

  @override
  String get verifyCodeSent =>
      'Электрондук почтаңызга жаңы текшерүү коду жөнөтүлдү.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Текшерүү электрондук почтасы жөнөтүлбөй калышы мүмкүн';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сервер жеткирүүнү ырастай алган жок (көп учурда SMTP туура эмес конфигурацияланган). Сайтыңыздын администраторуңуздан администратор панелинен Почта жөндөөлөрүн текшерүүнү сураныңыз, андан кийин \"Кодду кайра жөнөтүү\" баскычын таптаңыз.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Эгер ал келбесе: керексиз/Спам жана Жарнактарды текшериңиз, бир аз күтө туруңуз, $email катасы жок экенин ырастап, андан кийин Кайра жөнөтүүнү таптаңыз.';
  }

  @override
  String get loginTitle => 'Кирүү';

  @override
  String get signupHint =>
      'Сайт каттоо эсебиңиздин электрондук почтасын жана сырсөзүңүздү колдонуңуз.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Купуя сөз';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get signIn => 'Кирүү';

  @override
  String get downloadIdHint => 'Которуу ID';

  @override
  String get privateIdHint => 'Жеке ID (милдеттүү эмес)';

  @override
  String get fetchTransfer => 'Ачык которуу';

  @override
  String get downloadFile => 'Жүктөп алуу';

  @override
  String get unlockDownload => 'Жүктөп алуу кулпусун ачуу';

  @override
  String get downloadSaved => 'Жүктөлүп алынгандарга сакталды';

  @override
  String get errorGeneric => 'Бир жерден ката кетти';

  @override
  String get errorNetwork => 'Тармак катасы';

  @override
  String get errorBadResponse => 'Күтүлбөгөн сервер жообу';

  @override
  String get termsAccept => 'Мен шарттарга макулмун';

  @override
  String get settingsApiUrl => 'Коомдук сайттын URL\'и';

  @override
  String get settingsAccount => 'Каттоо эсеби';

  @override
  String get settingsAppearance => 'Көрүнүш';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Жарык';

  @override
  String get themeDark => 'Караңгы';

  @override
  String get settingsSignedIn => 'Сиз кирдиңиз.';

  @override
  String get settingsSignedOut => 'Сиз кирген жоксуз.';

  @override
  String get settingsOpenWebsite => 'Вебсайтты ачуу';

  @override
  String get signUp => 'Кирүү';

  @override
  String get settingsLinks => 'Шилтемелер';

  @override
  String get privacyPolicy => 'Купуялык саясаты';

  @override
  String get termsOfService => 'Тейлөө шарттары';

  @override
  String get about => 'Жөнүндө';

  @override
  String get moreApps => 'Дагы колдонмолор';

  @override
  String get settingsLanguage => 'Тил';

  @override
  String get languageEnglish => 'Англисче';

  @override
  String get languageHindi => 'Хиндиче';

  @override
  String get logout => 'Чыгыңыз';

  @override
  String get deleteAccount => 'Каттоо эсебин жок кылуу';

  @override
  String get deleteAccountConfirmTitle => 'Каттоо эсебиңиз жок кылынсынбы?';

  @override
  String get deleteAccountConfirmBody =>
      'Бул сиздин каттоо эсебиңизди биротоло жок кылат жана сизди каттоодон чыгарат. Өткөрмө шилтемелериңиз иштей берет, бирок алар таржымалыңызда мындан ары көрүнбөйт.';

  @override
  String get deleteAccountSuccess => 'Каттоо эсеби жок кылынды';

  @override
  String get deleteAccountSuccessBody => 'Каттоо эсебиңиз өчүрүлдү.';

  @override
  String get deleteAccountFailed => 'Каттоо эсеби жок кылынбай койду';

  @override
  String get deleteAccountFailedBody =>
      'Кайталап көрүңүз же колдоо менен байланышыңыз.';

  @override
  String get maxFilesReached => 'Өтө көп файлдар';

  @override
  String get fileTooLarge => 'Файл өтө чоң';

  @override
  String get ipLimit => 'Бул тармактан өтө көп жүктөөлөр';

  @override
  String get fillFields => 'Сураныч, милдеттүү талааларды толтуруңуз';

  @override
  String get invalidEmail => 'Жараксыз электрондук почта';

  @override
  String get maxRecipientsReached => 'Алуучулар өтө көп';

  @override
  String get loginRequiredTitle => 'Кирүү талап кылынат';

  @override
  String get loginRequiredBody =>
      'Бул сервер жүктөө же жүктөп алуу үчүн каттоо эсебин талап кылат.';

  @override
  String get settingsSubtitle => 'Колдонмонун тандоолору жана каттоо эсеби.';

  @override
  String get dropHeavyFile => 'Бул жерге оор файлды таштаңыз.';

  @override
  String upToTotal(String max) {
    return 'Жалпысынан $max чейин';
  }

  @override
  String get removeAll => 'Баарын алып салуу';

  @override
  String get addFiles => 'Файлдарды кошуу';

  @override
  String get adding => 'Кошуу…';

  @override
  String get options => 'Параметрлер';

  @override
  String get selfDestruct => 'Жүктөп алгандан кийин өзүн-өзү жок кылуу';

  @override
  String get expiry => 'Жарамдуулук мөөнөтү';

  @override
  String get cancelUpload => 'Жүктөөнү жокко чыгаруу';

  @override
  String get transferReady => 'Трансфер даяр!';

  @override
  String get emailSentReady => 'Электрондук кат жөнөтүлдү!';

  @override
  String get shareRecipientHint => 'Бул шилтемени алуучу менен бөлүшүңүз.';

  @override
  String get emailSentBody => 'Биз сиздин алуучуларыңызга кабарладык.';

  @override
  String get scanQr => 'Өткөрмө шилтемесин ачуу үчүн скандаңыз.';

  @override
  String get shareLinkButton => 'ШИЛТЕМЕНИ БӨЛҮШҮҮ';

  @override
  String get verifyFourDigit =>
      'Жөнөтүүчү электрондук почтаңызга жөнөтүлгөн 4 орундуу кодду киргизиңиз.';

  @override
  String get starting => 'Башталып жатат…';

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
    return '$amount Мб калды';
  }

  @override
  String get fillField => 'Сураныч, бул талааны толтуруңуз.';

  @override
  String get enterValidEmail => 'Жарактуу электрондук почтаны киргизиңиз.';

  @override
  String get message => 'Кабар';

  @override
  String get recipientEmail => 'Алуучунун электрондук почтасы';

  @override
  String get active => 'Активдүү';

  @override
  String get expired => 'Мөөнөтү бүттү';

  @override
  String get historyTitle => 'Менин которууларым';

  @override
  String get signInToSeeTransfers => 'Которууларыңызды көрүү үчүн кириңиз';

  @override
  String get signInTransfersBody =>
      'Аккаунтуңузга которууларды байланыштыруу үчүн электрондук почтаңызды колдонобуз — сырсөз талап кылынбайт.';

  @override
  String get couldNotLoadTransfers => 'Өткөрмөлөр жүктөлгөн жок';

  @override
  String get retry => 'Кайталап көрүңүз';

  @override
  String get noTransfersYet => 'Азырынча которуулар жок';

  @override
  String get noTransfersBody =>
      'Файлды жөнөткөндөн кийин, ал бул жерде пайда болот.';

  @override
  String get transferDetails => 'Которуу чоо-жайы';

  @override
  String get filesSection => 'Файлдар';

  @override
  String get receiveTitle => 'Файлдарды кабыл алуу';

  @override
  String get receiveSubtitle =>
      'Файлдарды жүктөп алуу үчүн өткөрүү шилтемесин чаптаңыз.';

  @override
  String get pasteTooltip => 'Паста';

  @override
  String get findTransfer => 'Transfer табуу';

  @override
  String get receiveScanQr => 'QR скандоо';

  @override
  String get receiveScanQrTitle => 'QR өткөрүп скандоо';

  @override
  String get receiveScanQrHint => 'QR кодун кадрдын ичине тууралаңыз.';

  @override
  String get receiveScanQrInvalid =>
      'Бул QR коду жарактуу өткөрүү шилтемеси эмес.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR коддорун сканерлөө үчүн камерага кирүү керек.';

  @override
  String get receiveStepGetLink => 'Шилтемени алыңыз';

  @override
  String get receiveStepGetLinkBody =>
      'Жөнөтүүчүдөн которуу шилтемесин сиз менен бөлүшүүнү сураныңыз.';

  @override
  String get receiveStepPaste => 'Коюу жана табуу';

  @override
  String get receiveStepPasteBody =>
      'Жогорудагы шилтемени чаптап, \"Трансферти табуу\" баскычын таптаңыз.';

  @override
  String get receiveStepDownload => 'Файлдарды жүктөө';

  @override
  String get receiveStepDownloadBody =>
      'Файлдын чоо-жайын көрүп, баарын бир убакта жүктөп алыңыз.';

  @override
  String get lookingUpTransfer => 'Өткөрүп берүү изделүүдө…';

  @override
  String get transferNotFound =>
      'Өткөрүлгөн жок. Шилтемени текшерип, кайра аракет кылыңыз.';

  @override
  String get transferExpired =>
      'Бул которуунун мөөнөтү бүттү жана мындан ары жеткиликсиз.';

  @override
  String get transferLoginRequired =>
      'Бул өткөрүүгө кирүү үчүн кирүү талап кылынат.';

  @override
  String get transferBadResponse =>
      'Күтүлбөгөн сервер жообу. Байланышыңызды текшериңиз.';

  @override
  String get transferNetworkError =>
      'Тармак катасы. Интернет байланышыңызды текшериңиз.';

  @override
  String transferLoadFailed(String error) {
    return 'Өткөрүүнү жүктөө мүмкүн эмес: $error';
  }

  @override
  String get passwordProtected => 'Сырсөз менен корголгон';

  @override
  String get enterPassword => 'Сырсөздү киргизиңиз';

  @override
  String get unlock => 'Кулпуну ачуу';

  @override
  String get downloading => 'Жүктөлүүдө…';

  @override
  String get downloadAllFiles => 'Бардык файлдарды жүктөп алыңыз';

  @override
  String get downloadSingleFile => 'Файлды жүктөп алыңыз';

  @override
  String get receiveAnother => 'Башка которууну алыңыз';

  @override
  String get plansTitle => 'Пландар';

  @override
  String get plansSubtitle =>
      'Жарнамаларды алып салуу жана чоңураак файлдарды жөнөтүү үчүн жаңыртыңыз.';

  @override
  String get storeUnavailable => 'Дүкөн жеткиликтүү эмес';

  @override
  String get storeUnavailableBody =>
      'Колдонмодогу сатып алуулар азыр жеткиликсиз.';

  @override
  String get storeLoadingPrices => 'Колдонмолор дүкөнүнөн баалар жүктөлүүдө…';

  @override
  String get storePricesUnavailable => 'Баалар жеткиликсиз';

  @override
  String get storePricesPartial => 'Кээ бир баалар жүктөлгөн жок';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total жазылуу продуктуларынын $loaded жүктөлдү.';
  }

  @override
  String get storeSetupHint =>
      'Чыныгы iPhone\'до (Симулятор эмес) сынап көрүңүз, Sandbox Apple ID\'син колдонуңуз жана бардык 6 жазылуу бул колдонмонун таңгак идентификатору астында түзүлгөн App Store Connect\'те баа топтому менен түзүлгөнүн текшериңиз.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ай';
  }

  @override
  String get freeVersionAds =>
      'Учурда сиз биздин акысыз версиябызды жарнамалар менен колдонуп жатасыз';

  @override
  String get restorePurchases => 'Сатып алууларды калыбына келтириңиз';

  @override
  String get plansContinue => 'Улантуу';

  @override
  String get planLinkRestore => 'Калыбына келтирүү';

  @override
  String get termsAndConditions => 'Шарттар жана жоболор';

  @override
  String get createAccountTitle => 'Эсеп түзүү';

  @override
  String get signUpSubtitle =>
      'Электрондук почта жана сырсөз менен катталыңыз.';

  @override
  String get confirmPassword => 'Сырсөздү ыраста';

  @override
  String get passwordMin8 => 'Сырсөз (кеминде 8 белги)';

  @override
  String get alreadyHaveAccount => 'Каттоо эсебиңиз барбы?';

  @override
  String get checkEmailTitle => 'Сиздин текшерүү\nэлектрондук почта';

  @override
  String otpSentTo(String email) {
    return 'Биз 6 орундуу кодду жөнөттүк\n$email';
  }

  @override
  String get verifyAndSignIn => 'Текшерүү & Кирүү';

  @override
  String get didntReceiveCode => 'Аны алган жоксузбу?';

  @override
  String get tryAgain => 'Кайра аракет кыл';

  @override
  String get otpExpiresHint =>
      'Код 5 мүнөттөн кийин бүтөт. Эгерде сиз аны көрбөсөңүз, спам папкаңызды текшериңиз.';

  @override
  String get snackError => 'Ката';

  @override
  String get snackCopied => 'Көчүрүлгөн';

  @override
  String get snackCopiedBody => 'Шилтеме алмашуу буферине көчүрүлдү';

  @override
  String get snackWelcome => 'Кош келдиңиз';

  @override
  String get snackAccountCreated => 'Каттоо эсеби түзүлдү';

  @override
  String get snackEnterEmail => 'Сураныч, электрондук почтаңызды киргизиңиз';

  @override
  String get snackEnterPassword => 'Сырсөзүңүздү киргизиңиз';

  @override
  String get snackInvalidEmail => 'Жараксыз электрондук почта дареги';

  @override
  String get snackInvalidCredentials =>
      'Туура эмес электрондук почта же сырсөз';

  @override
  String get snackPasswordMin8 => 'Сырсөз кеминде 8 белгиден турушу керек';

  @override
  String get snackPasswordMismatch => 'Сырсөздөр дал келбейт.';

  @override
  String get snackAccountExists =>
      'Каттоо эсеби мурунтан эле бар. Сураныч, кириңиз.';

  @override
  String get snackSignupFailed =>
      'Каттоо эсеби түзүлгөн жок. Кайра аракет кыл.';

  @override
  String get snackEnterOtp => 'Сураныч, 6 орундуу кодду киргизиңиз';

  @override
  String get snackOtpExpired => 'Коддун мөөнөтү бүттү';

  @override
  String get snackOtpExpiredBody => 'Сураныч, жаңы кодду сураңыз.';

  @override
  String get snackInvalidCode => 'Жараксыз код';

  @override
  String get snackInvalidCodeBody =>
      'Код туура эмес. Сураныч, кайра аракет кылыңыз.';

  @override
  String get snackSendCodeFailed =>
      'Код жөнөтүлбөй койду. Туташууңузду текшерип, кайра аракет кылыңыз.';

  @override
  String get snackEmptyFolder => 'Бош папка';

  @override
  String get snackEmptyFolderBody =>
      'Тандалган папкадан эч кандай файл табылган жок.';

  @override
  String get snackFolderUnsupported => 'Колдоого алынбайт';

  @override
  String get snackFolderUnsupportedBody =>
      'Бул платформада папканы жүктөө мүмкүн эмес.';

  @override
  String get snackFolderReadError => 'Тандалган папканы окуй алган жок.';

  @override
  String get snackLimitReached => 'Чекке жетти';

  @override
  String get snackLimitFilesBody =>
      'Кээ бир файлдардын өлчөмү же саны чектелүү болгондуктан кошулган жок.';

  @override
  String get snackFreePlanLimit =>
      'Акысыз план которуу үчүн 5 ГБ чейин мүмкүнчүлүк берет. Сураныч, кээ бир файлдарды алып салыңыз же жаңыртыңыз.';

  @override
  String get snackSignInEmail =>
      'Сураныч, электрондук почта аркылуу жөнөтүү үчүн кириңиз.';

  @override
  String get snackUploadStartFailed => 'Жүктөп берүү башталбай койду.';

  @override
  String get snackVerifyEnterCode =>
      'Электрондук почтаңыздан 4 орундуу кодду киргизиңиз.';

  @override
  String get snackVerifyInvalid =>
      'Жараксыз же мөөнөтү өтүп кеткен код. Электрондук почтаны текшерип, кайра аракет кылыңыз.';

  @override
  String get snackVerifyResendFailed =>
      'Код кайра жөнөтүлбөй койду. Кайра аракет кыл.';

  @override
  String get snackDownloadComplete => 'Жүктөп алуу аяктады';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" Жүктөлүп алынгандарга сакталды';
  }

  @override
  String get snackDownloadFailed => 'Жүктөп алуу ишке ашкан жок';

  @override
  String get snackSaved => 'Сакталган';

  @override
  String get snackServerUrlUpdated =>
      'Сервер URL жаңыртылды. Колдонмону кайра иштетүү үчүн.';

  @override
  String get snackStoreError => 'Дүкөн катасы';

  @override
  String get snackMissingProducts => 'Жок продуктылар';

  @override
  String get snackStoreUnavailable => 'Дүкөн жеткиликтүү эмес';

  @override
  String get snackStoreUnavailableBody =>
      'Бул түзмөктө колдонмодогу сатып алуулар мүмкүн эмес.';

  @override
  String get snackProductNotLoaded => 'Продукт азырынча жүктөлө элек.';

  @override
  String get snackRestoreStarted => 'Калыбына келтирүү башталды';

  @override
  String get snackRestoreStartedBody => 'Сатып алууларыңызды текшерип жатабыз.';

  @override
  String get snackRestoreFailed => 'Калыбына келтирүү ишке ашкан жок';

  @override
  String get snackProcessing => 'Иштетүү';

  @override
  String get snackPleaseWait => 'Күтө туруңуз…';

  @override
  String get snackSuccess => 'Ийгилик';

  @override
  String get snackPurchaseCompleted => 'Сатып алуу аяктады.';

  @override
  String get snackPurchaseError => 'Сатып алуу катасы';

  @override
  String get snackPurchaseFailed => 'Сатып алуу ишке ашкан жок.';

  @override
  String get snackCanceled => 'Жокко чыгарылды';

  @override
  String get snackPurchaseCanceled => 'Сатып алуу жокко чыгарылды.';

  @override
  String get snackUpload => 'Жүктөө';

  @override
  String get snackVerify => 'Текшерүү';

  @override
  String get doNotExpire => 'Мөөнөтү бүтпө';

  @override
  String get hourSingular => 'саат';

  @override
  String get hourPlural => 'саат';

  @override
  String get daySingular => 'күн';

  @override
  String get dayPlural => 'күн';

  @override
  String get emailAddressLabel => 'ПОЧТА ДАРЕК';

  @override
  String get passwordLabelCaps => 'КУПУЯ СӨЗ';

  @override
  String get confirmPasswordLabelCaps => 'СЫРСӨЗДҮ ЫРАСТА';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ӨТҮРҮҮ ШИЛТЕМЕСИ ЖЕ ID';

  @override
  String get howToReceive => 'КАНТИП АЛУУ КЕРЕК';

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
  String get planAdsTitle => 'Жарнама планы';

  @override
  String get planAdsBullet1 => 'Жарнамасыз колдонмого кирүү';

  @override
  String get planAdsBullet2 => 'Бардык жарнамаларды алып салуу';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => '20 ГБ чейин файлдарды жөнөтүңүз';

  @override
  String get planProBullet2 => 'Fast Upload';

  @override
  String get planPremiumTitle => 'Премиум план';

  @override
  String get planPremiumBullet1 => '100 ГБ чейин файлдарды жөнөтүңүз';

  @override
  String get planPremiumBullet2 => 'Супер тез жүктөө';

  @override
  String get planSubscriptionDisclaimer =>
      'Сыноо мөөнөтү жок — колдонмонун кошумча функцияларын колдонуу үчүн жазылуу талап кылынат. Сизден дароо төлөм өндүрүлөт. Каалаган убакта жокко чыгара аласыз.';

  @override
  String get perMonth => '/ ай';

  @override
  String get perYear => '/ жыл';

  @override
  String get snackConnectionProblem =>
      'Туташуу көйгөйү. Сураныч, кайра аракет кылыңыз.';

  @override
  String get networkTitle => 'Network';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Файлдар: $count · $size байт';
  }

  @override
  String todayAt(String time) {
    return 'Бүгүн · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Кечээ · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysкүн мурун · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount Мб';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining сол';
  }

  @override
  String get loadingShort => 'Жүктөлүүдө…';

  @override
  String get colorPaletteTitle => 'Түс палитрасы';

  @override
  String get colorPaletteSectionBackgrounds => 'Фондор (сия масштабы)';

  @override
  String get colorPaletteSectionAccent => 'Акцент / Негизги';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Чек аралар жана айнек';

  @override
  String get colorPaletteSectionSemantic => 'Семантикалык';

  @override
  String get colorPaletteSectionLive => 'Жандуу тема (учурдагы)';

  @override
  String get colorPaletteActiveHint => '★ = экрандарда активдүү колдонулат';

  @override
  String get colorPaletteCopyHint =>
      'Он алтылык маанисин көчүрүү үчүн каалаган үлгүнү көпкө басыңыз.';

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
  String get settingsAppBrand => 'Чоң бөлүшүү\nVideo Files';

  @override
  String get loginEmailPasswordPrompt =>
      'Кирүү үчүн электрондук почтаңызды жана сырсөзүңүздү киргизиңиз.';

  @override
  String get forgotPassword => 'Сырсөздү унуттуңузбу?';

  @override
  String get forgotPasswordTitle => 'Сырсөздү кайра коюу';

  @override
  String get forgotPasswordBody =>
      'Каттоо эсебиңиздин электрондук почтасын киргизиңиз, биз баштапкы абалга келтирүү кодун жөнөтөбүз.';

  @override
  String get forgotPasswordSubmit => 'Калыбына келтирүү кодун жөнөтүү';

  @override
  String get resetPasswordTitle => 'Жаңы сырсөз түзүү';

  @override
  String get resetPasswordBody =>
      'Электрондук почтаңыздан 6 орундуу кодду киргизип, жаңы сырсөздү тандаңыз.';

  @override
  String get resetPasswordSubmit => 'Сырсөздү жаңыртуу';

  @override
  String get snackPasswordResetSent => 'Кайра коюу коду жөнөтүлдү';

  @override
  String get snackPasswordResetSentBody =>
      'Электрондук почтаңыздан 6 орундуу баштапкы абалга келтирүү кодун текшериңиз.';

  @override
  String get snackPasswordResetFailed =>
      'Баштапкы абалга келтирүү коду жөнөтүлгөн жок. Кайра аракет кыл.';

  @override
  String get snackPasswordUpdated => 'Сырсөз жаңырды';

  @override
  String get snackPasswordUpdatedBody => 'Жаңы сырсөзүңүз менен кириңиз.';

  @override
  String get snackPasswordResetInvalid =>
      'Жараксыз же мөөнөтү өтүп кеткен баштапкы абалга келтирүү коду.';

  @override
  String get otpDigitLabel => '6-САНДЫК КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count дагы файлдар';
  }
}
