// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'Споделете големи видео датотеки';

  @override
  String get heroAccent => 'веднаш.';

  @override
  String get heroTitle => 'Испратете тешки датотеки';

  @override
  String get splashLoading => 'Се вчитува…';

  @override
  String get navSend => 'Контролна табла';

  @override
  String get navHome => 'Дома';

  @override
  String get navHistory => 'Историја';

  @override
  String get navReceive => 'Примање';

  @override
  String get navPlans => 'Планови';

  @override
  String get navDownload => 'Преземи';

  @override
  String get navSettings => 'Поставки';

  @override
  String get modeLink => 'Добијте врска';

  @override
  String get modeEmail => 'Испрати по е-пошта';

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
  String get pickFiles => 'Изберете датотеки';

  @override
  String get pickFolder => 'Изберете папка';

  @override
  String get emailFrom => 'Вашата е-пошта';

  @override
  String get mailFromUsesAccount => 'Ја користи вашата најавена е-пошта.';

  @override
  String get recipientEmailsHelper =>
      'Повеќе примачи: одделете ги со запирки, точки запирки или празни места.';

  @override
  String get emailTo => 'Е-пошта на примачот';

  @override
  String get messageOptional => 'Порака (изборно)';

  @override
  String get passwordOptional => 'Лозинка (изборно)';

  @override
  String get destructAfterDownload => 'Избришете по преземањето';

  @override
  String get destructNo => 'Чувајте го на располагање';

  @override
  String get sendButton => 'Испрати';

  @override
  String get uploading => 'Се поставува…';

  @override
  String get uploadComplete => 'Готово';

  @override
  String get shareLinkTitle => 'Вашата врска';

  @override
  String get copyLink => 'Копирај ја врската';

  @override
  String get share => 'Споделете';

  @override
  String get shareQrCode => 'Споделете QR код';

  @override
  String get uploadMore => 'Испрати друга';

  @override
  String get emailSentTitle => 'Испратени е-пошта';

  @override
  String get verifyEmailTitle => 'Потврдете ја вашата е-пошта';

  @override
  String get verifyCodeHint => 'Внесете го кодот од вашата е-пошта';

  @override
  String get verifySubmit => 'Потврди';

  @override
  String get verifyResendCode => 'Повторно испратете го кодот';

  @override
  String get verifyCodeSent =>
      'На вашата е-пошта е испратен нов код за потврда.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Е-поштата за потврда можеби не е испратена';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Серверот не може да ја потврди испораката (често SMTP е погрешно конфигуриран). Побарајте од администраторот на вашиот сајт да ги провери поставките за пошта во административниот панел, па допрете Повторно испратете го кодот.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ако не пристигне: проверете ги Несакани/Спам и Промоции, почекајте малку, потврдете дека $email нема печатни грешки, па допрете Повторно прати.';
  }

  @override
  String get loginTitle => 'Пријавете се';

  @override
  String get signupHint =>
      'Користете ја е-поштата и лозинката на вашата сметка на страницата.';

  @override
  String get emailHint => 'Е-пошта';

  @override
  String get passwordHint => 'Лозинка';

  @override
  String get cancel => 'Откажи';

  @override
  String get signIn => 'Пријавете се';

  @override
  String get downloadIdHint => 'ИД за трансфер';

  @override
  String get privateIdHint => 'Приватен ID (изборно)';

  @override
  String get fetchTransfer => 'Отвори трансфер';

  @override
  String get downloadFile => 'Преземи';

  @override
  String get unlockDownload => 'Отклучете го преземањето';

  @override
  String get downloadSaved => 'Зачувано во Преземања';

  @override
  String get errorGeneric => 'Нешто тргна наопаку';

  @override
  String get errorNetwork => 'Мрежна грешка';

  @override
  String get errorBadResponse => 'Неочекуван одговор на серверот';

  @override
  String get termsAccept => 'Се согласувам со условите';

  @override
  String get settingsApiUrl => 'URL на јавна страница';

  @override
  String get settingsAccount => 'Сметка';

  @override
  String get settingsAppearance => 'Изглед';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeSystem => 'Систем';

  @override
  String get themeLight => 'Светлина';

  @override
  String get themeDark => 'Темно';

  @override
  String get settingsSignedIn => 'Најавени сте.';

  @override
  String get settingsSignedOut => 'Не сте најавени.';

  @override
  String get settingsOpenWebsite => 'Отворете ја веб-локацијата';

  @override
  String get signUp => 'Пријавете се';

  @override
  String get settingsLinks => 'Врски';

  @override
  String get privacyPolicy => 'Политика за приватност';

  @override
  String get termsOfService => 'Услови за користење';

  @override
  String get about => 'За';

  @override
  String get moreApps => 'Повеќе апликации';

  @override
  String get settingsLanguage => 'Јазик';

  @override
  String get languageEnglish => 'англиски јазик';

  @override
  String get languageHindi => 'хинди';

  @override
  String get logout => 'Одјави се';

  @override
  String get deleteAccount => 'Избришете ја сметката';

  @override
  String get deleteAccountConfirmTitle => 'Да се ​​избрише вашата сметка?';

  @override
  String get deleteAccountConfirmBody =>
      'Ова трајно ја брише вашата сметка и ве одјавува. Врските за пренос ќе продолжат да работат, но веќе нема да се појавуваат во вашата историја.';

  @override
  String get deleteAccountSuccess => 'Сметката е избришана';

  @override
  String get deleteAccountSuccessBody => 'Вашата сметка е отстранета.';

  @override
  String get deleteAccountFailed => 'Не може да се избрише сметката';

  @override
  String get deleteAccountFailedBody =>
      'Обидете се повторно или контактирајте со поддршката.';

  @override
  String get maxFilesReached => 'Премногу датотеки';

  @override
  String get fileTooLarge => 'Датотеката е преголема';

  @override
  String get ipLimit => 'Премногу прикачувања од оваа мрежа';

  @override
  String get fillFields => 'Ве молиме пополнете ги задолжителните полиња';

  @override
  String get invalidEmail => 'Неважечка е-пошта';

  @override
  String get maxRecipientsReached => 'Премногу примачи';

  @override
  String get loginRequiredTitle => 'Потребно е да се најавите';

  @override
  String get loginRequiredBody =>
      'Овој сервер бара сметка за прикачување или преземање.';

  @override
  String get settingsSubtitle => 'Поставки за апликација и сметка.';

  @override
  String get dropHeavyFile => 'Спуштете тешка датотека овде.';

  @override
  String upToTotal(String max) {
    return 'Вкупно до $max';
  }

  @override
  String get removeAll => 'Отстранете ги сите';

  @override
  String get addFiles => 'Додадете датотеки';

  @override
  String get adding => 'Се додава…';

  @override
  String get options => 'Опции';

  @override
  String get selfDestruct => 'Самоуништување по преземањето';

  @override
  String get expiry => 'Истекување';

  @override
  String get cancelUpload => 'Откажете го прикачувањето';

  @override
  String get transferReady => 'Трансферот е подготвен!';

  @override
  String get emailSentReady => 'Испратена е-пошта!';

  @override
  String get shareRecipientHint => 'Споделете ја оваа врска со вашиот примач.';

  @override
  String get emailSentBody => 'Ги известивме вашите примачи.';

  @override
  String get scanQr => 'Скенирајте за да ја отворите врската за пренос.';

  @override
  String get shareLinkButton => 'СПОДЕЛИ ЛИНК';

  @override
  String get verifyFourDigit =>
      'Внесете го 4-цифрениот код испратен до е-поштата на вашиот испраќач.';

  @override
  String get starting => 'Почнува…';

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
    return '$amount MB преостанати';
  }

  @override
  String get fillField => 'Ве молиме пополнете го ова поле.';

  @override
  String get enterValidEmail => 'Внесете валидна е-пошта.';

  @override
  String get message => 'Порака';

  @override
  String get recipientEmail => 'Е-пошта на примачот';

  @override
  String get active => 'Активен';

  @override
  String get expired => 'Истечен';

  @override
  String get historyTitle => 'Мои трансфери';

  @override
  String get signInToSeeTransfers =>
      'Најавете се за да ги видите вашите трансфери';

  @override
  String get signInTransfersBody =>
      'Ја користиме вашата е-пошта за поврзување на трансфери со вашата сметка - не е потребна лозинка.';

  @override
  String get couldNotLoadTransfers => 'Не може да се вчитаат трансферите';

  @override
  String get retry => 'Обидете се повторно';

  @override
  String get noTransfersYet => 'Сè уште нема трансфери';

  @override
  String get noTransfersBody =>
      'Откако ќе испратите датотека, таа ќе се појави овде.';

  @override
  String get transferDetails => 'Детали за трансфер';

  @override
  String get filesSection => 'Датотеки';

  @override
  String get receiveTitle => 'Примање датотеки';

  @override
  String get receiveSubtitle =>
      'Залепете врска за пренос за преземање датотеки.';

  @override
  String get pasteTooltip => 'Вметни';

  @override
  String get findTransfer => 'Најдете трансфер';

  @override
  String get receiveScanQr => 'Скенирајте QR';

  @override
  String get receiveScanQrTitle => 'Скенирај пренос QR';

  @override
  String get receiveScanQrHint => 'Порамнете го QR-кодот во рамката.';

  @override
  String get receiveScanQrInvalid =>
      'Овој QR-код не е валидна врска за пренос.';

  @override
  String get receiveScanQrCameraDenied =>
      'Потребен е пристап до камерата за скенирање QR-кодови.';

  @override
  String get receiveStepGetLink => 'Добијте ја врската';

  @override
  String get receiveStepGetLinkBody =>
      'Побарајте од испраќачот да ја сподели врската за пренос со вас.';

  @override
  String get receiveStepPaste => 'Залепете и пронајдете';

  @override
  String get receiveStepPasteBody =>
      'Залепете ја врската погоре и допрете „Најди трансфер“.';

  @override
  String get receiveStepDownload => 'Преземете датотеки';

  @override
  String get receiveStepDownloadBody =>
      'Погледнете ги деталите за датотеката и преземете сè одеднаш.';

  @override
  String get lookingUpTransfer => 'Се бара трансфер…';

  @override
  String get transferNotFound =>
      'Трансферот не е пронајден. Проверете ја врската и обидете се повторно.';

  @override
  String get transferExpired =>
      'Овој трансфер е истечен и повеќе не е достапен.';

  @override
  String get transferLoginRequired =>
      'Најавете се за да пристапите до овој пренос.';

  @override
  String get transferBadResponse =>
      'Неочекуван одговор на серверот. Проверете ја вашата врска.';

  @override
  String get transferNetworkError =>
      'Мрежна грешка. Проверете ја вашата интернет конекција.';

  @override
  String transferLoadFailed(String error) {
    return 'Не може да се вчита преносот: $error';
  }

  @override
  String get passwordProtected => 'Заштитено со лозинка';

  @override
  String get enterPassword => 'Внесете лозинка';

  @override
  String get unlock => 'Отклучи';

  @override
  String get downloading => 'Се презема…';

  @override
  String get downloadAllFiles => 'Преземете ги сите датотеки';

  @override
  String get downloadSingleFile => 'Преземете ја датотеката';

  @override
  String get receiveAnother => 'Добијте уште еден трансфер';

  @override
  String get plansTitle => 'Планови';

  @override
  String get plansSubtitle =>
      'Надградете за да отстраните реклами и да испраќате поголеми датотеки.';

  @override
  String get storeUnavailable => 'Продавницата е недостапна';

  @override
  String get storeUnavailableBody =>
      'Купувањата во апликација не се достапни во моментов.';

  @override
  String get storeLoadingPrices => 'Се вчитуваат цените од App Store…';

  @override
  String get storePricesUnavailable => 'Цените се недостапни';

  @override
  String get storePricesPartial => 'Некои цени не може да се вчитаат';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Вчитани се $loaded од $total претплатни производи.';
  }

  @override
  String get storeSetupHint =>
      'Тестирајте на вистински iPhone (не Симулатор), користете Sandbox Apple ID и уверете се дека сите 6 претплати се создадени според ID на пакетот на оваа апликација во App Store Connect со ценовно сет.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/месец';
  }

  @override
  String get freeVersionAds =>
      'Во моментов ја користите нашата бесплатна верзија со реклами';

  @override
  String get restorePurchases => 'Вратете ги купувањата';

  @override
  String get plansContinue => 'Продолжи';

  @override
  String get planLinkRestore => 'Врати';

  @override
  String get termsAndConditions => 'Услови и правила';

  @override
  String get createAccountTitle => 'Креирај сметка';

  @override
  String get signUpSubtitle => 'Пријавете се со е-пошта и лозинка.';

  @override
  String get confirmPassword => 'Потврдете ја лозинката';

  @override
  String get passwordMin8 => 'Лозинка (мин. 8 знаци)';

  @override
  String get alreadyHaveAccount => 'Веќе имате сметка?';

  @override
  String get checkEmailTitle => 'Проверете го вашиот\nе-пошта';

  @override
  String otpSentTo(String email) {
    return 'Испративме 6-цифрена шифра до\n$email';
  }

  @override
  String get verifyAndSignIn => 'Потврдете и најавете се';

  @override
  String get didntReceiveCode => 'Не го примивте?';

  @override
  String get tryAgain => 'Обидете се повторно';

  @override
  String get otpExpiresHint =>
      'Кодот истекува за 5 минути. Проверете ја папката со спам ако не ја гледате.';

  @override
  String get snackError => 'Грешка';

  @override
  String get snackCopied => 'Копирано';

  @override
  String get snackCopiedBody => 'Врската е копирана во таблата со исечоци';

  @override
  String get snackWelcome => 'Добредојдовте';

  @override
  String get snackAccountCreated => 'Создадена е сметка';

  @override
  String get snackEnterEmail => 'Ве молиме внесете ја вашата е-пошта';

  @override
  String get snackEnterPassword => 'Ве молиме внесете ја вашата лозинка';

  @override
  String get snackInvalidEmail => 'Неважечка адреса на е-пошта';

  @override
  String get snackInvalidCredentials => 'Неточна е-пошта или лозинка';

  @override
  String get snackPasswordMin8 => 'Лозинката мора да има најмалку 8 знаци';

  @override
  String get snackPasswordMismatch => 'Лозинките не се совпаѓаат.';

  @override
  String get snackAccountExists =>
      'Сметката веќе постои. Ве молиме најавете се.';

  @override
  String get snackSignupFailed =>
      'Не може да се создаде сметка. Обидете се повторно.';

  @override
  String get snackEnterOtp => 'Ве молиме внесете го 6-цифрениот код';

  @override
  String get snackOtpExpired => 'Кодот е истечен';

  @override
  String get snackOtpExpiredBody => 'Ве молиме побарајте нов код.';

  @override
  String get snackInvalidCode => 'Неважечки код';

  @override
  String get snackInvalidCodeBody =>
      'Кодот е неточен. Ве молиме обидете се повторно.';

  @override
  String get snackSendCodeFailed =>
      'Не може да се испрати код. Проверете ја врската и обидете се повторно.';

  @override
  String get snackEmptyFolder => 'Празна папка';

  @override
  String get snackEmptyFolderBody =>
      'Не се пронајдени датотеки во избраната папка.';

  @override
  String get snackFolderUnsupported => 'Не е поддржано';

  @override
  String get snackFolderUnsupportedBody =>
      'Поставувањето на папката не е достапно на оваа платформа.';

  @override
  String get snackFolderReadError => 'Не можев да ја прочитам избраната папка.';

  @override
  String get snackLimitReached => 'Достигнато е ограничувањето';

  @override
  String get snackLimitFilesBody =>
      'Некои датотеки не беа додадени поради ограничувањата на големината или бројот на датотеки.';

  @override
  String get snackFreePlanLimit =>
      'Бесплатниот план дозволува до 5 GB по трансфер. Ве молиме отстранете некои датотеки или надградете.';

  @override
  String get snackSignInEmail =>
      'Ве молиме најавете се за да испратите по е-пошта.';

  @override
  String get snackUploadStartFailed => 'Не може да започне поставувањето.';

  @override
  String get snackVerifyEnterCode =>
      'Внесете го 4-цифрениот код од вашата е-пошта.';

  @override
  String get snackVerifyInvalid =>
      'Неважечки или истечен код. Проверете ја е-поштата и обидете се повторно.';

  @override
  String get snackVerifyResendFailed =>
      'Кодот не може повторно да се испрати. Обидете се повторно.';

  @override
  String get snackDownloadComplete => 'Преземањето е завршено';

  @override
  String snackDownloadSaved(String filename) {
    return '„$filename“ е зачувана во „Преземања“.';
  }

  @override
  String get snackDownloadFailed => 'Преземањето не успеа';

  @override
  String get snackSaved => 'Зачувано';

  @override
  String get snackServerUrlUpdated =>
      'URL-адресата на серверот е ажурирана. Рестартирајте ја апликацијата за да аплицирате.';

  @override
  String get snackStoreError => 'Грешка за складирање';

  @override
  String get snackMissingProducts => 'Производи што недостасуваат';

  @override
  String get snackStoreUnavailable => 'Продавницата е недостапна';

  @override
  String get snackStoreUnavailableBody =>
      'Купувањата во апликација не се достапни на овој уред.';

  @override
  String get snackProductNotLoaded => 'Производот сè уште не е вчитан.';

  @override
  String get snackRestoreStarted => 'Враќањето започна';

  @override
  String get snackRestoreStartedBody => 'Ги проверуваме вашите набавки.';

  @override
  String get snackRestoreFailed => 'Враќањето не успеа';

  @override
  String get snackProcessing => 'Обработка';

  @override
  String get snackPleaseWait => 'Ве молиме почекајте…';

  @override
  String get snackSuccess => 'Успех';

  @override
  String get snackPurchaseCompleted => 'Купувањето е завршено.';

  @override
  String get snackPurchaseError => 'Грешка при купувањето';

  @override
  String get snackPurchaseFailed => 'Купувањето не успеа.';

  @override
  String get snackCanceled => 'Откажано';

  @override
  String get snackPurchaseCanceled => 'Купувањето е откажано.';

  @override
  String get snackUpload => 'Поставете';

  @override
  String get snackVerify => 'Потврди';

  @override
  String get doNotExpire => 'Не истекувајте';

  @override
  String get hourSingular => 'час';

  @override
  String get hourPlural => 'часови';

  @override
  String get daySingular => 'ден';

  @override
  String get dayPlural => 'денови';

  @override
  String get emailAddressLabel => 'Адреса на е-пошта';

  @override
  String get passwordLabelCaps => 'ЛОЗИНКА';

  @override
  String get confirmPasswordLabelCaps => 'ПОТВРДИ ЛОЗИНКА';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ЛИНК ЗА ТРАНСФЕР ИЛИ ИД';

  @override
  String get howToReceive => 'КАКО ДА ДОБИЕТЕ';

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
  String get planAdsTitle => 'План за реклами';

  @override
  String get planAdsBullet1 => 'Пристап до бесплатна апликација за реклами';

  @override
  String get planAdsBullet2 => 'Отстранете ги сите реклами';

  @override
  String get planProTitle => 'Про план';

  @override
  String get planProBullet1 => 'Испраќајте датотеки до 20 GB';

  @override
  String get planProBullet2 => 'Брзо прикачување';

  @override
  String get planPremiumTitle => 'Премиум план';

  @override
  String get planPremiumBullet1 => 'Испраќајте датотеки до 100 GB';

  @override
  String get planPremiumBullet2 => 'Супер брзо прикачување';

  @override
  String get planSubscriptionDisclaimer =>
      'Нема пробен период - потребна е претплата за користење на дополнителната функционалност на апликацијата. Ќе ви биде наплатено веднаш. Можете да откажете во секое време.';

  @override
  String get perMonth => '/ месец';

  @override
  String get perYear => '/ година';

  @override
  String get snackConnectionProblem =>
      'Проблем со поврзување. Ве молиме обидете се повторно.';

  @override
  String get networkTitle => 'Мрежа';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Датотеки: $count · $size бајти';
  }

  @override
  String todayAt(String time) {
    return 'Денес · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Вчера · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysд пред · $time';
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
    return '$sent / $total • $remaining лево';
  }

  @override
  String get loadingShort => 'Се вчитува…';

  @override
  String get colorPaletteTitle => 'Палета на бои';

  @override
  String get colorPaletteSectionBackgrounds => 'Позадини (скала на мастило)';

  @override
  String get colorPaletteSectionAccent => 'Акцент / Примарен';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Граници и стакло';

  @override
  String get colorPaletteSectionSemantic => 'Семантички';

  @override
  String get colorPaletteSectionLive => 'Тема во живо (тековно)';

  @override
  String get colorPaletteActiveHint => '★ = активно се користи во екраните';

  @override
  String get colorPaletteCopyHint =>
      'Долго притискајте на кој било примерок за да ја копирате неговата хексадетична вредност.';

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
  String get settingsAppBrand => 'Сподели големи\nВидео датотеки';

  @override
  String get loginEmailPasswordPrompt =>
      'Внесете ја вашата е-пошта и лозинка за да се најавите.';

  @override
  String get forgotPassword => 'Ја заборавивте лозинката?';

  @override
  String get forgotPasswordTitle => 'Ресетирајте ја лозинката';

  @override
  String get forgotPasswordBody =>
      'Внесете ја е-поштата на вашата сметка и ние ќе испратиме код за ресетирање.';

  @override
  String get forgotPasswordSubmit => 'Испрати код за ресетирање';

  @override
  String get resetPasswordTitle => 'Направете нова лозинка';

  @override
  String get resetPasswordBody =>
      'Внесете го 6-цифрениот код од вашата е-пошта и изберете нова лозинка.';

  @override
  String get resetPasswordSubmit => 'Ажурирајте ја лозинката';

  @override
  String get snackPasswordResetSent => 'Испратен е кодот за ресетирање';

  @override
  String get snackPasswordResetSentBody =>
      'Проверете ја вашата е-пошта за 6-цифрен код за ресетирање.';

  @override
  String get snackPasswordResetFailed =>
      'Не може да се испрати кодот за ресетирање. Обидете се повторно.';

  @override
  String get snackPasswordUpdated => 'Лозинката е ажурирана';

  @override
  String get snackPasswordUpdatedBody => 'Пријавете се со вашата нова лозинка.';

  @override
  String get snackPasswordResetInvalid =>
      'Неважечки или истечен код за ресетирање.';

  @override
  String get otpDigitLabel => '6-цифрен КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count повеќе датотеки';
  }
}
