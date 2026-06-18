// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Делите велике видео датотеке';

  @override
  String get heroAccent => 'одмах.';

  @override
  String get heroTitle => 'Пошаљите тешке датотеке';

  @override
  String get splashLoading => 'Учитавање…';

  @override
  String get navSend => 'Дасхбоард';

  @override
  String get navHome => 'Хоме';

  @override
  String get navHistory => 'Историја';

  @override
  String get navReceive => 'Примите';

  @override
  String get navPlans => 'Планови';

  @override
  String get navDownload => 'Преузми';

  @override
  String get navSettings => 'Подешавања';

  @override
  String get modeLink => 'Набавите везу';

  @override
  String get modeEmail => 'Пошаљите е-поштом';

  @override
  String get modeWifi => 'Wi‑Fi';

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
  String get pickFiles => 'Изаберите датотеке';

  @override
  String get pickFolder => 'Изаберите фасциклу';

  @override
  String get emailFrom => 'Ваш емаил';

  @override
  String get mailFromUsesAccount =>
      'Користи вашу е-пошту на коју сте пријављени.';

  @override
  String get recipientEmailsHelper =>
      'Више прималаца: одвојите зарезима, тачком и зарезом или размацима.';

  @override
  String get emailTo => 'Е-пошта примаоца';

  @override
  String get messageOptional => 'Порука (опционо)';

  @override
  String get passwordOptional => 'Лозинка (опционо)';

  @override
  String get destructAfterDownload => 'Избришите након преузимања';

  @override
  String get destructNo => 'Држите на располагању';

  @override
  String get sendButton => 'Пошаљи';

  @override
  String get uploading => 'Отпремање…';

  @override
  String get uploadComplete => 'Готово';

  @override
  String get shareLinkTitle => 'Ваша веза';

  @override
  String get copyLink => 'Копирај везу';

  @override
  String get share => 'Схаре';

  @override
  String get shareQrCode => 'Делите КР код';

  @override
  String get uploadMore => 'Пошаљи другу';

  @override
  String get emailSentTitle => 'Послати мејлови';

  @override
  String get verifyEmailTitle => 'Потврдите своју е-пошту';

  @override
  String get verifyCodeHint => 'Унесите код са своје е-поште';

  @override
  String get verifySubmit => 'Верифи';

  @override
  String get verifyResendCode => 'Поново пошаљи код';

  @override
  String get verifyCodeSent =>
      'Нови верификациони код је послат на вашу е-пошту.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Имејл за верификацију можда није послат';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сервер није могао да потврди испоруку (често је СМТП погрешно конфигурисан). Замолите администратора сајта да провери подешавања поште на административној табли, а затим тапните на Поново пошаљи код.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ако не стигне: проверите Јунк/Спам и промоције, сачекајте минут, потврдите да <<ПХ1>> нема грешака у куцању, а затим додирните Поново пошаљи.';
  }

  @override
  String get loginTitle => 'Пријавите се';

  @override
  String get signupHint =>
      'Користите адресу е-поште и лозинку свог налога на сајту.';

  @override
  String get emailHint => 'Емаил';

  @override
  String get passwordHint => 'Лозинка';

  @override
  String get cancel => 'Откажи';

  @override
  String get signIn => 'Пријавите се';

  @override
  String get downloadIdHint => 'Трансфер ИД';

  @override
  String get privateIdHint => 'Приватни ИД (опционо)';

  @override
  String get fetchTransfer => 'Отворен трансфер';

  @override
  String get downloadFile => 'Преузми';

  @override
  String get unlockDownload => 'Откључај преузимање';

  @override
  String get downloadSaved => 'Сачувано у Преузимања';

  @override
  String get errorGeneric => 'Нешто је пошло по злу';

  @override
  String get errorNetwork => 'Мрежна грешка';

  @override
  String get errorBadResponse => 'Неочекиван одговор сервера';

  @override
  String get termsAccept => 'Слажем се са условима';

  @override
  String get settingsApiUrl => 'УРЛ јавног сајта';

  @override
  String get settingsAccount => 'Рачун';

  @override
  String get settingsAppearance => 'Изглед';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeSystem => 'Систем';

  @override
  String get themeLight => 'Светлост';

  @override
  String get themeDark => 'Дарк';

  @override
  String get settingsSignedIn => 'Пријављени сте.';

  @override
  String get settingsSignedOut => 'Нисте пријављени.';

  @override
  String get settingsOpenWebsite => 'Отворите веб локацију';

  @override
  String get signUp => 'Пријавите се';

  @override
  String get settingsLinks => 'Линкови';

  @override
  String get privacyPolicy => 'Политика приватности';

  @override
  String get termsOfService => 'Услови коришћења услуге';

  @override
  String get about => 'Абоут';

  @override
  String get moreApps => 'Више апликација';

  @override
  String get settingsLanguage => 'Језик';

  @override
  String get languageEnglish => 'енглески';

  @override
  String get languageHindi => 'Хинди';

  @override
  String get logout => 'Одјавите се';

  @override
  String get deleteAccount => 'Избриши налог';

  @override
  String get deleteAccountConfirmTitle => 'Избрисати свој налог?';

  @override
  String get deleteAccountConfirmBody =>
      'Ово трајно брише ваш налог и одјављује вас. Ваше везе за пренос ће наставити да раде, али се више неће појављивати у вашој историји.';

  @override
  String get deleteAccountSuccess => 'Налог је избрисан';

  @override
  String get deleteAccountSuccessBody => 'Ваш налог је уклоњен.';

  @override
  String get deleteAccountFailed => 'Није могуће избрисати налог';

  @override
  String get deleteAccountFailedBody =>
      'Покушајте поново или контактирајте подршку.';

  @override
  String get maxFilesReached => 'Превише датотека';

  @override
  String get fileTooLarge => 'Фајл је превелик';

  @override
  String get ipLimit => 'Превише отпремања са ове мреже';

  @override
  String get fillFields => 'Молимо попуните обавезна поља';

  @override
  String get invalidEmail => 'Неважећа адреса е-поште';

  @override
  String get maxRecipientsReached => 'Превише прималаца';

  @override
  String get loginRequiredTitle => 'Пријава је обавезна';

  @override
  String get loginRequiredBody =>
      'Овај сервер захтева налог за отпремање или преузимање.';

  @override
  String get settingsSubtitle => 'Подешавања апликације и налог.';

  @override
  String get dropHeavyFile => 'Испустите тешку датотеку овде.';

  @override
  String upToTotal(String max) {
    return 'До <<ПХ1>> укупно';
  }

  @override
  String get removeAll => 'Уклоните све';

  @override
  String get addFiles => 'Додајте датотеке';

  @override
  String get adding => 'Додавање…';

  @override
  String get options => 'Опције';

  @override
  String get selfDestruct => 'Самоуништење након преузимања';

  @override
  String get expiry => 'Истек';

  @override
  String get cancelUpload => 'Откажи отпремање';

  @override
  String get transferReady => 'Трансфер спреман!';

  @override
  String get emailSentReady => 'Емаил послат!';

  @override
  String get shareRecipientHint => 'Поделите ову везу са својим примаоцем.';

  @override
  String get emailSentBody => 'Обавестили смо ваше примаоце(е).';

  @override
  String get scanQr => 'Скенирајте да бисте отворили везу за пренос.';

  @override
  String get shareLinkButton => 'ДЕЛИ ЛИНК';

  @override
  String get verifyFourDigit =>
      'Унесите четвороцифрени код послат на е-пошту вашег пошиљаоца.';

  @override
  String get starting => 'Почиње…';

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
    return '<<ПХ1>> МБ преостало';
  }

  @override
  String get fillField => 'Молимо попуните ово поље.';

  @override
  String get enterValidEmail => 'Унесите важећу е-пошту.';

  @override
  String get message => 'Порука';

  @override
  String get recipientEmail => 'Е-пошта примаоца';

  @override
  String get active => 'Ацтиве';

  @override
  String get expired => 'Истекао';

  @override
  String get historyTitle => 'Моји трансфери';

  @override
  String get signInToSeeTransfers =>
      'Пријавите се да бисте видели своје трансфере';

  @override
  String get signInTransfersBody =>
      'Користимо вашу е-пошту да повежемо трансфере са вашим налогом — није потребна лозинка.';

  @override
  String get couldNotLoadTransfers => 'Није могуће учитати трансфере';

  @override
  String get retry => 'Покушајте поново';

  @override
  String get noTransfersYet => 'Још нема трансфера';

  @override
  String get noTransfersBody =>
      'Када пошаљете датотеку, она ће се појавити овде.';

  @override
  String get transferDetails => 'Детаљи о трансферу';

  @override
  String get filesSection => 'Фајлови';

  @override
  String get receiveTitle => 'Рецеиве Филес';

  @override
  String get receiveSubtitle =>
      'Налепите везу за пренос да бисте преузели датотеке.';

  @override
  String get pasteTooltip => 'Залепите';

  @override
  String get findTransfer => 'Пронађите Трансфер';

  @override
  String get receiveScanQr => 'Сцан КР';

  @override
  String get receiveScanQrTitle => 'Сцан трансфер КР';

  @override
  String get receiveScanQrHint => 'Поравнајте КР код унутар оквира.';

  @override
  String get receiveScanQrInvalid => 'Овај КР код није важећа веза за пренос.';

  @override
  String get receiveScanQrCameraDenied =>
      'За скенирање КР кодова потребан је приступ камери.';

  @override
  String get receiveStepGetLink => 'Узми везу';

  @override
  String get receiveStepGetLinkBody =>
      'Замолите пошиљаоца да подели везу за пренос са вама.';

  @override
  String get receiveStepPaste => 'Налепите и пронађите';

  @override
  String get receiveStepPasteBody =>
      'Налепите везу изнад и додирните „Пронађи трансфер“.';

  @override
  String get receiveStepDownload => 'Преузмите датотеке';

  @override
  String get receiveStepDownloadBody =>
      'Погледајте детаље о фајлу и преузмите све одједном.';

  @override
  String get lookingUpTransfer => 'Тражење трансфера…';

  @override
  String get transferNotFound =>
      'Трансфер није пронађен. Проверите везу и покушајте поново.';

  @override
  String get transferExpired =>
      'Овај трансфер је истекао и више није доступан.';

  @override
  String get transferLoginRequired =>
      'За приступ овом преносу је потребно да се пријавите.';

  @override
  String get transferBadResponse =>
      'Неочекиван одговор сервера. Проверите своју везу.';

  @override
  String get transferNetworkError =>
      'Мрежна грешка. Проверите своју интернет везу.';

  @override
  String transferLoadFailed(String error) {
    return 'Није могуће учитати пренос: <<ПХ1>>';
  }

  @override
  String get passwordProtected => 'Заштићено лозинком';

  @override
  String get enterPassword => 'Унесите лозинку';

  @override
  String get unlock => 'Откључај';

  @override
  String get downloading => 'Преузимање…';

  @override
  String get downloadAllFiles => 'Преузмите све датотеке';

  @override
  String get downloadSingleFile => 'Преузмите датотеку';

  @override
  String get receiveAnother => 'Примите још један трансфер';

  @override
  String get plansTitle => 'Планови';

  @override
  String get plansSubtitle =>
      'Надоградите да бисте уклонили огласе и послали веће датотеке.';

  @override
  String get storeUnavailable => 'Продавница недоступна';

  @override
  String get storeUnavailableBody =>
      'Куповине у апликацији тренутно нису доступне.';

  @override
  String get storeLoadingPrices => 'Учитавање цена из Апп Сторе-а…';

  @override
  String get storePricesUnavailable => 'Цене нису доступне';

  @override
  String get storePricesPartial => 'Неке цене нису могле да се учитају';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '<<ПХ2>> од <<ПХ3>> претплаћених производа учитаних.';
  }

  @override
  String get storeSetupHint =>
      'Тестирајте на правом иПхоне-у (не на Симулатору), користите Аппле ИД у Сандбок-у и уверите се да је свих 6 претплата креирано под ИД-ом пакета ове апликације у Апп Сторе Цоннецт-у са постављеним ценама.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<ПХ1>>/месец';
  }

  @override
  String get freeVersionAds =>
      'Тренутно користите нашу бесплатну верзију са огласима';

  @override
  String get restorePurchases => 'Вратите куповине';

  @override
  String get plansContinue => 'Настави';

  @override
  String get planLinkRestore => 'Ресторе';

  @override
  String get termsAndConditions => 'Услови коришћења';

  @override
  String get createAccountTitle => 'Креирајте налог';

  @override
  String get signUpSubtitle => 'Пријавите се са имејлом и лозинком.';

  @override
  String get confirmPassword => 'Потврдите лозинку';

  @override
  String get passwordMin8 => 'Лозинка (мин 8 знакова)';

  @override
  String get alreadyHaveAccount => 'Већ имате налог?';

  @override
  String get checkEmailTitle => 'Проверите своје\nемаил';

  @override
  String otpSentTo(String email) {
    return 'Послали смо шестоцифрени код на\n<<ПХ1>>';
  }

  @override
  String get verifyAndSignIn => 'Верификујте и пријавите се';

  @override
  String get didntReceiveCode => 'Нисте га примили?';

  @override
  String get tryAgain => 'Покушајте поново';

  @override
  String get otpExpiresHint =>
      'Код истиче за 5 минута. Проверите фасциклу за нежељену пошту ако је не видите.';

  @override
  String get snackError => 'Грешка';

  @override
  String get snackCopied => 'Копирано';

  @override
  String get snackCopiedBody => 'Веза је копирана у међуспремник';

  @override
  String get snackWelcome => 'Добродошли';

  @override
  String get snackAccountCreated => 'Налог је направљен';

  @override
  String get snackEnterEmail => 'Унесите своју е-пошту';

  @override
  String get snackEnterPassword => 'Унесите своју лозинку';

  @override
  String get snackInvalidEmail => 'Неважећа адреса е-поште';

  @override
  String get snackInvalidCredentials => 'Нетачна адреса е-поште или лозинка';

  @override
  String get snackPasswordMin8 => 'Лозинка мора имати најмање 8 знакова';

  @override
  String get snackPasswordMismatch => 'Лозинке се не поклапају.';

  @override
  String get snackAccountExists => 'Налог већ постоји. Молимо пријавите се.';

  @override
  String get snackSignupFailed =>
      'Није могуће креирати налог. Покушајте поново.';

  @override
  String get snackEnterOtp => 'Унесите шестоцифрени код';

  @override
  String get snackOtpExpired => 'Код је истекао';

  @override
  String get snackOtpExpiredBody => 'Затражите нови код.';

  @override
  String get snackInvalidCode => 'Неважећи код';

  @override
  String get snackInvalidCodeBody => 'Код је нетачан. Покушајте поново.';

  @override
  String get snackSendCodeFailed =>
      'Није могуће послати код. Проверите своју везу и покушајте поново.';

  @override
  String get snackEmptyFolder => 'Празна фасцикла';

  @override
  String get snackEmptyFolderBody =>
      'У изабраној фасцикли нису пронађене датотеке.';

  @override
  String get snackFolderUnsupported => 'Није подржано';

  @override
  String get snackFolderUnsupportedBody =>
      'Отпремање фолдера није доступно на овој платформи.';

  @override
  String get snackFolderReadError => 'Није могуће прочитати изабрани фолдер.';

  @override
  String get snackLimitReached => 'Ограничење је достигнуто';

  @override
  String get snackLimitFilesBody =>
      'Неке датотеке нису додате због ограничења величине или броја датотека.';

  @override
  String get snackFreePlanLimit =>
      'Бесплатни план омогућава до 5 ГБ по преносу. Уклоните неке датотеке или надоградите.';

  @override
  String get snackSignInEmail => 'Пријавите се за слање путем е-поште.';

  @override
  String get snackUploadStartFailed => 'Није могуће започети отпремање.';

  @override
  String get snackVerifyEnterCode =>
      'Унесите четвороцифрени код из своје е-поште.';

  @override
  String get snackVerifyInvalid =>
      'Неважећи или истекао код. Проверите е-пошту и покушајте поново.';

  @override
  String get snackVerifyResendFailed =>
      'Није могуће поново послати код. Покушајте поново.';

  @override
  String get snackDownloadComplete => 'Преузимање је завршено';

  @override
  String snackDownloadSaved(String filename) {
    return '„<<ПХ1>>“ је сачуван у Преузимања';
  }

  @override
  String get snackDownloadFailed => 'Преузимање није успело';

  @override
  String get snackSaved => 'Сачувано';

  @override
  String get snackServerUrlUpdated =>
      'УРЛ сервера је ажуриран. Поново покрените апликацију да бисте се пријавили.';

  @override
  String get snackStoreError => 'Грешка при складиштењу';

  @override
  String get snackMissingProducts => 'Недостају производи';

  @override
  String get snackStoreUnavailable => 'Продавница недоступна';

  @override
  String get snackStoreUnavailableBody =>
      'Куповине у апликацији нису доступне на овом уређају.';

  @override
  String get snackProductNotLoaded => 'Производ још није учитан.';

  @override
  String get snackRestoreStarted => 'Враћање је почело';

  @override
  String get snackRestoreStartedBody => 'Проверавамо ваше куповине.';

  @override
  String get snackRestoreFailed => 'Враћање није успело';

  @override
  String get snackProcessing => 'Обрада';

  @override
  String get snackPleaseWait => 'Молимо сачекајте…';

  @override
  String get snackSuccess => 'Успех';

  @override
  String get snackPurchaseCompleted => 'Куповина је завршена.';

  @override
  String get snackPurchaseError => 'Грешка при куповини';

  @override
  String get snackPurchaseFailed => 'Куповина није успела.';

  @override
  String get snackCanceled => 'Отказано';

  @override
  String get snackPurchaseCanceled => 'Куповина је отказана.';

  @override
  String get snackUpload => 'Уплоад';

  @override
  String get snackVerify => 'Верифи';

  @override
  String get doNotExpire => 'Не истиче';

  @override
  String get hourSingular => 'сат';

  @override
  String get hourPlural => 'сати';

  @override
  String get daySingular => 'дан';

  @override
  String get dayPlural => 'дана';

  @override
  String get emailAddressLabel => 'Е-МАИЛ АДРЕСА';

  @override
  String get passwordLabelCaps => 'ПАССВОРД';

  @override
  String get confirmPasswordLabelCaps => 'ПОТВРДИ ЛОЗИНКУ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ЛИНК ИЛИ ИД';

  @override
  String get howToReceive => 'КАКО ДОБИТИ';

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
  String get planAdsTitle => 'Огласни план';

  @override
  String get planAdsBullet1 => 'Приступ бесплатној апликацији за огласе';

  @override
  String get planAdsBullet2 => 'Уклоните све огласе';

  @override
  String get planProTitle => 'Про План';

  @override
  String get planProBullet1 => 'Шаљите датотеке до 20 ГБ';

  @override
  String get planProBullet2 => 'Фаст Уплоад';

  @override
  String get planPremiumTitle => 'Премиум план';

  @override
  String get planPremiumBullet1 => 'Шаљите датотеке до 100 ГБ';

  @override
  String get planPremiumBullet2 => 'Супер брзо отпремање';

  @override
  String get planSubscriptionDisclaimer =>
      'Нема пробног периода — потребна је претплата за коришћење додатне функционалности апликације. Биће вам наплаћено одмах. Можете отказати било када.';

  @override
  String get perMonth => '/ месец';

  @override
  String get perYear => '/ год';

  @override
  String get snackConnectionProblem => 'Проблем са везом. Покушајте поново.';

  @override
  String get networkTitle => 'Мрежа';

  @override
  String transferIdLabel(String id) {
    return 'ИД: <<ПХ1>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Фајлови: <<ПХ2>> · <<ПХ3>> бајтова';
  }

  @override
  String todayAt(String time) {
    return 'Данас · <<ПХ1>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'Јуче · <<ПХ1>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '<<ПХ2>>д пре · <<ПХ3>>';
  }

  @override
  String dateAt(String date, String time) {
    return '<<ПХ2>> · <<ПХ3>>';
  }

  @override
  String mbAmount(String amount) {
    return '<<ПХ1>> МБ';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '<<ПХ3>> / <<ПХ4>> • <<ПХ5>> лево';
  }

  @override
  String get loadingShort => 'Учитавање…';

  @override
  String get colorPaletteTitle => 'Палета боја';

  @override
  String get colorPaletteSectionBackgrounds => 'Позадине (скала мастила)';

  @override
  String get colorPaletteSectionAccent => 'Акценат / Примарни';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Бордерс & Гласс';

  @override
  String get colorPaletteSectionSemantic => 'Семантички';

  @override
  String get colorPaletteSectionLive => 'Жива тема (тренутна)';

  @override
  String get colorPaletteActiveHint => '★ = активно се користи на екранима';

  @override
  String get colorPaletteCopyHint =>
      'Дуго притисните било који узорак да бисте копирали његову хексадецималну вредност.';

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
  String get settingsAppBrand => 'Схаре Ларге\nВидео датотеке';

  @override
  String get loginEmailPasswordPrompt =>
      'Унесите своју адресу е-поште и лозинку да бисте се пријавили.';

  @override
  String get forgotPassword => 'Заборавили сте лозинку?';

  @override
  String get forgotPasswordTitle => 'Ресетујте лозинку';

  @override
  String get forgotPasswordBody =>
      'Унесите адресу е-поште свог налога и ми ћемо послати код за ресетовање.';

  @override
  String get forgotPasswordSubmit => 'Пошаљи код за ресетовање';

  @override
  String get resetPasswordTitle => 'Креирајте нову лозинку';

  @override
  String get resetPasswordBody =>
      'Унесите шестоцифрени код из своје е-поште и изаберите нову лозинку.';

  @override
  String get resetPasswordSubmit => 'Ажурирајте лозинку';

  @override
  String get snackPasswordResetSent => 'Ресет код је послат';

  @override
  String get snackPasswordResetSentBody =>
      'Проверите своју е-пошту за 6-цифрени код за ресетовање.';

  @override
  String get snackPasswordResetFailed =>
      'Није могуће послати код за ресетовање. Покушајте поново.';

  @override
  String get snackPasswordUpdated => 'Лозинка је ажурирана';

  @override
  String get snackPasswordUpdatedBody => 'Пријавите се са новом лозинком.';

  @override
  String get snackPasswordResetInvalid =>
      'Неважећи или истекао код за ресетовање.';

  @override
  String get otpDigitLabel => '6-ЦИФРЕН КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+<<ПХ1>> још датотека';
  }
}
