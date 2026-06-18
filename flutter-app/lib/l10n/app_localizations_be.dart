// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'Абагульвайце вялікія відэафайлы';

  @override
  String get heroAccent => 'імгненна.';

  @override
  String get heroTitle => 'Адпраўляйце цяжкія файлы';

  @override
  String get splashLoading => 'Загрузка...';

  @override
  String get navSend => 'Прыборная панэль';

  @override
  String get navHome => 'дадому';

  @override
  String get navHistory => 'Гісторыя';

  @override
  String get navReceive => 'Атрымлівайце';

  @override
  String get navPlans => 'Планы';

  @override
  String get navDownload => 'Спампаваць';

  @override
  String get navSettings => 'Налады';

  @override
  String get modeLink => 'Атрымаць спасылку';

  @override
  String get modeEmail => 'Адправіць па электроннай пошце';

  @override
  String get pickFiles => 'Выберыце файлы';

  @override
  String get pickFolder => 'Выберыце тэчку';

  @override
  String get emailFrom => 'Ваша электронная пошта';

  @override
  String get mailFromUsesAccount =>
      'Выкарыстоўвае электронную пошту, на якую вы ўвайшлі.';

  @override
  String get recipientEmailsHelper =>
      'Некалькі атрымальнікаў: падзяляйце іх коскамі, кропкай з коскай або прабеламі.';

  @override
  String get emailTo => 'Электронная пошта атрымальніка';

  @override
  String get messageOptional => 'Паведамленне (неабавязкова)';

  @override
  String get passwordOptional => 'Пароль (неабавязкова)';

  @override
  String get destructAfterDownload => 'Выдаліць пасля загрузкі';

  @override
  String get destructNo => 'Захоўваць у наяўнасці';

  @override
  String get sendButton => 'Адправіць';

  @override
  String get uploading => 'Загрузка...';

  @override
  String get uploadComplete => 'Гатова';

  @override
  String get shareLinkTitle => 'Ваша спасылка';

  @override
  String get copyLink => 'Скапіраваць спасылку';

  @override
  String get share => 'падзяліцца';

  @override
  String get shareQrCode => 'Падзяліцеся QR-кодам';

  @override
  String get uploadMore => 'Адправіць іншы';

  @override
  String get emailSentTitle => 'Электронныя лісты адпраўлены';

  @override
  String get verifyEmailTitle => 'Пацвердзіце сваю электронную пошту';

  @override
  String get verifyCodeHint => 'Увядзіце код з вашай электроннай пошты';

  @override
  String get verifySubmit => 'Праверыць';

  @override
  String get verifyResendCode => 'Паўторна адправіць код';

  @override
  String get verifyCodeSent =>
      'Новы код спраўджання быў адпраўлены на вашу электронную пошту.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Магчыма, электронны ліст для праверкі не быў адпраўлены';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сервер не можа пацвердзіць дастаўку (часта SMTP настроены няправільна). Папрасіце адміністратара вашага сайта праверыць налады пошты на панэлі адміністратара, а затым націсніце Паўторна адправіць код.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Калі ён не прыходзіць: праверце непажаданую пошту і акцыі, пачакайце хвілінку, пацвердзіце, што ў $email няма памылак друку, затым націсніце «Адправіць паўторна».';
  }

  @override
  String get loginTitle => 'Увайдзіце ў сістэму';

  @override
  String get signupHint =>
      'Выкарыстоўвайце адрас электроннай пошты і пароль уліковага запісу вашага сайта.';

  @override
  String get emailHint => 'Электронная пошта';

  @override
  String get passwordHint => 'Пароль';

  @override
  String get cancel => 'Адмяніць';

  @override
  String get signIn => 'Увайдзіце ў сістэму';

  @override
  String get downloadIdHint => 'ID перадачы';

  @override
  String get privateIdHint => 'Асабісты ідэнтыфікатар (неабавязкова)';

  @override
  String get fetchTransfer => 'Адкрытая перадача';

  @override
  String get downloadFile => 'Спампаваць';

  @override
  String get unlockDownload => 'Разблакіраваць спампоўку';

  @override
  String get downloadSaved => 'Захавана ў спампоўках';

  @override
  String get errorGeneric => 'Нешта пайшло не так';

  @override
  String get errorNetwork => 'Памылка сеткі';

  @override
  String get errorBadResponse => 'Нечаканы адказ сервера';

  @override
  String get termsAccept => 'Я згодны з умовамі';

  @override
  String get settingsApiUrl => 'Публічны сайт URL';

  @override
  String get settingsAccount => 'Уліковы запіс';

  @override
  String get settingsAppearance => 'Знешні выгляд';

  @override
  String get settingsTheme => 'Тэма';

  @override
  String get themeSystem => 'Сістэма';

  @override
  String get themeLight => 'Светлы';

  @override
  String get themeDark => 'Цёмны';

  @override
  String get settingsSignedIn => 'Вы ўвайшлі.';

  @override
  String get settingsSignedOut => 'Вы не ўвайшлі у.';

  @override
  String get settingsOpenWebsite => 'Адкрыць вэб-сайт';

  @override
  String get signUp => 'Зарэгістравацца';

  @override
  String get settingsLinks => 'Спасылкі';

  @override
  String get privacyPolicy => 'Палітыка прыватнасці';

  @override
  String get termsOfService => 'Умовы выкарыстання';

  @override
  String get about => 'Пра';

  @override
  String get moreApps => 'Больш прыкладанні';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get languageEnglish => 'Англійская';

  @override
  String get languageHindi => 'Хіндзі';

  @override
  String get logout => 'Выйсці';

  @override
  String get deleteAccount => 'Выдаліць уліковы запіс';

  @override
  String get deleteAccountConfirmTitle => 'Выдаліць свой уліковы запіс?';

  @override
  String get deleteAccountConfirmBody =>
      'Гэта назаўжды выдаляе ваш уліковы запіс і выходзіць з яго. Вашы спасылкі для перадачы будуць працягваць працаваць, але яны больш не будуць адлюстроўвацца ў вашай гісторыі.';

  @override
  String get deleteAccountSuccess => 'Уліковы запіс выдалены';

  @override
  String get deleteAccountSuccessBody => 'Ваш уліковы запіс выдалены.';

  @override
  String get deleteAccountFailed => 'Не атрымалася выдаліць уліковы запіс';

  @override
  String get deleteAccountFailedBody =>
      'Паўтарыце спробу або звярніцеся ў службу падтрымкі.';

  @override
  String get maxFilesReached => 'Зашмат файлаў';

  @override
  String get fileTooLarge => 'Файл таксама вялікі';

  @override
  String get ipLimit => 'Зашмат загрузак з гэтай сеткі';

  @override
  String get fillFields => 'Запоўніце абавязковыя палі';

  @override
  String get invalidEmail => 'Няправільная электронная пошта';

  @override
  String get maxRecipientsReached => 'Занадта шмат атрымальнікаў';

  @override
  String get loginRequiredTitle => 'Патрабуецца ўваход';

  @override
  String get loginRequiredBody =>
      'Гэты сервер патрабуе ўліковага запісу для загрузкі або спампаваць.';

  @override
  String get settingsSubtitle => 'Параметры праграмы і ўліковы запіс.';

  @override
  String get dropHeavyFile => 'Апусціце сюды цяжкі файл.';

  @override
  String upToTotal(String max) {
    return 'Усяго да $max';
  }

  @override
  String get removeAll => 'Выдаліць усё';

  @override
  String get addFiles => 'Дадаць файлы';

  @override
  String get adding => 'Даданне…';

  @override
  String get options => 'Параметры';

  @override
  String get selfDestruct => 'Самазнішчэнне пасля загрузкі';

  @override
  String get expiry => 'Заканчэнне';

  @override
  String get cancelUpload => 'Скасаваць запампоўку';

  @override
  String get transferReady => 'Перадача гатовая!';

  @override
  String get emailSentReady => 'Электронны ліст адпраўлены!';

  @override
  String get shareRecipientHint =>
      'Абагуліцеся гэтай спасылкай са сваім атрымальнікам.';

  @override
  String get emailSentBody => 'Мы апавясцілі вашага атрымальніка(-аў).';

  @override
  String get scanQr => 'Сканіруйце, каб адкрыць спасылку для перадачы.';

  @override
  String get shareLinkButton => 'ПАДАМІЦЦА СПАСЫЛКА';

  @override
  String get verifyFourDigit =>
      'Увядзіце 4-значны код, адпраўлены на вашу электронную пошту адпраўшчыка.';

  @override
  String get starting => 'Пачатак…';

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
    return '$amount МБ засталося';
  }

  @override
  String get fillField => 'Калі ласка, запоўніце гэта поле.';

  @override
  String get enterValidEmail => 'Увядзіце сапраўдны электронная пошта.';

  @override
  String get message => 'Паведамленне';

  @override
  String get recipientEmail => 'Электронная пошта атрымальніка';

  @override
  String get active => 'Актыўны';

  @override
  String get expired => 'Скончаны';

  @override
  String get historyTitle => 'Мае пераводы';

  @override
  String get signInToSeeTransfers => 'Увайдзіце, каб убачыць свае пераводы';

  @override
  String get signInTransfersBody =>
      'Мы выкарыстоўваем вашу электронную пошту, каб звязаць пераводы з вашым уліковым запісам — пароль не патрабуецца.';

  @override
  String get couldNotLoadTransfers => 'Немагчыма загрузіць перадачы';

  @override
  String get retry => 'Паўтор';

  @override
  String get noTransfersYet => 'Перадачы пакуль няма';

  @override
  String get noTransfersBody => 'Пасля адпраўкі файла ён з\'явіцца тут.';

  @override
  String get transferDetails => 'Падрабязнасці перадачы';

  @override
  String get filesSection => 'Файлы';

  @override
  String get receiveTitle => 'Атрымаць файлы';

  @override
  String get receiveSubtitle =>
      'Устаўце спасылку для перадачы для спампоўкі файлы.';

  @override
  String get pasteTooltip => 'Уставіць';

  @override
  String get findTransfer => 'Знайсці перадачу';

  @override
  String get receiveScanQr => 'Сканаваць QR-код';

  @override
  String get receiveScanQrTitle => 'Сканаваць QR-код перадачы';

  @override
  String get receiveScanQrHint => 'Выраўнаваць QR-код унутры рамкі.';

  @override
  String get receiveScanQrInvalid =>
      'Гэты QR-код не з\'яўляецца сапраўднай спасылкай для перадачы.';

  @override
  String get receiveScanQrCameraDenied =>
      'Камера патрабуецца доступ для сканіравання QR-кодаў.';

  @override
  String get receiveStepGetLink => 'Атрымаць спасылку';

  @override
  String get receiveStepGetLinkBody =>
      'Папрасі адпраўшчыка падзяліцца з вамі спасылкай для перадачы.';

  @override
  String get receiveStepPaste => 'Уставіць і знайсці';

  @override
  String get receiveStepPasteBody =>
      'Уставіць спасылку вышэй і націснуць «Знайсці перадачу».';

  @override
  String get receiveStepDownload => 'Спампаваць файлы';

  @override
  String get receiveStepDownloadBody =>
      'Глядзець падрабязнасці файла і спампаваць усё адразу.';

  @override
  String get lookingUpTransfer => 'Пошук перадачы...';

  @override
  String get transferNotFound =>
      'Перадача не знойдзена. Праверце спасылку і паўтарыце спробу.';

  @override
  String get transferExpired =>
      'Тэрмін дзеяння гэтай перадачы скончыўся, і яна больш не даступная.';

  @override
  String get transferLoginRequired =>
      'Для доступу да гэтай перадачы патрабуецца ўвайсці.';

  @override
  String get transferBadResponse =>
      'Нечаканы адказ сервера. Праверце падключэнне.';

  @override
  String get transferNetworkError =>
      'Памылка сеткі. Праверце падключэнне да інтэрнэту.';

  @override
  String transferLoadFailed(String error) {
    return 'Не атрымалася загрузіць перадачу: $error';
  }

  @override
  String get passwordProtected => 'Абаронены паролем';

  @override
  String get enterPassword => 'Увядзіце пароль';

  @override
  String get unlock => 'Разблакіраваць';

  @override
  String get downloading => 'Спампоўка…';

  @override
  String get downloadAllFiles => 'Спампоўка ўсіх файлаў';

  @override
  String get downloadSingleFile => 'Спампоўка файла';

  @override
  String get receiveAnother => 'Атрымайце яшчэ адну перадачу';

  @override
  String get plansTitle => 'Планы';

  @override
  String get plansSubtitle =>
      'Абнавіце, каб выдаліць рэкламу і адправіць файлы большага памеру.';

  @override
  String get storeUnavailable => 'Крама недаступная';

  @override
  String get storeUnavailableBody => 'Пакупкі ў праграме недаступныя зараз.';

  @override
  String get storeLoadingPrices => 'Загрузка цэн з App Store…';

  @override
  String get storePricesUnavailable => 'Цэны недаступныя';

  @override
  String get storePricesPartial => 'Некаторыя цэны не ўдалося загрузіць';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded з $total прадуктаў падпіскі загружаны.';
  }

  @override
  String get storeSetupHint =>
      'Праверце на рэальным iPhone (не Simulator), выкарыстоўвайце Sandbox Apple ID і пераканайцеся, што ўсе Пад ідэнтыфікатарам пакета гэтай праграмы створана 6 падпісак у App Store Connect з устаноўленымі цэнамі.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/месяц';
  }

  @override
  String get freeVersionAds =>
      'У цяперашні час вы карыстаецеся нашай бясплатнай версіяй з рэкламай';

  @override
  String get restorePurchases => 'Аднавіць пакупкі';

  @override
  String get plansContinue => 'Працягваць';

  @override
  String get planLinkRestore => 'Аднавіць';

  @override
  String get termsAndConditions => 'Умовы';

  @override
  String get createAccountTitle => 'Стварыць уліковы запіс';

  @override
  String get signUpSubtitle =>
      'Зарэгістравацца з дапамогай электроннай пошты і пароля.';

  @override
  String get confirmPassword => 'Пацвердзіць пароль';

  @override
  String get passwordMin8 => 'Пароль (мін. 8 chars)';

  @override
  String get alreadyHaveAccount => 'У вас ужо ёсць уліковы запіс?';

  @override
  String get checkEmailTitle => 'Праверце свой\nэлектронная пошта';

  @override
  String otpSentTo(String email) {
    return 'Мы адправілі 6-значны код на\n$email';
  }

  @override
  String get verifyAndSignIn => 'Праверце і ўвайдзіце';

  @override
  String get didntReceiveCode => 'Не атрымалі?';

  @override
  String get tryAgain => 'Паўтарыце спробу';

  @override
  String get otpExpiresHint =>
      'Тэрмін дзеяння кода заканчваецца праз 5 хвілін. Праверце папку са спамам, калі вы яе не бачыце.';

  @override
  String get snackError => 'Памылка';

  @override
  String get snackCopied => 'Скапіявана';

  @override
  String get snackCopiedBody => 'Спасылка скапіравана ў буфер абмену';

  @override
  String get snackWelcome => 'Вітаем';

  @override
  String get snackAccountCreated => 'Уліковы запіс створаны';

  @override
  String get snackEnterEmail => 'Калі ласка, увядзіце свой электронная пошта';

  @override
  String get snackEnterPassword => 'Калі ласка, увядзіце свой пароль';

  @override
  String get snackInvalidEmail => 'Няправільны адрас электроннай пошты';

  @override
  String get snackInvalidCredentials =>
      'Няправільны адрас электроннай пошты ці пароль';

  @override
  String get snackPasswordMin8 =>
      'Пароль павінен складацца як мінімум з 8 сімвалаў';

  @override
  String get snackPasswordMismatch => 'Паролі не супадаюць.';

  @override
  String get snackAccountExists =>
      'Уліковы запіс ужо існуе. Калі ласка, увайдзіце.';

  @override
  String get snackSignupFailed =>
      'Не атрымалася стварыць уліковы запіс. Паспрабуйце яшчэ раз.';

  @override
  String get snackEnterOtp => 'Калі ласка, увядзіце 6-значны код';

  @override
  String get snackOtpExpired => 'Тэрмін дзеяння кода скончыўся';

  @override
  String get snackOtpExpiredBody => 'Запытайце новы код.';

  @override
  String get snackInvalidCode => 'Няправільны код';

  @override
  String get snackInvalidCodeBody =>
      'Код няправільны. Калі ласка, паспрабуйце яшчэ раз.';

  @override
  String get snackSendCodeFailed =>
      'Не атрымалася адправіць код. Праверце падключэнне і паўтарыце спробу.';

  @override
  String get snackEmptyFolder => 'Папка пустая';

  @override
  String get snackEmptyFolderBody => 'У выбранай папцы не знойдзены файлы.';

  @override
  String get snackFolderUnsupported => 'Не падтрымліваецца';

  @override
  String get snackFolderUnsupportedBody =>
      'Загрузка папак недаступная на гэтай платформе.';

  @override
  String get snackFolderReadError => 'Немагчыма прачытаць выбраную папку.';

  @override
  String get snackLimitReached => 'Дасягнуты ліміт';

  @override
  String get snackLimitFilesBody =>
      'Некаторыя файлы не былі дададзены з-за памеру або колькасці файлаў абмежаванні.';

  @override
  String get snackFreePlanLimit =>
      'Бясплатны план дазваляе да 5 ГБ за перадачу. Выдаліце ​​некаторыя файлы або абнавіце.';

  @override
  String get snackSignInEmail =>
      'Калі ласка, увайдзіце, каб адправіць па электроннай пошце.';

  @override
  String get snackUploadStartFailed => 'Немагчыма пачаць запампоўку.';

  @override
  String get snackVerifyEnterCode =>
      'Увядзіце 4-значны код са сваёй электроннай пошты.';

  @override
  String get snackVerifyInvalid =>
      'Няправільны або пратэрмінаваны код. Праверце электронную пошту і паўтарыце спробу.';

  @override
  String get snackVerifyResendFailed =>
      'Немагчыма паўторна адправіць код. Паспрабуйце яшчэ раз.';

  @override
  String get snackDownloadComplete => 'Спампоўка завершана';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" захавана ў Спампоўкі';
  }

  @override
  String get snackDownloadFailed => 'Збой спампоўкі';

  @override
  String get snackSaved => 'Захавана';

  @override
  String get snackServerUrlUpdated =>
      'URL-адрас сервера абноўлены. Перазапусціце праграму, каб прымяніць.';

  @override
  String get snackStoreError => 'Памылка крамы';

  @override
  String get snackMissingProducts => 'Прадукты адсутнічаюць';

  @override
  String get snackStoreUnavailable => 'Крама недаступная';

  @override
  String get snackStoreUnavailableBody =>
      'Пакупкі ў праграме недаступныя на гэтай прыладзе.';

  @override
  String get snackProductNotLoaded => 'Прадукт яшчэ не загружаны.';

  @override
  String get snackRestoreStarted => 'Аднаўленне пачата';

  @override
  String get snackRestoreStartedBody => 'Мы правяраем ваш пакупкі.';

  @override
  String get snackRestoreFailed => 'Збой аднаўлення';

  @override
  String get snackProcessing => 'Апрацоўка';

  @override
  String get snackPleaseWait => 'Калі ласка, пачакайце...';

  @override
  String get snackSuccess => 'Поспех';

  @override
  String get snackPurchaseCompleted => 'Купля завершана.';

  @override
  String get snackPurchaseError => 'Памылка пакупкі';

  @override
  String get snackPurchaseFailed => 'Купля не ўдалося.';

  @override
  String get snackCanceled => 'Адменена';

  @override
  String get snackPurchaseCanceled => 'Купля адменена.';

  @override
  String get snackUpload => 'Загружаць';

  @override
  String get snackVerify => 'Праверыць';

  @override
  String get doNotExpire => 'Не рабіць мінае';

  @override
  String get hourSingular => 'гадзіна';

  @override
  String get hourPlural => 'гадзін';

  @override
  String get daySingular => 'дзень';

  @override
  String get dayPlural => 'дзень';

  @override
  String get emailAddressLabel => 'АДРАС ЭЛЕКТРОННАЙ ПОШТЫ';

  @override
  String get passwordLabelCaps => 'ПАРОЛЬ';

  @override
  String get confirmPasswordLabelCaps => 'ПАЦВЕРДЗІЦЬ ПАРОЛЬ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'СПАСЫЛКА ДЛЯ ПЕРАДАЧЫ АБО ID';

  @override
  String get howToReceive => 'ЯК АТРЫМАЦЬ';

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
  String get planAdsTitle => 'План Ads';

  @override
  String get planAdsBullet1 => 'Доступ да праграмы з бясплатнай рэкламай';

  @override
  String get planAdsBullet2 => 'Выдаліць усю рэкламу';

  @override
  String get planProTitle => 'План Pro';

  @override
  String get planProBullet1 => 'Адпраўляйце файлы памерам да 20 ГБ';

  @override
  String get planProBullet2 => 'Хуткая запампоўка';

  @override
  String get planPremiumTitle => 'Прэміум-план';

  @override
  String get planPremiumBullet1 => 'Адпраўляйце файлы памерам да 100 ГБ';

  @override
  String get planPremiumBullet2 => 'Звышхуткая запампоўка';

  @override
  String get planSubscriptionDisclaimer =>
      'Без пробнага перыяду — для выкарыстання дадатковых функцый праграмы патрабуецца падпіска. Вам неадкладна спаганяць плату. Вы можаце адмяніць у любы час.';

  @override
  String get perMonth => '/ месяц';

  @override
  String get perYear => '/ год';

  @override
  String get snackConnectionProblem =>
      'Праблема з падключэннем. Паўтарыце спробу.';

  @override
  String get networkTitle => 'Сетка';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Файлы: $count · $size байты';
  }

  @override
  String todayAt(String time) {
    return 'Сёння · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Учора · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysдзён таму · $time';
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
    return '$sent / $total • $remaining злева';
  }

  @override
  String get loadingShort => 'Загрузка...';

  @override
  String get colorPaletteTitle => 'Каляровая палітра';

  @override
  String get colorPaletteSectionBackgrounds => 'Фон (чарніла маштаб)';

  @override
  String get colorPaletteSectionAccent => 'Акцэнт / Асноўны';

  @override
  String get colorPaletteSectionText => 'Тэкст';

  @override
  String get colorPaletteSectionBorders => 'Межы і шкло';

  @override
  String get colorPaletteSectionSemantic => 'Семантыка';

  @override
  String get colorPaletteSectionLive => 'Жывая тэма (бягучая)';

  @override
  String get colorPaletteActiveHint => '★ = актыўна выкарыстоўваецца ў экраны';

  @override
  String get colorPaletteCopyHint =>
      'Доўга націскайце любы ўзор, каб скапіяваць яго шаснаццатковае значэнне.';

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
  String get settingsAppBrand => 'Падзяліцца вялікім\nВідэафайлы';

  @override
  String get loginEmailPasswordPrompt =>
      'Увядзіце электронную пошту і пароль для ўваходу.';

  @override
  String get forgotPassword => 'Забыліся пароль?';

  @override
  String get forgotPasswordTitle => 'Скінуць пароль';

  @override
  String get forgotPasswordBody =>
      'Увядзіце электронную пошту ўліковага запісу, і мы вышлем код скіду.';

  @override
  String get forgotPasswordSubmit => 'Адправіць код скіду';

  @override
  String get resetPasswordTitle => 'Стварыць новы пароль';

  @override
  String get resetPasswordBody =>
      'Увядзіце 6-значны код са сваёй электроннай пошты і абярыце новы пароль.';

  @override
  String get resetPasswordSubmit => 'Абнавіць пароль';

  @override
  String get snackPasswordResetSent => 'Код скіду адпраўлены';

  @override
  String get snackPasswordResetSentBody =>
      'Праверце, ці няма ў вашай электроннай пошце 6-значнага кода скіду.';

  @override
  String get snackPasswordResetFailed =>
      'Не атрымалася адправіць код скіду. Паспрабуйце яшчэ раз.';

  @override
  String get snackPasswordUpdated => 'Пароль абноўлены';

  @override
  String get snackPasswordUpdatedBody => 'Увайдзіце з новым паролем.';

  @override
  String get snackPasswordResetInvalid =>
      'Няправільны або пратэрмінаваны код скіду.';

  @override
  String get otpDigitLabel => '6-ЗНАЧНЫ КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count іншыя файлы';
  }
}
