// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Үлкен бейне файлдарын бөлісіңіз';

  @override
  String get heroAccent => 'бірден.';

  @override
  String get heroTitle => 'Ауыр файлдарды жіберіңіз';

  @override
  String get splashLoading => 'Жүктелуде…';

  @override
  String get navSend => 'Бақылау тақтасы';

  @override
  String get navHome => 'Үй';

  @override
  String get navHistory => 'Тарих';

  @override
  String get navReceive => 'Қабылдау';

  @override
  String get navPlans => 'Жоспарлар';

  @override
  String get navDownload => 'Жүктеп алу';

  @override
  String get navSettings => 'Параметрлер';

  @override
  String get modeLink => 'Сілтеме алыңыз';

  @override
  String get modeEmail => 'Электрондық пошта арқылы жіберу';

  @override
  String get pickFiles => 'Файлдарды таңдаңыз';

  @override
  String get pickFolder => 'Қалтаны таңдаңыз';

  @override
  String get emailFrom => 'Сіздің электрондық поштаңыз';

  @override
  String get mailFromUsesAccount =>
      'Жүйеге кірген электрондық поштаңызды пайдаланады.';

  @override
  String get recipientEmailsHelper =>
      'Бірнеше алушы: үтірмен, нүктелі үтірмен немесе бос орындармен бөліңіз.';

  @override
  String get emailTo => 'Алушының электрондық поштасы';

  @override
  String get messageOptional => 'Хабарлама (міндетті емес)';

  @override
  String get passwordOptional => 'Құпия сөз (міндетті емес)';

  @override
  String get destructAfterDownload => 'Жүктеп алғаннан кейін жою';

  @override
  String get destructNo => 'Қол жетімді қалдырыңыз';

  @override
  String get sendButton => 'Жіберу';

  @override
  String get uploading => 'Жүктеп салынуда…';

  @override
  String get uploadComplete => 'Дайын';

  @override
  String get shareLinkTitle => 'Сіздің сілтемеңіз';

  @override
  String get copyLink => 'Сілтемені көшіру';

  @override
  String get share => 'Бөлісу';

  @override
  String get shareQrCode => 'QR кодын бөлісіңіз';

  @override
  String get uploadMore => 'Басқасын жібер';

  @override
  String get emailSentTitle => 'Электрондық хаттар жіберілді';

  @override
  String get verifyEmailTitle => 'Электрондық поштаңызды растаңыз';

  @override
  String get verifyCodeHint => 'Электрондық поштаңыздан кодты енгізіңіз';

  @override
  String get verifySubmit => 'Тексеру';

  @override
  String get verifyResendCode => 'Кодты қайта жіберу';

  @override
  String get verifyCodeSent =>
      'Электрондық поштаңызға жаңа растау коды жіберілді.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Растау электрондық поштасы жіберілмеген болуы мүмкін';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сервер жеткізуді растай алмады (көбінесе SMTP қате конфигурацияланады). Сайт әкімшісінен әкімші панелінде Пошта параметрлерін тексеруді сұраңыз, содан кейін Кодты қайта жіберу түймесін түртіңіз.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Егер ол келмесе: Қалаусыз/Спам және Жарнамаларды тексеріңіз, бір минут күтіңіз, $email қатесі жоқ екенін растаңыз, содан кейін Қайта жіберу түймесін түртіңіз.';
  }

  @override
  String get loginTitle => 'Кіру';

  @override
  String get signupHint =>
      'Сайт тіркелгісінің электрондық поштасы мен құпия сөзін пайдаланыңыз.';

  @override
  String get emailHint => 'Электрондық пошта';

  @override
  String get passwordHint => 'Құпия сөз';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get signIn => 'Кіру';

  @override
  String get downloadIdHint => 'Тасымалдау идентификаторы';

  @override
  String get privateIdHint => 'Жеке идентификатор (міндетті емес)';

  @override
  String get fetchTransfer => 'Ашық трансфер';

  @override
  String get downloadFile => 'Жүктеп алу';

  @override
  String get unlockDownload => 'Жүктеп алу құлпын ашу';

  @override
  String get downloadSaved => 'Жүктеп алынғандар ішіне сақталды';

  @override
  String get errorGeneric => 'Бірдеңе дұрыс болмады';

  @override
  String get errorNetwork => 'Желі қатесі';

  @override
  String get errorBadResponse => 'Күтпеген сервер жауабы';

  @override
  String get termsAccept => 'Мен шарттармен келісемін';

  @override
  String get settingsApiUrl => 'Қоғамдық сайт URL мекенжайы';

  @override
  String get settingsAccount => 'Есептік жазба';

  @override
  String get settingsAppearance => 'Сыртқы түрі';

  @override
  String get settingsTheme => 'Тақырып';

  @override
  String get themeSystem => 'Жүйе';

  @override
  String get themeLight => 'Жарық';

  @override
  String get themeDark => 'Қараңғы';

  @override
  String get settingsSignedIn => 'Сіз жүйеге кірдіңіз.';

  @override
  String get settingsSignedOut => 'Сіз жүйеге кірген жоқсыз.';

  @override
  String get settingsOpenWebsite => 'Веб-сайтты ашу';

  @override
  String get signUp => 'Тіркелу';

  @override
  String get settingsLinks => 'Сілтемелер';

  @override
  String get privacyPolicy => 'Құпиялылық саясаты';

  @override
  String get termsOfService => 'Қызмет көрсету шарттары';

  @override
  String get about => 'туралы';

  @override
  String get moreApps => 'Қосымша қолданбалар';

  @override
  String get settingsLanguage => 'Тіл';

  @override
  String get languageEnglish => 'Ағылшын';

  @override
  String get languageHindi => 'хинди';

  @override
  String get logout => 'Шығу';

  @override
  String get deleteAccount => 'Есептік жазбаны жою';

  @override
  String get deleteAccountConfirmTitle => 'Есептік жазбаңызды жою керек пе?';

  @override
  String get deleteAccountConfirmBody =>
      'Бұл есептік жазбаңызды біржола жояды және сізді жүйеден шығарады. Тасымалдау сілтемелері жұмысын жалғастырады, бірақ олар енді сіздің тарихыңызда көрсетілмейді.';

  @override
  String get deleteAccountSuccess => 'Есептік жазба жойылды';

  @override
  String get deleteAccountSuccessBody => 'Есептік жазбаңыз жойылды.';

  @override
  String get deleteAccountFailed => 'Есептік жазба жойылмады';

  @override
  String get deleteAccountFailedBody =>
      'Қайталап көріңіз немесе қолдау қызметіне хабарласыңыз.';

  @override
  String get maxFilesReached => 'Тым көп файлдар';

  @override
  String get fileTooLarge => 'Файл тым үлкен';

  @override
  String get ipLimit => 'Бұл желіден жүктеп салулар тым көп';

  @override
  String get fillFields => 'Міндетті өрістерді толтырыңыз';

  @override
  String get invalidEmail => 'Жарамсыз электрондық пошта';

  @override
  String get maxRecipientsReached => 'Алушылар тым көп';

  @override
  String get loginRequiredTitle => 'Жүйеге кіру қажет';

  @override
  String get loginRequiredBody =>
      'Бұл сервер жүктеп салу немесе жүктеп алу үшін тіркелгіні қажет етеді.';

  @override
  String get settingsSubtitle => 'Қолданба теңшелімдері және есептік жазба.';

  @override
  String get dropHeavyFile => 'Ауыр файлды осы жерге тастаңыз.';

  @override
  String upToTotal(String max) {
    return 'Барлығы $max дейін';
  }

  @override
  String get removeAll => 'Барлығын жою';

  @override
  String get addFiles => 'Файлдарды қосыңыз';

  @override
  String get adding => 'Қосылуда…';

  @override
  String get options => 'Параметрлер';

  @override
  String get selfDestruct => 'Жүктеп алғаннан кейін өзін-өзі жою';

  @override
  String get expiry => 'Жарамдылық мерзімі';

  @override
  String get cancelUpload => 'Жүктеп салудан бас тарту';

  @override
  String get transferReady => 'Тасымалдау дайын!';

  @override
  String get emailSentReady => 'Электрондық пошта жіберілді!';

  @override
  String get shareRecipientHint => 'Осы сілтемені алушымен бөлісіңіз.';

  @override
  String get emailSentBody => 'Біз сіздің алушы(ларыңызды) хабардар еттік.';

  @override
  String get scanQr => 'Аударманы ашуға болады. сілтеме.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'Жіберушінің электрондық поштасына жіберілген 4 таңбалы кодты енгізіңіз.';

  @override
  String get starting => 'Басталуда…';

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
    return '$amount МБ қалды';
  }

  @override
  String get fillField => 'Осы өрісті дұрыс толтырыңыз.';

  @override
  String get enterValidEmail => 'тер. email.';

  @override
  String get message => 'Хабар';

  @override
  String get recipientEmail => 'Алушының электрондық поштасы';

  @override
  String get active => 'Белсенді';

  @override
  String get expired => 'Мерзімі бітті';

  @override
  String get historyTitle => 'Менің аударымдарым';

  @override
  String get signInToSeeTransfers =>
      'Аударымдарыңызды көру үшін жүйеге кіріңіз';

  @override
  String get signInTransfersBody => 'Біз электрондық поштаңызды пайдаланамыз';

  @override
  String get couldNotLoadTransfers =>
      'Трансферттерді байланыстыру үшін тіркелгіңізді пайдаланамыз␐Co19␝Құпия сөзді байланыстыру қажет емес. тасымалдауларды жүктеме';

  @override
  String get retry => 'Қайталау';

  @override
  String get noTransfersYet => 'Тасымалдау әлі жоқ';

  @override
  String get noTransfersBody =>
      'Файлды жібергеннен кейін ол осы жерде пайда болады.';

  @override
  String get transferDetails => 'Тасымалдау мәліметтері';

  @override
  String get filesSection => 'Файлдар';

  @override
  String get receiveTitle => 'Файлдарды тасымалдауға';

  @override
  String get receiveSubtitle =>
      '25␝6 Қайта жіберу сілтемесі файлдарды жүктеп алыңыз.';

  @override
  String get pasteTooltip => 'Қою';

  @override
  String get findTransfer => 'Тасымалдауды табу';

  @override
  String get receiveScanQr => 'QR сканерлеу';

  @override
  String get receiveScanQrTitle => 'Трансфертті сканерлеу QR';

  @override
  String get receiveScanQrHint => 'ҚР кодын кадрдың ішіне туралаңыз.';

  @override
  String get receiveScanQrInvalid => 'Бұл жарамды QR коды емес. сілтеме.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR кодтарын сканерлеу үшін камераға кіру қажет.';

  @override
  String get receiveStepGetLink => 'Сілтемені алу';

  @override
  String get receiveStepGetLinkBody =>
      'Жіберушіден тасымалдау сілтемесін сізбен бөлісуін сұраңыз.';

  @override
  String get receiveStepPaste => 'Қою және табу';

  @override
  String get receiveStepPasteBody => 'Жоғарыдағы сілтемені қою';

  @override
  String get receiveStepDownload =>
      '«Жоғарыдағы сілтемені қою␐8» түймесін түртіңіз. файлдар';

  @override
  String get receiveStepDownloadBody =>
      'Файл мәліметтерін қараңыз және барлығын бірден жүктеп алыңыз.';

  @override
  String get lookingUpTransfer => 'Трансферт іздеуде…';

  @override
  String get transferNotFound =>
      'Тасымалдау табылмады. Сілтемені тексеріп, әрекетті қайталаңыз.';

  @override
  String get transferExpired =>
      'Бұл тасымалдаудың мерзімі аяқталды және енді қолжетімсіз.';

  @override
  String get transferLoginRequired =>
      'Бұл тасымалдауға қол жеткізу үшін жүйеге кіру қажет.';

  @override
  String get transferBadResponse =>
      'Күтпеген сервер жауабы. Байланысты тексеріңіз.';

  @override
  String get transferNetworkError =>
      'Желі қатесі. Интернет байланысын тексеріңіз.';

  @override
  String transferLoadFailed(String error) {
    return 'Тасымалдау жүктелмеді: $error';
  }

  @override
  String get passwordProtected => 'Парольмен қорғалған';

  @override
  String get enterPassword => 'Құпия сөзді енгізіңіз';

  @override
  String get unlock => 'Құлыпты ашу';

  @override
  String get downloading => 'Жүктеп алынуда…';

  @override
  String get downloadAllFiles => 'Барлық файлдарды жүктеп алыңыз';

  @override
  String get downloadSingleFile => 'Файлды жүктеп алу';

  @override
  String get receiveAnother => 'Басқа аударымды алыңыз';

  @override
  String get plansTitle => 'Жоспарлар';

  @override
  String get plansSubtitle =>
      'Жарнаманы жою және үлкенірек файлдарды жіберу үшін жаңартыңыз.';

  @override
  String get storeUnavailable => 'Дүкен қолжетімсіз';

  @override
  String get storeUnavailableBody =>
      'Қолданба арқылы сатып алулар дәл қазір қолжетімді емес.';

  @override
  String get storeLoadingPrices => 'App Store дүкенінен бағалар жүктелуде…';

  @override
  String get storePricesUnavailable => 'Бағалар қолжетімді емес';

  @override
  String get storePricesPartial => 'Кейбір бағаларды жүктеу мүмкін болмады';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total жазылым өнімдерінің $loaded жүктелді.';
  }

  @override
  String get storeSetupHint =>
      'Нақты iPhone құрылғысында (Симулятор емес) сынақтан өткізіңіз, Apple ID идентификаторын пайдаланыңыз және барлық 6 жазылым осы қолданбаның бума идентификаторы астында App Store Connect бағалар жиынтығымен жасалғанына көз жеткізіңіз.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ай';
  }

  @override
  String get freeVersionAds =>
      'Қазіргі уақытта сіз жарнамалары бар тегін нұсқамызды пайдаланып жатырсыз';

  @override
  String get restorePurchases => 'Сатып алуларды қалпына келтіріңіз';

  @override
  String get plansContinue => 'Жалғастыру';

  @override
  String get planLinkRestore => 'Қалпына келтіру';

  @override
  String get termsAndConditions => 'Шарттар мен шарттар';

  @override
  String get createAccountTitle => 'Аккаунт ашу';

  @override
  String get signUpSubtitle => 'Электрондық пошта мен құпия сөзбен тіркеліңіз.';

  @override
  String get confirmPassword => 'Құпия сөзді Растау';

  @override
  String get passwordMin8 => 'Құпия сөз (кем дегенде 8 таңба)';

  @override
  String get alreadyHaveAccount => 'Есептік жазбаңыз бар ма?';

  @override
  String get checkEmailTitle => 'Өзіңізді тексеріңіз\nэлектрондық пошта';

  @override
  String otpSentTo(String email) {
    return 'Біз 6 таңбалы кодты жібердік\n$email';
  }

  @override
  String get verifyAndSignIn => 'Тексеру және кіру';

  @override
  String get didntReceiveCode => 'Оны алмадыңыз ба?';

  @override
  String get tryAgain => 'Қайтадан байқап көріңіз';

  @override
  String get otpExpiresHint =>
      'Кодтың мерзімі 5 минутта аяқталады. Егер сіз оны көрмесеңіз, спам қалтаңызды тексеріңіз.';

  @override
  String get snackError => 'Қате';

  @override
  String get snackCopied => 'Көшірілген';

  @override
  String get snackCopiedBody => 'Сілтеме алмасу буферіне көшірілді';

  @override
  String get snackWelcome => 'Қош келдіңіз';

  @override
  String get snackAccountCreated => 'Тіркелгі жасалды';

  @override
  String get snackEnterEmail => 'Электрондық поштаңызды енгізіңіз';

  @override
  String get snackEnterPassword => 'Құпия сөзіңізді енгізіңіз';

  @override
  String get snackInvalidEmail => 'Жарамсыз электрондық пошта мекенжайы';

  @override
  String get snackInvalidCredentials =>
      'Қате электрондық пошта немесе құпия сөз';

  @override
  String get snackPasswordMin8 => 'Құпия сөз кемінде 8 таңбадан тұруы керек';

  @override
  String get snackPasswordMismatch => 'Құпия сөздер сәйкес келмейді.';

  @override
  String get snackAccountExists =>
      'Есептік жазба бұрыннан бар. Жүйеге кіріңіз.';

  @override
  String get snackSignupFailed =>
      'Есептік жазба жасау мүмкін емес. Қайтадан байқап көріңіз.';

  @override
  String get snackEnterOtp => '6 таңбалы кодты енгізіңіз';

  @override
  String get snackOtpExpired => 'Кодтың мерзімі аяқталды';

  @override
  String get snackOtpExpiredBody => 'Жаңа кодты сұраңыз.';

  @override
  String get snackInvalidCode => 'Жарамсыз код';

  @override
  String get snackInvalidCodeBody => 'Код дұрыс емес. Қайталап көріңіз.';

  @override
  String get snackSendCodeFailed =>
      'Код жіберілмеді. Байланысты тексеріп, әрекетті қайталаңыз.';

  @override
  String get snackEmptyFolder => 'Бос қалта';

  @override
  String get snackEmptyFolderBody => 'Таңдалған қалтада файлдар табылмады.';

  @override
  String get snackFolderUnsupported => 'Қолдау көрсетілмейді';

  @override
  String get snackFolderUnsupportedBody =>
      'Бұл платформада қалтаны жүктеп салу мүмкін емес.';

  @override
  String get snackFolderReadError => 'Таңдалған қалтаны оқу мүмкін емес.';

  @override
  String get snackLimitReached => 'Шектеуге жетті';

  @override
  String get snackLimitFilesBody =>
      'Кейбір файлдар өлшемі немесе файлдар саны шектеулеріне байланысты қосылмады.';

  @override
  String get snackFreePlanLimit =>
      'Тегін жоспар бір аударым үшін 5 ГБ дейін мүмкіндік береді. Кейбір файлдарды жойыңыз немесе жаңартыңыз.';

  @override
  String get snackSignInEmail =>
      'Электрондық пошта арқылы жіберу үшін жүйеге кіріңіз.';

  @override
  String get snackUploadStartFailed => 'Жүктеп салуды бастау мүмкін болмады.';

  @override
  String get snackVerifyEnterCode =>
      'Электрондық поштаңыздан 4 таңбалы кодты енгізіңіз.';

  @override
  String get snackVerifyInvalid =>
      'Жарамсыз немесе мерзімі өтіп кеткен код. Электрондық поштаны тексеріп, әрекетті қайталаңыз.';

  @override
  String get snackVerifyResendFailed =>
      'Кодты қайта жіберу мүмкін болмады. Қайтадан байқап көріңіз.';

  @override
  String get snackDownloadComplete => 'Жүктеп алу аяқталды';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" Жүктеулер ішіне сақталды';
  }

  @override
  String get snackDownloadFailed => 'Жүктеп алу сәтсіз аяқталды';

  @override
  String get snackSaved => 'Сақталды';

  @override
  String get snackServerUrlUpdated =>
      'Сервер URL мекенжайы жаңартылды. Қолдану үшін қолданбаны қайта іске қосыңыз.';

  @override
  String get snackStoreError => 'Дүкен қатесі';

  @override
  String get snackMissingProducts => 'Жетіспейтін өнімдер';

  @override
  String get snackStoreUnavailable => 'Дүкен қолжетімсіз';

  @override
  String get snackStoreUnavailableBody =>
      'Бұл құрылғыда қолданба арқылы сатып алу мүмкін емес.';

  @override
  String get snackProductNotLoaded => 'Өнім әлі жүктелмеген.';

  @override
  String get snackRestoreStarted => 'Қалпына келтіру басталды';

  @override
  String get snackRestoreStartedBody => 'Сатып алуларыңызды тексеріп жатырмыз.';

  @override
  String get snackRestoreFailed => 'Қалпына келтіру сәтсіз аяқталды';

  @override
  String get snackProcessing => 'Өңдеу';

  @override
  String get snackPleaseWait => 'Күте тұрыңыз…';

  @override
  String get snackSuccess => 'Сәттілік';

  @override
  String get snackPurchaseCompleted => 'Сатып алу аяқталды.';

  @override
  String get snackPurchaseError => 'Сатып алу қатесі';

  @override
  String get snackPurchaseFailed => 'Сатып алу сәтсіз аяқталды.';

  @override
  String get snackCanceled => 'Бас тартылды';

  @override
  String get snackPurchaseCanceled => 'Сатып алудан бас тартылды.';

  @override
  String get snackUpload => 'Жүктеп салу';

  @override
  String get snackVerify => 'Тексеру';

  @override
  String get doNotExpire => 'Мерзімі аяқталмайды';

  @override
  String get hourSingular => 'сағат';

  @override
  String get hourPlural => 'сағат';

  @override
  String get daySingular => 'күні';

  @override
  String get dayPlural => 'күндер';

  @override
  String get emailAddressLabel => 'ЭЛЕКТРОНДЫҚ ПОШТАНЫҢ АДРЕСІ';

  @override
  String get passwordLabelCaps => 'ҚҰПИЯ СӨЗ';

  @override
  String get confirmPasswordLabelCaps => 'ҚҰПИЯ СӨЗДІ РАСТАУ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ТАСЫМАЛУ СІЛТЕМЕСІ НЕМЕСЕ ИД';

  @override
  String get howToReceive => 'ҚАЛАЙ ҚАБЫЛДАУ КЕРЕК';

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
  String get planAdsTitle => 'Жарнамалар жоспары';

  @override
  String get planAdsBullet1 => 'Жарнамасыз қолданбаға қол жеткізу';

  @override
  String get planAdsBullet2 => 'Барлық жарнамаларды алып тастаңыз';

  @override
  String get planProTitle => 'Pro жоспары';

  @override
  String get planProBullet1 => '20 ГБ дейінгі файлдарды жіберіңіз';

  @override
  String get planProBullet2 => 'Жылдам жүктеп салу';

  @override
  String get planPremiumTitle => 'Премиум жоспар';

  @override
  String get planPremiumBullet1 => '100 ГБ дейінгі файлдарды жіберіңіз';

  @override
  String get planPremiumBullet2 => 'Өте жылдам жүктеп салу';

  @override
  String get planSubscriptionDisclaimer =>
      'Сынақ мерзімі жоқ — қолданбаның қосымша мүмкіндіктерін пайдалану үшін жазылым қажет. Сізден бірден ақы алынады. Кез келген уақытта бас тарта аласыз.';

  @override
  String get perMonth => '/ай';

  @override
  String get perYear => '/ жыл';

  @override
  String get snackConnectionProblem => 'Қосылым мәселесі. Қайталап көріңіз.';

  @override
  String get networkTitle => 'Желі';

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
    return 'Бүгін · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Кеше · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysкүн бұрын · $time';
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
    return '$sent / $total • $remaining солға';
  }

  @override
  String get loadingShort => 'Жүктелуде…';

  @override
  String get colorPaletteTitle => 'Түс палитрасы';

  @override
  String get colorPaletteSectionBackgrounds => 'Фондар (сия масштабы)';

  @override
  String get colorPaletteSectionAccent => 'Екпін/Негізгі';

  @override
  String get colorPaletteSectionText => 'Мәтін';

  @override
  String get colorPaletteSectionBorders => 'Жиектер және шыны';

  @override
  String get colorPaletteSectionSemantic => 'Семантикалық';

  @override
  String get colorPaletteSectionLive => 'Тікелей тақырып (ағымдағы)';

  @override
  String get colorPaletteActiveHint => '★ = экрандарда белсенді қолданылады';

  @override
  String get colorPaletteCopyHint =>
      'Он алтылық мәнін көшіру үшін кез келген үлгіні ұзақ басып тұрыңыз.';

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
  String get settingsAppBrand => 'Үлкен бөлісіңіз\nБейне файлдар';

  @override
  String get loginEmailPasswordPrompt =>
      'Жүйеге кіру үшін электрондық пошта мен құпия сөзді енгізіңіз.';

  @override
  String get forgotPassword => 'Құпия сөзді ұмыттыңыз ба?';

  @override
  String get forgotPasswordTitle => 'Құпия сөзді қалпына келтіру';

  @override
  String get forgotPasswordBody =>
      'Тіркелгі электрондық поштаңызды енгізіңіз, біз қалпына келтіру кодын жібереміз.';

  @override
  String get forgotPasswordSubmit => 'Қалпына келтіру кодын жіберіңіз';

  @override
  String get resetPasswordTitle => 'Жаңа құпия сөз жасаңыз';

  @override
  String get resetPasswordBody =>
      'Электрондық поштаңыздан 6 таңбалы кодты енгізіп, жаңа құпия сөзді таңдаңыз.';

  @override
  String get resetPasswordSubmit => 'Құпия сөзді жаңарту';

  @override
  String get snackPasswordResetSent => 'Қалпына келтіру коды жіберілді';

  @override
  String get snackPasswordResetSentBody =>
      'Электрондық поштаңызды 6 таңбалы қалпына келтіру кодын тексеріңіз.';

  @override
  String get snackPasswordResetFailed =>
      'Қалпына келтіру кодын жіберу мүмкін болмады. Қайтадан байқап көріңіз.';

  @override
  String get snackPasswordUpdated => 'Құпия сөз жаңартылды';

  @override
  String get snackPasswordUpdatedBody => 'Жаңа құпия сөзбен жүйеге кіріңіз.';

  @override
  String get snackPasswordResetInvalid =>
      'Жарамсыз немесе мерзімі өткен қалпына келтіру коды.';

  @override
  String get otpDigitLabel => '6-САНДЫҚ КОД';

  @override
  String receiveMoreFiles(int count) {
    return '+$count қосымша файлдар';
  }
}
