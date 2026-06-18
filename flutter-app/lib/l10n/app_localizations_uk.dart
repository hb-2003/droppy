// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Діліться великими відеофайлами';

  @override
  String get heroAccent => 'миттєво.';

  @override
  String get heroTitle => 'Надсилайте важкі файли';

  @override
  String get splashLoading => 'Завантаження…';

  @override
  String get navSend => 'Приладова панель';

  @override
  String get navHome => 'додому';

  @override
  String get navHistory => 'історія';

  @override
  String get navReceive => 'Отримати';

  @override
  String get navPlans => 'Плани';

  @override
  String get navDownload => 'Завантажити';

  @override
  String get navSettings => 'Налаштування';

  @override
  String get modeLink => 'Отримати посилання';

  @override
  String get modeEmail => 'Надіслати електронною поштою';

  @override
  String get pickFiles => 'Виберіть файли';

  @override
  String get pickFolder => 'Виберіть папку';

  @override
  String get emailFrom => 'Ваш email';

  @override
  String get mailFromUsesAccount =>
      'Використовує вашу електронну адресу, на яку ви ввійшли.';

  @override
  String get recipientEmailsHelper =>
      'Кілька одержувачів: розділяйте їх комами, крапками з комами або пробілами.';

  @override
  String get emailTo => 'Електронна адреса одержувача';

  @override
  String get messageOptional => 'Повідомлення (необов\'язково)';

  @override
  String get passwordOptional => 'Пароль (необов\'язково)';

  @override
  String get destructAfterDownload => 'Видалити після завантаження';

  @override
  String get destructNo => 'Тримайте в наявності';

  @override
  String get sendButton => 'Надіслати';

  @override
  String get uploading => 'Завантаження…';

  @override
  String get uploadComplete => 'Готово';

  @override
  String get shareLinkTitle => 'Ваше посилання';

  @override
  String get copyLink => 'Копіювати посилання';

  @override
  String get share => 'Поділіться';

  @override
  String get shareQrCode => 'Поділіться QR-кодом';

  @override
  String get uploadMore => 'Надіслати інший';

  @override
  String get emailSentTitle => 'Листи надіслано';

  @override
  String get verifyEmailTitle => 'Підтвердьте свою електронну адресу';

  @override
  String get verifyCodeHint => 'Введіть код зі своєї електронної пошти';

  @override
  String get verifySubmit => 'Підтвердити';

  @override
  String get verifyResendCode => 'Повторно надіслати код';

  @override
  String get verifyCodeSent =>
      'На вашу електронну адресу надіслано новий код підтвердження.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Можливо, електронний лист із підтвердженням не надіслано';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сервер не може підтвердити доставку (часто SMTP неправильно налаштований). Попросіть адміністратора свого сайту перевірити налаштування пошти на панелі адміністратора, а потім натисніть Повторно надіслати код.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Якщо він не надійшов: перевірте «Небажана пошта» та «Реклама», зачекайте хвилинку, переконайтеся, що в «PH1» немає помилок, а потім натисніть «Надіслати повторно».';
  }

  @override
  String get loginTitle => 'Увійдіть';

  @override
  String get signupHint =>
      'Використовуйте електронну адресу та пароль свого облікового запису сайту.';

  @override
  String get emailHint => 'Електронна пошта';

  @override
  String get passwordHint => 'Пароль';

  @override
  String get cancel => 'Скасувати';

  @override
  String get signIn => 'Увійдіть';

  @override
  String get downloadIdHint => 'ID передачі';

  @override
  String get privateIdHint => 'Приватний ідентифікатор (необов\'язково)';

  @override
  String get fetchTransfer => 'Відкрита передача';

  @override
  String get downloadFile => 'Завантажити';

  @override
  String get unlockDownload => 'Розблокувати завантаження';

  @override
  String get downloadSaved => 'Збережено до завантажень';

  @override
  String get errorGeneric => 'Щось пішло не так';

  @override
  String get errorNetwork => 'Помилка мережі';

  @override
  String get errorBadResponse => 'Неочікувана відповідь сервера';

  @override
  String get termsAccept => 'Я погоджуюся з умовами';

  @override
  String get settingsApiUrl => 'Публічний сайт URL';

  @override
  String get settingsAccount => 'Обліковий запис';

  @override
  String get settingsAppearance => 'Зовнішній вигляд';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Світла';

  @override
  String get themeDark => 'Темна';

  @override
  String get settingsSignedIn => 'Ви ввійшли.';

  @override
  String get settingsSignedOut => 'Ви не ввійшли в.';

  @override
  String get settingsOpenWebsite => 'Відкрити веб-сайт';

  @override
  String get signUp => 'Зареєструватися';

  @override
  String get settingsLinks => 'Посилання';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get termsOfService => 'Умови використання';

  @override
  String get about => 'Про';

  @override
  String get moreApps => 'Більше програми';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get languageEnglish => 'Англійська';

  @override
  String get languageHindi => 'Хінді';

  @override
  String get logout => 'Вийти';

  @override
  String get deleteAccount => 'Видалити обліковий запис';

  @override
  String get deleteAccountConfirmTitle => 'Видалити свій обліковий запис?';

  @override
  String get deleteAccountConfirmBody =>
      'Це назавжди видаляє ваш обліковий запис і виходить із нього. Ваші посилання для передачі працюватимуть, але вони більше не відображатимуться у вашій історії.';

  @override
  String get deleteAccountSuccess => 'Обліковий запис видалено';

  @override
  String get deleteAccountSuccessBody => 'Ваш обліковий запис видалено.';

  @override
  String get deleteAccountFailed => 'Не вдалося видалити обліковий запис';

  @override
  String get deleteAccountFailedBody =>
      'Повторіть спробу або зверніться до служби підтримки.';

  @override
  String get maxFilesReached => 'Забагато файлів';

  @override
  String get fileTooLarge => 'Файл теж великий';

  @override
  String get ipLimit => 'Забагато завантажень із цієї мережі';

  @override
  String get fillFields => 'Будь ласка, заповніть обов’язкові поля';

  @override
  String get invalidEmail => 'Недійсна електронна пошта';

  @override
  String get maxRecipientsReached => 'Забагато одержувачів';

  @override
  String get loginRequiredTitle => 'Потрібно ввійти';

  @override
  String get loginRequiredBody =>
      'Цьому серверу потрібен обліковий запис для завантаження або завантажити.';

  @override
  String get settingsSubtitle => 'Налаштування програми та обліковий запис.';

  @override
  String get dropHeavyFile => 'Скинути важкий файл сюди.';

  @override
  String upToTotal(String max) {
    return 'Усього до $max';
  }

  @override
  String get removeAll => 'Видалити все';

  @override
  String get addFiles => 'Додати файли';

  @override
  String get adding => 'Додавання…';

  @override
  String get options => 'Параметри';

  @override
  String get selfDestruct => 'Самознищення після завантаження';

  @override
  String get expiry => 'Закінчення';

  @override
  String get cancelUpload => 'Скасувати завантаження';

  @override
  String get transferReady => 'Передача готова!';

  @override
  String get emailSentReady => 'Електронний лист надіслано!';

  @override
  String get shareRecipientHint => 'Поділіться цим посиланням із одержувачем.';

  @override
  String get emailSentBody => 'Ми повідомили вашого одержувача(ів).';

  @override
  String get scanQr => 'Відскануйте, щоб відкрити посилання для передачі.';

  @override
  String get shareLinkButton => 'ПОШИРИТИ ПОСИЛАННЯ';

  @override
  String get verifyFourDigit =>
      'Введіть 4-значний код, надісланий на вашу електронну адресу відправника.';

  @override
  String get starting => 'Починаючи…';

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
    return '$amount Залишилося МБ';
  }

  @override
  String get fillField => 'Будь ласка, заповніть це поле.';

  @override
  String get enterValidEmail => 'Введіть дійсний email.';

  @override
  String get message => 'Повідомлення';

  @override
  String get recipientEmail => 'Електронна адреса одержувача';

  @override
  String get active => 'Активний';

  @override
  String get expired => 'Термін дії закінчився';

  @override
  String get historyTitle => 'Мої перекази';

  @override
  String get signInToSeeTransfers => 'Увійдіть, щоб переглянути свої перекази';

  @override
  String get signInTransfersBody =>
      'Ми використовуємо вашу електронну адресу, щоб зв’язати перекази з вашим обліковим записом — пароль не потрібен.';

  @override
  String get couldNotLoadTransfers => 'Не вдалося завантажити передачі';

  @override
  String get retry => 'Повторити';

  @override
  String get noTransfersYet => 'Передачі ще немає';

  @override
  String get noTransfersBody => 'Коли ви надішлете файл, він з’явиться тут.';

  @override
  String get transferDetails => 'Деталі передачі';

  @override
  String get filesSection => 'Файли';

  @override
  String get receiveTitle => 'Отримати файли';

  @override
  String get receiveSubtitle =>
      'Вставте посилання для передачі, щоб завантажити файли.';

  @override
  String get pasteTooltip => 'Вставити';

  @override
  String get findTransfer => 'Знайти передачу';

  @override
  String get receiveScanQr => 'Сканувати QR';

  @override
  String get receiveScanQrTitle => 'Сканувати QR передачі';

  @override
  String get receiveScanQrHint => 'Вирівняти QR-код у рамці.';

  @override
  String get receiveScanQrInvalid =>
      'Цей QR-код не є дійсним посиланням для передачі.';

  @override
  String get receiveScanQrCameraDenied =>
      'Камера для сканування QR-кодів потрібен доступ.';

  @override
  String get receiveStepGetLink => 'Отримайте посилання';

  @override
  String get receiveStepGetLinkBody =>
      'Попросіть відправника поділитися з вами посиланням для передачі.';

  @override
  String get receiveStepPaste => 'Вставте та знайдіть';

  @override
  String get receiveStepPasteBody =>
      'Вставте посилання вище та натисніть «Знайти переказ».';

  @override
  String get receiveStepDownload => 'Завантажте файли';

  @override
  String get receiveStepDownloadBody =>
      'Перегляньте деталі файлу і завантажте все одразу.';

  @override
  String get lookingUpTransfer => 'Пошук передачі…';

  @override
  String get transferNotFound =>
      'Передачу не знайдено. Перевірте посилання та повторіть спробу.';

  @override
  String get transferExpired =>
      'Термін дії цієї передачі закінчився, і вона більше не доступна.';

  @override
  String get transferLoginRequired =>
      'Для доступу до цієї передачі потрібен увійти.';

  @override
  String get transferBadResponse =>
      'Неочікувана відповідь сервера. Перевірте підключення.';

  @override
  String get transferNetworkError =>
      'Помилка мережі. Перевірте підключення до Інтернету.';

  @override
  String transferLoadFailed(String error) {
    return 'Не вдалося завантажити передачу: $error';
  }

  @override
  String get passwordProtected => 'Захищено паролем';

  @override
  String get enterPassword => 'Введіть пароль';

  @override
  String get unlock => 'Розблокувати';

  @override
  String get downloading => 'Завантаження…';

  @override
  String get downloadAllFiles => 'Завантажити всі файли';

  @override
  String get downloadSingleFile => 'Завантажити файл';

  @override
  String get receiveAnother => 'Отримати ще один переказ';

  @override
  String get plansTitle => 'Плани';

  @override
  String get plansSubtitle =>
      'Оновити, щоб видалити рекламу та надсилати файли більшого розміру.';

  @override
  String get storeUnavailable => 'Магазин недоступний';

  @override
  String get storeUnavailableBody =>
      'Покупки в програмі недоступні прямо зараз.';

  @override
  String get storeLoadingPrices => 'Завантаження цін із App Store…';

  @override
  String get storePricesUnavailable => 'Ціни недоступні';

  @override
  String get storePricesPartial => 'Деякі ціни не вдалося завантажити';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded із $total продуктів за підпискою завантажено.';
  }

  @override
  String get storeSetupHint =>
      'Тестуйте на справжньому iPhone (не на симуляторі), використовуйте Apple ID у пісочниці та переконайтеся, що всі Під ідентифікатором комплекту цієї програми створено 6 підписок у App Store Connect із установленою ціною.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/місяць';
  }

  @override
  String get freeVersionAds =>
      'Наразі ви користуєтеся нашою безкоштовною версією з рекламою';

  @override
  String get restorePurchases => 'Відновити покупки';

  @override
  String get plansContinue => 'Продовжити';

  @override
  String get planLinkRestore => 'Відновити';

  @override
  String get termsAndConditions => 'Умови';

  @override
  String get createAccountTitle => 'Створити обліковий запис';

  @override
  String get signUpSubtitle =>
      'Зареєструватися за допомогою електронної пошти та пароля.';

  @override
  String get confirmPassword => 'Підтвердити пароль';

  @override
  String get passwordMin8 => 'Пароль (мін. 8 chars)';

  @override
  String get alreadyHaveAccount => 'Уже маєте обліковий запис?';

  @override
  String get checkEmailTitle => 'Перевірте свій\nemail';

  @override
  String otpSentTo(String email) {
    return 'Ми надіслали 6-значний код на адресу\n$email';
  }

  @override
  String get verifyAndSignIn => 'Підтвердити та увійти';

  @override
  String get didntReceiveCode => 'Не отримали?';

  @override
  String get tryAgain => 'Спробуйте ще раз';

  @override
  String get otpExpiresHint =>
      'Термін дії коду закінчується через 5 хвилин. Перевірте папку зі спамом, якщо ви її не бачите.';

  @override
  String get snackError => 'Помилка';

  @override
  String get snackCopied => 'Скопійовано';

  @override
  String get snackCopiedBody => 'Посилання скопійовано в буфер обміну';

  @override
  String get snackWelcome => 'Ласкаво просимо';

  @override
  String get snackAccountCreated => 'Акаунт створено';

  @override
  String get snackEnterEmail => 'Введіть свій email';

  @override
  String get snackEnterPassword => 'Будь ласка, введіть свій пароль';

  @override
  String get snackInvalidEmail => 'Недійсна адреса електронної пошти';

  @override
  String get snackInvalidCredentials =>
      'Неправильна електронна адреса або пароль';

  @override
  String get snackPasswordMin8 => 'Пароль має містити принаймні 8 символів';

  @override
  String get snackPasswordMismatch => 'Паролі не збігаються.';

  @override
  String get snackAccountExists => 'Акаунт уже існує. Будь ласка, увійдіть.';

  @override
  String get snackSignupFailed =>
      'Не вдалося створити обліковий запис. Спробуйте ще раз.';

  @override
  String get snackEnterOtp => 'Введіть 6-значний код';

  @override
  String get snackOtpExpired => 'Термін дії коду закінчився';

  @override
  String get snackOtpExpiredBody => 'Подайте запит на новий код.';

  @override
  String get snackInvalidCode => 'Недійсний код';

  @override
  String get snackInvalidCodeBody => 'Код неправильний. Спробуйте ще раз.';

  @override
  String get snackSendCodeFailed =>
      'Не вдалося надіслати код. Перевірте підключення та повторіть спробу.';

  @override
  String get snackEmptyFolder => 'Пуста папка';

  @override
  String get snackEmptyFolderBody => 'У вибраній папці не знайдено файлів.';

  @override
  String get snackFolderUnsupported => 'Не підтримується';

  @override
  String get snackFolderUnsupportedBody =>
      'Завантаження папок недоступне на цій платформі.';

  @override
  String get snackFolderReadError => 'Не вдалося прочитати вибрану папку.';

  @override
  String get snackLimitReached => 'Досягнуто обмеження';

  @override
  String get snackLimitFilesBody =>
      'Деякі файли не додано через розмір або кількість файлів обмеження.';

  @override
  String get snackFreePlanLimit =>
      'Безкоштовний план дозволяє до 5 ГБ на передачу. Видаліть деякі файли або оновіть.';

  @override
  String get snackSignInEmail => 'Увійдіть, щоб надіслати електронною поштою.';

  @override
  String get snackUploadStartFailed => 'Не вдалося розпочати завантаження.';

  @override
  String get snackVerifyEnterCode =>
      'Введіть 4-значний код зі своєї електронної пошти.';

  @override
  String get snackVerifyInvalid =>
      'Недійсний або прострочений код. Перевірте електронну пошту та повторіть спробу.';

  @override
  String get snackVerifyResendFailed =>
      'Не вдалося повторно надіслати код. Спробуйте ще раз.';

  @override
  String get snackDownloadComplete => 'Завантаження завершено';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" збережено в папці \"Завантаження\"';
  }

  @override
  String get snackDownloadFailed => 'Помилка завантаження';

  @override
  String get snackSaved => 'Збережено';

  @override
  String get snackServerUrlUpdated =>
      'URL-адресу сервера оновлено. Перезапустіть програму, щоб застосувати.';

  @override
  String get snackStoreError => 'Помилка магазину';

  @override
  String get snackMissingProducts => 'Відсутні продукти';

  @override
  String get snackStoreUnavailable => 'Магазин недоступний';

  @override
  String get snackStoreUnavailableBody =>
      'Покупки через програму недоступні на цьому пристрої.';

  @override
  String get snackProductNotLoaded => 'Продукт ще не завантажено.';

  @override
  String get snackRestoreStarted => 'Відновлення розпочато';

  @override
  String get snackRestoreStartedBody => 'Ми перевіряємо ваш покупки.';

  @override
  String get snackRestoreFailed => 'Помилка відновлення';

  @override
  String get snackProcessing => 'Обробка';

  @override
  String get snackPleaseWait => 'Зачекайте…';

  @override
  String get snackSuccess => 'Успіх';

  @override
  String get snackPurchaseCompleted => 'Покупку завершено.';

  @override
  String get snackPurchaseError => 'Помилка покупки';

  @override
  String get snackPurchaseFailed => 'Покупку не вдалося.';

  @override
  String get snackCanceled => 'Скасовано';

  @override
  String get snackPurchaseCanceled => 'Покупку скасовано.';

  @override
  String get snackUpload => 'Завантажувати';

  @override
  String get snackVerify => 'Підтвердити';

  @override
  String get doNotExpire => 'Не робити закінчується';

  @override
  String get hourSingular => 'година';

  @override
  String get hourPlural => 'годин';

  @override
  String get daySingular => 'день';

  @override
  String get dayPlural => 'днів';

  @override
  String get emailAddressLabel => 'АДРЕСА ЕЛЕКТРОННОЇ ПОШТИ';

  @override
  String get passwordLabelCaps => 'ПАРОЛЬ';

  @override
  String get confirmPasswordLabelCaps => 'ПІДТВЕРДИТИ ПАРОЛЬ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ПЕРЕДАТИ ПОСИЛАННЯ АБО ID';

  @override
  String get howToReceive => 'ЯК ОТРИМАТИ';

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
  String get planAdsTitle => 'План реклами';

  @override
  String get planAdsBullet1 => 'Доступ до безкоштовного додатка для реклами';

  @override
  String get planAdsBullet2 => 'Видалити всю рекламу';

  @override
  String get planProTitle => 'План Pro';

  @override
  String get planProBullet1 => 'Надсилати файли розміром до 20 ГБ';

  @override
  String get planProBullet2 => 'Швидке завантаження';

  @override
  String get planPremiumTitle => 'Преміальний план';

  @override
  String get planPremiumBullet1 => 'Надсилайте файли розміром до 100 ГБ';

  @override
  String get planPremiumBullet2 => 'Надшвидке завантаження';

  @override
  String get planSubscriptionDisclaimer =>
      'Без пробного періоду — для використання додаткових функцій програми потрібна підписка. З вас буде негайно стягнуто плату. Ви можете скасувати будь-коли.';

  @override
  String get perMonth => '/ місяць';

  @override
  String get perYear => '/ рік';

  @override
  String get snackConnectionProblem =>
      'Проблема з підключенням. Спробуйте ще раз.';

  @override
  String get networkTitle => 'Мережа';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Файли: $count · $size байт';
  }

  @override
  String todayAt(String time) {
    return 'Сьогодні · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Учора · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysдн. тому · $time';
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
    return '$sent / $total • $remaining ліворуч';
  }

  @override
  String get loadingShort => 'Завантаження…';

  @override
  String get colorPaletteTitle => 'Палітра кольорів';

  @override
  String get colorPaletteSectionBackgrounds => 'Фон (чорнило шкала)';

  @override
  String get colorPaletteSectionAccent => 'Акцент / Основний';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Межі та скло';

  @override
  String get colorPaletteSectionSemantic => 'Семантика';

  @override
  String get colorPaletteSectionLive => 'Жива тема (поточна)';

  @override
  String get colorPaletteActiveHint => '★ = активно використовується в екрани';

  @override
  String get colorPaletteCopyHint =>
      'Утримуйте будь-який зразок, щоб скопіювати його шістнадцяткове значення.';

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
  String get settingsAppBrand => 'Поділитися великим\nВідеофайли';

  @override
  String get loginEmailPasswordPrompt =>
      'Введіть свою електронну адресу та пароль, щоб увійти.';

  @override
  String get forgotPassword => 'Забули пароль?';

  @override
  String get forgotPasswordTitle => 'Скинути пароль';

  @override
  String get forgotPasswordBody =>
      'Введіть електронну адресу свого облікового запису, і ми надішлемо код скидання.';

  @override
  String get forgotPasswordSubmit => 'Надішліть код скидання';

  @override
  String get resetPasswordTitle => 'Створити новий пароль';

  @override
  String get resetPasswordBody =>
      'Введіть 6-значний код зі своєї електронної пошти та виберіть новий пароль.';

  @override
  String get resetPasswordSubmit => 'Оновити пароль';

  @override
  String get snackPasswordResetSent => 'Код скидання надіслано';

  @override
  String get snackPasswordResetSentBody =>
      'Перевірте свою електронну пошту на наявність 6-значного коду скидання.';

  @override
  String get snackPasswordResetFailed =>
      'Не вдалося надіслати код скидання. Спробуйте ще раз.';

  @override
  String get snackPasswordUpdated => 'Пароль оновлено';

  @override
  String get snackPasswordUpdatedBody => 'Увійдіть за допомогою нового пароля.';

  @override
  String get snackPasswordResetInvalid => 'Код скидання недійсний або минув.';

  @override
  String get otpDigitLabel => '6-ЦИФРОВИЙ КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count більше файлів';
  }
}
