// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Делитесь большими видеофайлами';

  @override
  String get heroAccent => 'немедленно.';

  @override
  String get heroTitle => 'Отправляйте тяжелые файлы';

  @override
  String get splashLoading => 'Загрузка…';

  @override
  String get navSend => 'Панель управления';

  @override
  String get navHome => 'Дом';

  @override
  String get navHistory => 'История';

  @override
  String get navReceive => 'Получать';

  @override
  String get navPlans => 'Планы';

  @override
  String get navDownload => 'Скачать';

  @override
  String get navSettings => 'Настройки';

  @override
  String get modeLink => 'Получить ссылку';

  @override
  String get modeEmail => 'Отправить по электронной почте';

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
  String get pickFiles => 'Выберите файлы';

  @override
  String get pickFolder => 'Выбрать папку';

  @override
  String get emailFrom => 'Ваш адрес электронной почты';

  @override
  String get mailFromUsesAccount =>
      'Использует адрес электронной почты, указанный для входа.';

  @override
  String get recipientEmailsHelper =>
      'Несколько получателей: разделяйте их запятыми, точками с запятой или пробелами.';

  @override
  String get emailTo => 'Адрес электронной почты получателя';

  @override
  String get messageOptional => 'Сообщение (необязательно)';

  @override
  String get passwordOptional => 'Пароль (необязательно)';

  @override
  String get destructAfterDownload => 'Удалить после загрузки';

  @override
  String get destructNo => 'Держите доступным';

  @override
  String get sendButton => 'Отправлять';

  @override
  String get uploading => 'Загрузка…';

  @override
  String get uploadComplete => 'Сделанный';

  @override
  String get shareLinkTitle => 'Ваша ссылка';

  @override
  String get copyLink => 'Копировать ссылку';

  @override
  String get share => 'Делиться';

  @override
  String get shareQrCode => 'Поделиться QR-кодом';

  @override
  String get uploadMore => 'Отправить еще';

  @override
  String get emailSentTitle => 'Письма отправлены';

  @override
  String get verifyEmailTitle => 'Подтвердите свой адрес электронной почты';

  @override
  String get verifyCodeHint => 'Введите код с вашей электронной почты';

  @override
  String get verifySubmit => 'Проверять';

  @override
  String get verifyResendCode => 'Отправить код повторно';

  @override
  String get verifyCodeSent =>
      'На вашу электронную почту был отправлен новый код подтверждения.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Возможно, письмо с подтверждением не было отправлено.';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Серверу не удалось подтвердить доставку (часто SMTP настроен неправильно). Попросите администратора вашего сайта проверить настройки почты в панели администратора, затем нажмите «Отправить код повторно».';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Если письмо не пришло: проверьте «Нежелательная почта/Спам» и «Промоакции», подождите минуту, убедитесь, что на $email нет опечаток, затем нажмите «Отправить повторно».';
  }

  @override
  String get loginTitle => 'Войти';

  @override
  String get signupHint =>
      'Используйте адрес электронной почты и пароль своей учетной записи на сайте.';

  @override
  String get emailHint => 'Электронная почта';

  @override
  String get passwordHint => 'Пароль';

  @override
  String get cancel => 'Отмена';

  @override
  String get signIn => 'Войти';

  @override
  String get downloadIdHint => 'Идентификатор перевода';

  @override
  String get privateIdHint => 'Личный идентификатор (необязательно)';

  @override
  String get fetchTransfer => 'Открытый перевод';

  @override
  String get downloadFile => 'Скачать';

  @override
  String get unlockDownload => 'Разблокировать загрузку';

  @override
  String get downloadSaved => 'Сохранено в загрузках';

  @override
  String get errorGeneric => 'Что-то пошло не так';

  @override
  String get errorNetwork => 'Ошибка сети';

  @override
  String get errorBadResponse => 'Неожиданный ответ сервера';

  @override
  String get termsAccept => 'Я согласен с условиями';

  @override
  String get settingsApiUrl => 'URL общедоступного сайта';

  @override
  String get settingsAccount => 'Счет';

  @override
  String get settingsAppearance => 'Появление';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Свет';

  @override
  String get themeDark => 'Темный';

  @override
  String get settingsSignedIn => 'Вы вошли в систему.';

  @override
  String get settingsSignedOut => 'Вы не вошли в систему.';

  @override
  String get settingsOpenWebsite => 'Открыть сайт';

  @override
  String get signUp => 'Зарегистрироваться';

  @override
  String get settingsLinks => 'Ссылки';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get termsOfService => 'Условия обслуживания';

  @override
  String get about => 'О';

  @override
  String get moreApps => 'Больше приложений';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get languageEnglish => 'Английский';

  @override
  String get languageHindi => 'хинди';

  @override
  String get logout => 'Выйти';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get deleteAccountConfirmTitle => 'Удалить свой аккаунт?';

  @override
  String get deleteAccountConfirmBody =>
      'Это приведет к окончательному удалению вашей учетной записи и выходу из нее. Ваши ссылки для перевода продолжат работать, но они больше не будут отображаться в вашей истории.';

  @override
  String get deleteAccountSuccess => 'Аккаунт удален';

  @override
  String get deleteAccountSuccessBody => 'Ваш аккаунт был удален.';

  @override
  String get deleteAccountFailed => 'Не удалось удалить аккаунт';

  @override
  String get deleteAccountFailedBody =>
      'Пожалуйста, попробуйте еще раз или обратитесь в службу поддержки.';

  @override
  String get maxFilesReached => 'Слишком много файлов';

  @override
  String get fileTooLarge => 'Файл слишком большой';

  @override
  String get ipLimit => 'Слишком много загрузок из этой сети';

  @override
  String get fillFields => 'Пожалуйста, заполните обязательные поля';

  @override
  String get invalidEmail => 'Неверный адрес электронной почты';

  @override
  String get maxRecipientsReached => 'Слишком много получателей';

  @override
  String get loginRequiredTitle => 'Требуется вход';

  @override
  String get loginRequiredBody =>
      'Этот сервер требует учетной записи для загрузки или скачивания.';

  @override
  String get settingsSubtitle => 'Настройки приложения и учетная запись.';

  @override
  String get dropHeavyFile => 'Перетащите сюда тяжелый файл.';

  @override
  String upToTotal(String max) {
    return 'Всего до $max';
  }

  @override
  String get removeAll => 'Удалить все';

  @override
  String get addFiles => 'Добавить файлы';

  @override
  String get adding => 'Добавление…';

  @override
  String get options => 'Параметры';

  @override
  String get selfDestruct => 'Самоуничтожение после загрузки';

  @override
  String get expiry => 'Срок действия';

  @override
  String get cancelUpload => 'Отменить загрузку';

  @override
  String get transferReady => 'Трансфер готов!';

  @override
  String get emailSentReady => 'Письмо отправлено!';

  @override
  String get shareRecipientHint => 'Поделитесь этой ссылкой с получателем.';

  @override
  String get emailSentBody => 'Мы уведомили ваших получателей.';

  @override
  String get scanQr => 'Отсканируйте, чтобы открыть ссылку для передачи.';

  @override
  String get shareLinkButton => 'ПОДЕЛИТЬСЯ ССЫЛКОЙ';

  @override
  String get verifyFourDigit =>
      'Введите 4-значный код, отправленный на адрес электронной почты отправителя.';

  @override
  String get starting => 'Начало…';

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
    return '$amount осталось МБ';
  }

  @override
  String get fillField => 'Пожалуйста, заполните это поле.';

  @override
  String get enterValidEmail =>
      'Введите действительный адрес электронной почты.';

  @override
  String get message => 'Сообщение';

  @override
  String get recipientEmail => 'Адрес электронной почты получателя';

  @override
  String get active => 'Активный';

  @override
  String get expired => 'Истекший';

  @override
  String get historyTitle => 'Мои переводы';

  @override
  String get signInToSeeTransfers => 'Войдите, чтобы увидеть свои переводы';

  @override
  String get signInTransfersBody =>
      'Мы используем вашу электронную почту, чтобы связать переводы с вашей учетной записью — пароль не требуется.';

  @override
  String get couldNotLoadTransfers => 'Не удалось загрузить переводы';

  @override
  String get retry => 'Повторить попытку';

  @override
  String get noTransfersYet => 'Трансферов пока нет';

  @override
  String get noTransfersBody => 'После отправки файла он появится здесь.';

  @override
  String get transferDetails => 'Детали трансфера';

  @override
  String get filesSection => 'Файлы';

  @override
  String get receiveTitle => 'Получить файлы';

  @override
  String get receiveSubtitle => 'Вставьте ссылку для загрузки файлов.';

  @override
  String get pasteTooltip => 'Вставить';

  @override
  String get findTransfer => 'Найти трансфер';

  @override
  String get receiveScanQr => 'Сканировать QR-код';

  @override
  String get receiveScanQrTitle => 'Сканировать QR-код передачи';

  @override
  String get receiveScanQrHint => 'Выровняйте QR-код внутри рамки.';

  @override
  String get receiveScanQrInvalid =>
      'Этот QR-код не является действительной ссылкой для передачи.';

  @override
  String get receiveScanQrCameraDenied =>
      'Для сканирования QR-кодов требуется доступ к камере.';

  @override
  String get receiveStepGetLink => 'Получить ссылку';

  @override
  String get receiveStepGetLinkBody =>
      'Попросите отправителя поделиться с вами ссылкой для перевода.';

  @override
  String get receiveStepPaste => 'Вставить и найти';

  @override
  String get receiveStepPasteBody =>
      'Вставьте ссылку выше и нажмите «Найти перевод».';

  @override
  String get receiveStepDownload => 'Скачать файлы';

  @override
  String get receiveStepDownloadBody =>
      'Просмотрите детали файла и загрузите все сразу.';

  @override
  String get lookingUpTransfer => 'Ищу трансфер…';

  @override
  String get transferNotFound =>
      'Трансфер не найден. Проверьте ссылку и повторите попытку.';

  @override
  String get transferExpired =>
      'Срок действия этой передачи истек и она больше не доступна.';

  @override
  String get transferLoginRequired =>
      'Для доступа к этой передаче необходимо войти в систему.';

  @override
  String get transferBadResponse =>
      'Неожиданный ответ сервера. Проверьте свое соединение.';

  @override
  String get transferNetworkError =>
      'Ошибка сети. Проверьте подключение к Интернету.';

  @override
  String transferLoadFailed(String error) {
    return 'Не удалось загрузить передачу: $error';
  }

  @override
  String get passwordProtected => 'Защищено паролем';

  @override
  String get enterPassword => 'Введите пароль';

  @override
  String get unlock => 'Разблокировать';

  @override
  String get downloading => 'Загрузка…';

  @override
  String get downloadAllFiles => 'Скачать все файлы';

  @override
  String get downloadSingleFile => 'Скачать файл';

  @override
  String get receiveAnother => 'Получить еще один перевод';

  @override
  String get plansTitle => 'Планы';

  @override
  String get plansSubtitle =>
      'Обновите версию, чтобы удалить рекламу и отправлять файлы большего размера.';

  @override
  String get storeUnavailable => 'Магазин недоступен';

  @override
  String get storeUnavailableBody => 'Покупки в приложении сейчас недоступны.';

  @override
  String get storeLoadingPrices => 'Загрузка цен из App Store…';

  @override
  String get storePricesUnavailable => 'Цены недоступны';

  @override
  String get storePricesPartial => 'Не удалось загрузить некоторые цены.';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Загружены продукты по подписке $loaded из $total.';
  }

  @override
  String get storeSetupHint =>
      'Протестируйте на реальном iPhone (не в симуляторе), используйте Apple ID в песочнице и убедитесь, что все 6 подписок созданы под идентификатором пакета этого приложения в App Store Connect с установленными ценами.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/месяц';
  }

  @override
  String get freeVersionAds =>
      'В настоящее время вы используете нашу бесплатную версию с рекламой';

  @override
  String get restorePurchases => 'Восстановление покупок';

  @override
  String get plansContinue => 'Продолжать';

  @override
  String get planLinkRestore => 'Восстановить';

  @override
  String get termsAndConditions => 'Условия и положения';

  @override
  String get createAccountTitle => 'Зарегистрироваться';

  @override
  String get signUpSubtitle =>
      'Зарегистрируйтесь, указав адрес электронной почты и пароль.';

  @override
  String get confirmPassword => 'Подтвердите пароль';

  @override
  String get passwordMin8 => 'Пароль (минимум 8 символов)';

  @override
  String get alreadyHaveAccount => 'У вас уже есть аккаунт?';

  @override
  String get checkEmailTitle => 'Проверьте свой\nэлектронная почта';

  @override
  String otpSentTo(String email) {
    return 'Мы отправили 6-значный код на\n$email';
  }

  @override
  String get verifyAndSignIn => 'Подтвердить и войти';

  @override
  String get didntReceiveCode => 'Не получили?';

  @override
  String get tryAgain => 'Попробуйте еще раз';

  @override
  String get otpExpiresHint =>
      'Срок действия кода истекает через 5 минут. Проверьте папку со спамом, если вы ее не видите.';

  @override
  String get snackError => 'Ошибка';

  @override
  String get snackCopied => 'Скопировано';

  @override
  String get snackCopiedBody => 'Ссылка скопирована в буфер обмена';

  @override
  String get snackWelcome => 'Добро пожаловать';

  @override
  String get snackAccountCreated => 'Аккаунт создан';

  @override
  String get snackEnterEmail =>
      'Пожалуйста, введите свой адрес электронной почты';

  @override
  String get snackEnterPassword => 'Пожалуйста, введите свой пароль';

  @override
  String get snackInvalidEmail => 'Неверный адрес электронной почты';

  @override
  String get snackInvalidCredentials =>
      'Неправильный адрес электронной почты или пароль';

  @override
  String get snackPasswordMin8 => 'Пароль должен быть не менее 8 символов';

  @override
  String get snackPasswordMismatch => 'Пароли не совпадают.';

  @override
  String get snackAccountExists =>
      'Аккаунт уже существует. Пожалуйста, войдите в систему.';

  @override
  String get snackSignupFailed =>
      'Не удалось создать учетную запись. Попробуйте еще раз.';

  @override
  String get snackEnterOtp => 'Пожалуйста, введите 6-значный код';

  @override
  String get snackOtpExpired => 'Срок действия кода истек';

  @override
  String get snackOtpExpiredBody => 'Пожалуйста, запросите новый код.';

  @override
  String get snackInvalidCode => 'Неверный код';

  @override
  String get snackInvalidCodeBody =>
      'Код неверен. Пожалуйста, попробуйте еще раз.';

  @override
  String get snackSendCodeFailed =>
      'Не удалось отправить код. Проверьте подключение и повторите попытку.';

  @override
  String get snackEmptyFolder => 'Пустая папка';

  @override
  String get snackEmptyFolderBody => 'В выбранной папке файлы не найдены.';

  @override
  String get snackFolderUnsupported => 'Не поддерживается';

  @override
  String get snackFolderUnsupportedBody =>
      'Загрузка папок недоступна на этой платформе.';

  @override
  String get snackFolderReadError => 'Не удалось прочитать выбранную папку.';

  @override
  String get snackLimitReached => 'Достигнут лимит';

  @override
  String get snackLimitFilesBody =>
      'Некоторые файлы не были добавлены из-за ограничений на размер или количество файлов.';

  @override
  String get snackFreePlanLimit =>
      'Бесплатный план позволяет использовать до 5 ГБ за одну передачу. Пожалуйста, удалите некоторые файлы или обновите.';

  @override
  String get snackSignInEmail =>
      'Пожалуйста, войдите в систему, чтобы отправить по электронной почте.';

  @override
  String get snackUploadStartFailed => 'Не удалось начать загрузку.';

  @override
  String get snackVerifyEnterCode =>
      'Введите 4-значный код с вашей электронной почты.';

  @override
  String get snackVerifyInvalid =>
      'Неверный или просроченный код. Проверьте электронную почту и повторите попытку.';

  @override
  String get snackVerifyResendFailed =>
      'Не удалось повторно отправить код. Попробуйте еще раз.';

  @override
  String get snackDownloadComplete => 'Загрузка завершена';

  @override
  String snackDownloadSaved(String filename) {
    return '«$filename» сохранен в папке «Загрузки».';
  }

  @override
  String get snackDownloadFailed => 'Загрузка не удалась';

  @override
  String get snackSaved => 'Сохранено';

  @override
  String get snackServerUrlUpdated =>
      'URL-адрес сервера обновлен. Перезапустите приложение, чтобы применить.';

  @override
  String get snackStoreError => 'Ошибка магазина';

  @override
  String get snackMissingProducts => 'Отсутствующие продукты';

  @override
  String get snackStoreUnavailable => 'Магазин недоступен';

  @override
  String get snackStoreUnavailableBody =>
      'Покупки в приложении недоступны на этом устройстве.';

  @override
  String get snackProductNotLoaded => 'Товар еще не загружен.';

  @override
  String get snackRestoreStarted => 'Восстановление началось';

  @override
  String get snackRestoreStartedBody => 'Мы проверяем ваши покупки.';

  @override
  String get snackRestoreFailed => 'Восстановление не удалось';

  @override
  String get snackProcessing => 'Обработка';

  @override
  String get snackPleaseWait => 'Пожалуйста, подождите…';

  @override
  String get snackSuccess => 'Успех';

  @override
  String get snackPurchaseCompleted => 'Покупка завершена.';

  @override
  String get snackPurchaseError => 'Ошибка покупки';

  @override
  String get snackPurchaseFailed => 'Покупка не удалась.';

  @override
  String get snackCanceled => 'Отменено';

  @override
  String get snackPurchaseCanceled => 'Покупка отменена.';

  @override
  String get snackUpload => 'Загрузить';

  @override
  String get snackVerify => 'Проверять';

  @override
  String get doNotExpire => 'Не истекает';

  @override
  String get hourSingular => 'час';

  @override
  String get hourPlural => 'часы';

  @override
  String get daySingular => 'день';

  @override
  String get dayPlural => 'дни';

  @override
  String get emailAddressLabel => 'АДРЕС ЭЛЕКТРОННОЙ ПОЧТЫ';

  @override
  String get passwordLabelCaps => 'ПАРОЛЬ';

  @override
  String get confirmPasswordLabelCaps => 'ПОДТВЕРДИТЕ ПАРОЛЬ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ССЫЛКА ДЛЯ ПЕРЕДАЧИ ИЛИ Идентификатор';

  @override
  String get howToReceive => 'КАК ПОЛУЧИТЬ';

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
  String get planAdsTitle => 'План рекламы';

  @override
  String get planAdsBullet1 => 'Доступ к бесплатному приложению рекламы';

  @override
  String get planAdsBullet2 => 'Удалить все объявления';

  @override
  String get planProTitle => 'Профессиональный план';

  @override
  String get planProBullet1 => 'Отправляйте файлы размером до 20 ГБ.';

  @override
  String get planProBullet2 => 'Быстрая загрузка';

  @override
  String get planPremiumTitle => 'Премиум-план';

  @override
  String get planPremiumBullet1 => 'Отправляйте файлы размером до 100 ГБ.';

  @override
  String get planPremiumBullet2 => 'Супер быстрая загрузка';

  @override
  String get planSubscriptionDisclaimer =>
      'Нет пробного периода — для использования дополнительного функционала приложения необходима подписка. Плата будет списана немедленно. Вы можете отменить в любое время.';

  @override
  String get perMonth => '/ месяц';

  @override
  String get perYear => '/ год';

  @override
  String get snackConnectionProblem =>
      'Проблема с подключением. Пожалуйста, попробуйте еще раз.';

  @override
  String get networkTitle => 'Сеть';

  @override
  String transferIdLabel(String id) {
    return 'Идентификатор: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Файлы: $count · $size байт';
  }

  @override
  String todayAt(String time) {
    return 'Сегодня · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Вчера · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysд назад · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount МБ';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining слева';
  }

  @override
  String get loadingShort => 'Загрузка…';

  @override
  String get colorPaletteTitle => 'Цветовая палитра';

  @override
  String get colorPaletteSectionBackgrounds => 'Фоны (шкала чернил)';

  @override
  String get colorPaletteSectionAccent => 'Акцент / Основной';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Границы и стекло';

  @override
  String get colorPaletteSectionSemantic => 'Семантический';

  @override
  String get colorPaletteSectionLive => 'Живая тема (текущая)';

  @override
  String get colorPaletteActiveHint => '★ = активно используется на экранах';

  @override
  String get colorPaletteCopyHint =>
      'Нажмите и удерживайте любой образец, чтобы скопировать его шестнадцатеричное значение.';

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
  String get settingsAppBrand => 'Поделиться большим\nВидео файлы';

  @override
  String get loginEmailPasswordPrompt =>
      'Введите свой адрес электронной почты и пароль, чтобы войти.';

  @override
  String get forgotPassword => 'Забыли пароль?';

  @override
  String get forgotPasswordTitle => 'Сбросить пароль';

  @override
  String get forgotPasswordBody =>
      'Введите адрес электронной почты своей учетной записи, и мы вышлем код сброса.';

  @override
  String get forgotPasswordSubmit => 'Отправить код сброса';

  @override
  String get resetPasswordTitle => 'Создать новый пароль';

  @override
  String get resetPasswordBody =>
      'Введите 6-значный код из вашей электронной почты и выберите новый пароль.';

  @override
  String get resetPasswordSubmit => 'Обновить пароль';

  @override
  String get snackPasswordResetSent => 'Код сброса отправлен';

  @override
  String get snackPasswordResetSentBody =>
      'Проверьте свою электронную почту на наличие 6-значного кода сброса.';

  @override
  String get snackPasswordResetFailed =>
      'Не удалось отправить код сброса. Попробуйте еще раз.';

  @override
  String get snackPasswordUpdated => 'Пароль обновлен';

  @override
  String get snackPasswordUpdatedBody => 'Войдите с новым паролем.';

  @override
  String get snackPasswordResetInvalid =>
      'Неверный или просроченный код сброса.';

  @override
  String get otpDigitLabel => '6-ЦИФРНЫЙ КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count еще файлы';
  }
}
