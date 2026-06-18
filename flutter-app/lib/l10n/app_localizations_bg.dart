// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Споделяйте големи видео файлове';

  @override
  String get heroAccent => 'моментално.';

  @override
  String get heroTitle => 'Изпращайте тежки файлове';

  @override
  String get splashLoading => 'Зарежда се...';

  @override
  String get navSend => 'Табло за управление';

  @override
  String get navHome => 'Начало';

  @override
  String get navHistory => 'История';

  @override
  String get navReceive => 'Получете';

  @override
  String get navPlans => 'Планове';

  @override
  String get navDownload => 'Изтегляне';

  @override
  String get navSettings => 'Настройки';

  @override
  String get modeLink => 'Вземете линк';

  @override
  String get modeEmail => 'Изпращане по имейл';

  @override
  String get pickFiles => 'Изберете файлове';

  @override
  String get pickFolder => 'Изберете папка';

  @override
  String get emailFrom => 'Вашият имейл';

  @override
  String get mailFromUsesAccount =>
      'Използва вашия имейл адрес, в който сте влезли.';

  @override
  String get recipientEmailsHelper =>
      'Множество получатели: разделете със запетаи, точка и запетая или интервали.';

  @override
  String get emailTo => 'Имейл на получателя';

  @override
  String get messageOptional => 'Съобщение (по избор)';

  @override
  String get passwordOptional => 'Парола (по избор)';

  @override
  String get destructAfterDownload => 'Изтриване след изтегляне';

  @override
  String get destructNo => 'Дръжте на разположение';

  @override
  String get sendButton => 'Изпратете';

  @override
  String get uploading => 'Качване...';

  @override
  String get uploadComplete => 'Готово';

  @override
  String get shareLinkTitle => 'Вашата връзка';

  @override
  String get copyLink => 'Копиране на връзката';

  @override
  String get share => 'Споделете';

  @override
  String get shareQrCode => 'Споделяне на QR код';

  @override
  String get uploadMore => 'Изпратете друг';

  @override
  String get emailSentTitle => 'Изпратени имейли';

  @override
  String get verifyEmailTitle => 'Потвърдете своя имейл';

  @override
  String get verifyCodeHint => 'Въведете кода от вашия имейл';

  @override
  String get verifySubmit => 'Проверете';

  @override
  String get verifyResendCode => 'Повторно изпращане на кода';

  @override
  String get verifyCodeSent =>
      'На вашия имейл беше изпратен нов код за потвърждение.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Имейлът за потвърждение може да не е изпратен';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сървърът не можа да потвърди доставката (често SMTP е неправилно конфигуриран). Помолете администратора на вашия сайт да провери настройките за поща в административния панел, след което докоснете Повторно изпращане на код.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ако не пристигне: проверете Junk/Spam и Promotions, изчакайте малко, потвърдете, че $email няма правописни грешки, след което докоснете Повторно изпращане.';
  }

  @override
  String get loginTitle => 'влезте';

  @override
  String get signupHint =>
      'Използвайте имейла и паролата за вашия акаунт в сайта.';

  @override
  String get emailHint => 'Имейл';

  @override
  String get passwordHint => 'Парола';

  @override
  String get cancel => 'Отказ';

  @override
  String get signIn => 'влезте';

  @override
  String get downloadIdHint => 'ID за прехвърляне';

  @override
  String get privateIdHint => 'Личен документ за самоличност (по избор)';

  @override
  String get fetchTransfer => 'Отворен трансфер';

  @override
  String get downloadFile => 'Изтегляне';

  @override
  String get unlockDownload => 'Отключване на изтегляне';

  @override
  String get downloadSaved => 'Запазено в Изтегляния';

  @override
  String get errorGeneric => 'Нещо се обърка';

  @override
  String get errorNetwork => 'Грешка в мрежата';

  @override
  String get errorBadResponse => 'Неочакван отговор на сървъра';

  @override
  String get termsAccept => 'Съгласен съм с условията';

  @override
  String get settingsApiUrl => 'Публичен сайт URL';

  @override
  String get settingsAccount => 'Акаунт';

  @override
  String get settingsAppearance => 'Външен вид';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Светъл';

  @override
  String get themeDark => 'Тъмен';

  @override
  String get settingsSignedIn => 'Влезли сте.';

  @override
  String get settingsSignedOut => 'Не сте влезли в.';

  @override
  String get settingsOpenWebsite => 'Отворете уебсайт';

  @override
  String get signUp => 'Регистрация';

  @override
  String get settingsLinks => 'Връзки';

  @override
  String get privacyPolicy => 'Политика за поверителност';

  @override
  String get termsOfService => 'Условия за ползване';

  @override
  String get about => 'Относно';

  @override
  String get moreApps => 'Още apps';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Log out';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountConfirmTitle => 'Delete your account?';

  @override
  String get deleteAccountConfirmBody =>
      'This permanently deletes your account and signs you out. Вашите връзки за прехвърляне ще продължат да работят, но повече няма да се показват в историята ви.';

  @override
  String get deleteAccountSuccess => 'Акаунтът е изтрит';

  @override
  String get deleteAccountSuccessBody => 'Акаунтът ви е премахнат.';

  @override
  String get deleteAccountFailed => 'Акаунтът не можа да бъде изтрит';

  @override
  String get deleteAccountFailedBody =>
      'Моля, опитайте отново или се свържете с екипа за поддръжка.';

  @override
  String get maxFilesReached => 'Твърде много файлове';

  @override
  String get fileTooLarge => 'Файлът също голям';

  @override
  String get ipLimit => 'Твърде много качвания от тази мрежа';

  @override
  String get fillFields => 'Моля, попълнете задължителните полета';

  @override
  String get invalidEmail => 'Невалиден имейл';

  @override
  String get maxRecipientsReached => 'Твърде много получатели';

  @override
  String get loginRequiredTitle => 'Изисква се влизане';

  @override
  String get loginRequiredBody =>
      'Този сървър изисква акаунт за качване или изтегляне.';

  @override
  String get settingsSubtitle => 'Предпочитания за приложението и акаунт.';

  @override
  String get dropHeavyFile => 'Пуснете тежък файл тук.';

  @override
  String upToTotal(String max) {
    return 'До $max общо';
  }

  @override
  String get removeAll => 'Премахване на всички';

  @override
  String get addFiles => 'Добавяне файлове';

  @override
  String get adding => 'Добавяне...';

  @override
  String get options => 'Опции';

  @override
  String get selfDestruct => 'Самоунищожаване след изтегляне';

  @override
  String get expiry => 'Изтичане';

  @override
  String get cancelUpload => 'Отказ от качването';

  @override
  String get transferReady => 'Прехвърлянето е готово!';

  @override
  String get emailSentReady => 'Имейлът е изпратен!';

  @override
  String get shareRecipientHint => 'Споделете тази връзка с вашия получател.';

  @override
  String get emailSentBody => 'Уведомихме вашия получател(и).';

  @override
  String get scanQr => 'Сканирайте, за да отворите връзката за прехвърляне.';

  @override
  String get shareLinkButton => 'СПОДЕЛЕТЕ ВРЪЗКА';

  @override
  String get verifyFourDigit =>
      'Въведете 4-цифрения код, изпратен на вашия имейл на изпращача.';

  @override
  String get starting => 'Започване…';

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
    return '$amount MB остават';
  }

  @override
  String get fillField => 'Моля, попълнете това поле.';

  @override
  String get enterValidEmail => 'Въведете валиден имейл.';

  @override
  String get message => 'Съобщение';

  @override
  String get recipientEmail => 'Имейл на получателя';

  @override
  String get active => 'Активно';

  @override
  String get expired => 'Изтекло';

  @override
  String get historyTitle => 'Моите преводи';

  @override
  String get signInToSeeTransfers => 'Влезте, за да видите вашите преводи';

  @override
  String get signInTransfersBody =>
      'Ние използваме вашия имейл, за да свържем преводите към вашия акаунт — не е необходима парола.';

  @override
  String get couldNotLoadTransfers => 'Не можахме да заредим трансфери';

  @override
  String get retry => 'Повторен опит';

  @override
  String get noTransfersYet => 'Все още няма трансфери';

  @override
  String get noTransfersBody =>
      'След като изпратите файл, той ще се появи тук.';

  @override
  String get transferDetails => 'Подробности за трансфер';

  @override
  String get filesSection => 'Файлове';

  @override
  String get receiveTitle => 'Получаване на файлове';

  @override
  String get receiveSubtitle =>
      'Поставете връзка за трансфер за изтегляне файлове.';

  @override
  String get pasteTooltip => 'Поставяне';

  @override
  String get findTransfer => 'Намиране на прехвърляне';

  @override
  String get receiveScanQr => 'Сканиране на QR';

  @override
  String get receiveScanQrTitle => 'Сканиране на прехвърляне на QR';

  @override
  String get receiveScanQrHint => 'Подравнете QR кода в рамката.';

  @override
  String get receiveScanQrInvalid =>
      'Този QR код не е валидна връзка за прехвърляне.';

  @override
  String get receiveScanQrCameraDenied =>
      'Камера необходим е достъп за сканиране на QR кодове.';

  @override
  String get receiveStepGetLink => 'Получете връзката';

  @override
  String get receiveStepGetLinkBody =>
      'Помолете подателя да сподели връзката за прехвърляне с вас.';

  @override
  String get receiveStepPaste => 'Поставете и намерете';

  @override
  String get receiveStepPasteBody =>
      'Поставете връзката по-горе и докоснете „Намиране на превод“.';

  @override
  String get receiveStepDownload => 'Изтегляне на файлове';

  @override
  String get receiveStepDownloadBody =>
      'Вижте подробности за файла и изтеглете всичко наведнъж.';

  @override
  String get lookingUpTransfer => 'Търсене на превод...';

  @override
  String get transferNotFound =>
      'Прехвърлянето не е намерено. Проверете връзката и опитайте отново.';

  @override
  String get transferExpired => 'Този трансфер е изтекъл и вече не е наличен.';

  @override
  String get transferLoginRequired =>
      'Изисква се влизане за достъп до този трансфер.';

  @override
  String get transferBadResponse =>
      'Неочакван отговор на сървъра. Проверете връзката си.';

  @override
  String get transferNetworkError =>
      'Грешка в мрежата. Проверете връзката си с интернет.';

  @override
  String transferLoadFailed(String error) {
    return 'Прехвърлянето не можа да се зареди: $error';
  }

  @override
  String get passwordProtected => 'Защитена с парола';

  @override
  String get enterPassword => 'Въведете парола';

  @override
  String get unlock => 'Отключване';

  @override
  String get downloading => 'Изтегляне…';

  @override
  String get downloadAllFiles => 'Изтегляне на всички файлове';

  @override
  String get downloadSingleFile => 'Изтегляне на файл';

  @override
  String get receiveAnother => 'Получаване на нов трансфер';

  @override
  String get plansTitle => 'Планове';

  @override
  String get plansSubtitle =>
      'Надстройте, за да премахнете реклами и да изпратите по-големи файлове.';

  @override
  String get storeUnavailable => 'Магазинът не е наличен';

  @override
  String get storeUnavailableBody =>
      'Покупките в приложението не са налични правилно сега.';

  @override
  String get storeLoadingPrices => 'Цените се зареждат от App Store…';

  @override
  String get storePricesUnavailable => 'Цените не са налични';

  @override
  String get storePricesPartial => 'Някои цени не можаха да бъдат заредени';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded от $total абонаментни продукти са заредени.';
  }

  @override
  String get storeSetupHint =>
      'Тествайте на истински iPhone (не Simulator), използвайте Sandbox Apple ID и се уверете, че всички 6 абонамента са създадени под идентификатора на пакета на това приложение в App Store Connect със зададени цени.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/месец';
  }

  @override
  String get freeVersionAds =>
      'В момента използвате нашата безплатна версия с реклами';

  @override
  String get restorePurchases => 'Възстановяване покупки';

  @override
  String get plansContinue => 'Продължи';

  @override
  String get planLinkRestore => 'Възстановяване';

  @override
  String get termsAndConditions => 'Правила и условия';

  @override
  String get createAccountTitle => 'Създаване на акаунт';

  @override
  String get signUpSubtitle => 'Регистрирайте се с имейл и парола.';

  @override
  String get confirmPassword => 'Потвърдете парола';

  @override
  String get passwordMin8 => 'Парола (мин. 8 chars)';

  @override
  String get alreadyHaveAccount => 'Вече имате акаунт?';

  @override
  String get checkEmailTitle => 'Проверете вашия\nимейл';

  @override
  String otpSentTo(String email) {
    return 'Изпратихме 6-цифрен код на\n$email';
  }

  @override
  String get verifyAndSignIn => 'Потвърдете и влезте';

  @override
  String get didntReceiveCode => 'Не сте го получили?';

  @override
  String get tryAgain => 'Опитайте отново';

  @override
  String get otpExpiresHint =>
      'Кодът изтича след 5 минути. Проверете папката си със спам, ако не я виждате.';

  @override
  String get snackError => 'Грешка';

  @override
  String get snackCopied => 'Копирано';

  @override
  String get snackCopiedBody => 'Връзката е копирана в клипборда';

  @override
  String get snackWelcome => 'Добре дошли';

  @override
  String get snackAccountCreated => 'Акаунтът е създаден';

  @override
  String get snackEnterEmail => 'Моля, въведете вашия имейл';

  @override
  String get snackEnterPassword => 'Моля, въведете вашата парола';

  @override
  String get snackInvalidEmail => 'Невалиден имейл адрес';

  @override
  String get snackInvalidCredentials => 'Неправилен имейл или парола';

  @override
  String get snackPasswordMin8 => 'Паролата трябва да е поне 8 знака';

  @override
  String get snackPasswordMismatch => 'Паролите не съвпадат.';

  @override
  String get snackAccountExists => 'Акаунтът вече съществува. Моля, влезте.';

  @override
  String get snackSignupFailed =>
      'Не може да се създаде акаунт. Опитайте отново.';

  @override
  String get snackEnterOtp => 'Моля, въведете 6-цифрения код';

  @override
  String get snackOtpExpired => 'Кодът е изтекъл';

  @override
  String get snackOtpExpiredBody => 'Моля, поискайте нов код.';

  @override
  String get snackInvalidCode => 'Невалиден код';

  @override
  String get snackInvalidCodeBody =>
      'Кодът е неправилен. Моля, опитайте отново.';

  @override
  String get snackSendCodeFailed =>
      'Кодът не можа да бъде изпратен. Проверете връзката си и опитайте отново.';

  @override
  String get snackEmptyFolder => 'Празна папка';

  @override
  String get snackEmptyFolderBody => 'В избраната папка няма намерени файлове.';

  @override
  String get snackFolderUnsupported => 'Не се поддържа';

  @override
  String get snackFolderUnsupportedBody =>
      'Качването на папки не е налично на тази платформа.';

  @override
  String get snackFolderReadError =>
      'Избраната папка не може да бъде прочетена.';

  @override
  String get snackLimitReached => 'Достигнат е лимитът';

  @override
  String get snackLimitFilesBody =>
      'Някои файлове не са добавени поради размера или броя на файловете ограничения.';

  @override
  String get snackFreePlanLimit =>
      'Безплатният план позволява до 5GB на трансфер. Моля, премахнете някои файлове или надстройте.';

  @override
  String get snackSignInEmail => 'Моля, влезте, за да изпратите по имейл.';

  @override
  String get snackUploadStartFailed => 'Качването не може да започне.';

  @override
  String get snackVerifyEnterCode => 'Въведете 4-цифрения код от вашия имейл.';

  @override
  String get snackVerifyInvalid =>
      'Невалиден или изтекъл код. Проверете имейла и опитайте отново.';

  @override
  String get snackVerifyResendFailed =>
      'Кодът не можа да бъде изпратен повторно. Опитайте отново.';

  @override
  String get snackDownloadComplete => 'Изтеглянето е завършено';

  @override
  String snackDownloadSaved(String filename) {
    return '„$filename“ е запазено в Изтегляния';
  }

  @override
  String get snackDownloadFailed => 'Изтеглянето е неуспешно';

  @override
  String get snackSaved => 'Запазено';

  @override
  String get snackServerUrlUpdated =>
      'URL адресът на сървъра е актуализиран. Рестартирайте приложението, за да приложите.';

  @override
  String get snackStoreError => 'Грешка в магазина';

  @override
  String get snackMissingProducts => 'Липсващи продукти';

  @override
  String get snackStoreUnavailable => 'Магазинът не е наличен';

  @override
  String get snackStoreUnavailableBody =>
      'Покупките в приложението не са налични на това устройство.';

  @override
  String get snackProductNotLoaded => 'Продуктът все още не е зареден.';

  @override
  String get snackRestoreStarted => 'Възстановяването е започнало';

  @override
  String get snackRestoreStartedBody => 'Проверяваме вашето покупки.';

  @override
  String get snackRestoreFailed => 'Неуспешно възстановяване';

  @override
  String get snackProcessing => 'Обработка';

  @override
  String get snackPleaseWait => 'Моля, изчакайте...';

  @override
  String get snackSuccess => 'Успех';

  @override
  String get snackPurchaseCompleted => 'Покупката е завършена.';

  @override
  String get snackPurchaseError => 'Грешка при покупка';

  @override
  String get snackPurchaseFailed => 'Покупка неуспешно.';

  @override
  String get snackCanceled => 'Отменено';

  @override
  String get snackPurchaseCanceled => 'Покупката е анулирана.';

  @override
  String get snackUpload => 'Качване';

  @override
  String get snackVerify => 'Проверете';

  @override
  String get doNotExpire => 'Не изтича';

  @override
  String get hourSingular => 'час';

  @override
  String get hourPlural => 'часа';

  @override
  String get daySingular => 'ден';

  @override
  String get dayPlural => 'дни';

  @override
  String get emailAddressLabel => 'ИМЕЙЛ АДРЕС';

  @override
  String get passwordLabelCaps => 'ПАРОЛА';

  @override
  String get confirmPasswordLabelCaps => 'ПОТВЪРДЕТЕ ПАРОЛА';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ПРЕХВЪРЛЯЕТЕ ВРЪЗКА ИЛИ ID';

  @override
  String get howToReceive => 'КАК ДА ПОЛУЧИТЕ';

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
  String get planAdsBullet1 => 'Достъп до безплатно приложение за реклами';

  @override
  String get planAdsBullet2 => 'Премахване на всички реклами';

  @override
  String get planProTitle => 'Професионален план';

  @override
  String get planProBullet1 => 'Изпращайте файлове до 20 GB';

  @override
  String get planProBullet2 => 'Бързо качване';

  @override
  String get planPremiumTitle => 'Премиум план';

  @override
  String get planPremiumBullet1 => 'Изпращайте файлове до 100GB';

  @override
  String get planPremiumBullet2 => 'Супер бързо качване';

  @override
  String get planSubscriptionDisclaimer =>
      'Без пробен период — изисква се абонамент за използване на допълнителната функционалност на приложението. Ще бъдете таксувани веднага. Можете да анулирате по всяко време.';

  @override
  String get perMonth => '/ месец';

  @override
  String get perYear => '/ година';

  @override
  String get snackConnectionProblem =>
      'Проблем с връзката. Моля, опитайте отново.';

  @override
  String get networkTitle => 'Мрежа';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Файлове: $count · $size байтове';
  }

  @override
  String todayAt(String time) {
    return 'Днес · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Вчера · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysпреди ден · $time';
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
    return '$sent / $total • $remaining вляво';
  }

  @override
  String get loadingShort => 'Зарежда се...';

  @override
  String get colorPaletteTitle => 'Цветна палитра';

  @override
  String get colorPaletteSectionBackgrounds => 'Фонове (мастило мащаб)';

  @override
  String get colorPaletteSectionAccent => 'Акцент / Основен';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Граници и стъкло';

  @override
  String get colorPaletteSectionSemantic => 'Семантичен';

  @override
  String get colorPaletteSectionLive => 'Тема на живо (текуща)';

  @override
  String get colorPaletteActiveHint => '★ = използва се активно в екрани';

  @override
  String get colorPaletteCopyHint =>
      'Натиснете продължително произволен образец, за да копирате неговата шестнадесетична стойност.';

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
  String get settingsAppBrand => 'Споделяне на голям\nВидео файлове';

  @override
  String get loginEmailPasswordPrompt =>
      'Въведете своя имейл и парола, за да влезете.';

  @override
  String get forgotPassword => 'Забравена парола?';

  @override
  String get forgotPasswordTitle => 'Нулиране на парола';

  @override
  String get forgotPasswordBody =>
      'Въведете имейла на вашия акаунт и ние ще изпратим код за нулиране.';

  @override
  String get forgotPasswordSubmit => 'Изпратете код за нулиране';

  @override
  String get resetPasswordTitle => 'Създаване на нов парола';

  @override
  String get resetPasswordBody =>
      'Въведете 6-цифрения код от вашия имейл и изберете нова парола.';

  @override
  String get resetPasswordSubmit => 'Актуализирайте паролата';

  @override
  String get snackPasswordResetSent => 'Кодът за нулиране е изпратен';

  @override
  String get snackPasswordResetSentBody =>
      'Проверете имейла си за 6-цифрен код за нулиране.';

  @override
  String get snackPasswordResetFailed =>
      'Кодът за нулиране не можа да бъде изпратен. Опитайте отново.';

  @override
  String get snackPasswordUpdated => 'Паролата е актуализирана';

  @override
  String get snackPasswordUpdatedBody => 'Влезте с новата си парола.';

  @override
  String get snackPasswordResetInvalid =>
      'Невалиден или изтекъл код за нулиране.';

  @override
  String get otpDigitLabel => '6-ЦИФРЕН КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count още файлове';
  }
}
