// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Ndani skedarë të mëdhenj video';

  @override
  String get heroAccent => 'në çast.';

  @override
  String get heroTitle => 'Dërgoni skedarë të rëndë';

  @override
  String get splashLoading => 'Po ngarkohet…';

  @override
  String get navSend => 'Paneli';

  @override
  String get navHome => 'Shtëpi';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Merrni';

  @override
  String get navPlans => 'Planet';

  @override
  String get navDownload => 'Shkarkoni';

  @override
  String get navSettings => 'Cilësimet';

  @override
  String get modeLink => 'Merrni një lidhje';

  @override
  String get modeEmail => 'Dërgo me email';

  @override
  String get pickFiles => 'Zgjidhni skedarët';

  @override
  String get pickFolder => 'Zgjidhni dosjen';

  @override
  String get emailFrom => 'Email-i juaj';

  @override
  String get mailFromUsesAccount => 'Përdor email-in tuaj të identifikuar.';

  @override
  String get recipientEmailsHelper =>
      'Marrës të shumëfishtë: ndani me presje, pikëpresje ose hapësira.';

  @override
  String get emailTo => 'Email i marrësit';

  @override
  String get messageOptional => 'Mesazh (opsionale)';

  @override
  String get passwordOptional => 'Fjalëkalimi (opsionale)';

  @override
  String get destructAfterDownload => 'Fshij pas shkarkimit';

  @override
  String get destructNo => 'Mbajeni në dispozicion';

  @override
  String get sendButton => 'Dërgo';

  @override
  String get uploading => 'Po ngarkohet…';

  @override
  String get uploadComplete => 'U krye';

  @override
  String get shareLinkTitle => 'Lidhja juaj';

  @override
  String get copyLink => 'Kopjo lidhjen';

  @override
  String get share => 'Shpërndaje';

  @override
  String get shareQrCode => 'Ndani kodin QR';

  @override
  String get uploadMore => 'Dërgo një tjetër';

  @override
  String get emailSentTitle => 'Email-et e dërguara';

  @override
  String get verifyEmailTitle => 'Verifikoni emailin tuaj';

  @override
  String get verifyCodeHint => 'Futni kodin nga emaili juaj';

  @override
  String get verifySubmit => 'Verifiko';

  @override
  String get verifyResendCode => 'Ridërgo kodin';

  @override
  String get verifyCodeSent =>
      'Një kod i ri verifikimi është dërguar në emailin tuaj.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Email-i i verifikimit mund të mos jetë dërguar';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serveri nuk mund të konfirmonte dorëzimin (shpesh SMTP konfigurohet gabimisht). Kërkojini administratorit të faqes tuaj të kontrollojë cilësimet e postës në panelin e administratorit, më pas trokitni lehtë mbi Ridërgo kodin.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Nëse nuk arrin: kontrolloni Junk/Spam dhe Promocione, prisni një minutë, konfirmoni se $email nuk ka gabime shtypi dhe më pas prekni Ridërgo.';
  }

  @override
  String get loginTitle => 'Identifikohu';

  @override
  String get signupHint =>
      'Përdorni emailin dhe fjalëkalimin e llogarisë tuaj të faqes.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Fjalëkalimi';

  @override
  String get cancel => 'Anulo';

  @override
  String get signIn => 'Identifikohu';

  @override
  String get downloadIdHint => 'ID-ja e transferimit';

  @override
  String get privateIdHint => 'ID private (opsionale)';

  @override
  String get fetchTransfer => 'Transferimi i hapur';

  @override
  String get downloadFile => 'Shkarkoni';

  @override
  String get unlockDownload => 'Zhblloko shkarkimin';

  @override
  String get downloadSaved => 'Ruajtur te Shkarkimet';

  @override
  String get errorGeneric => 'Diçka shkoi keq';

  @override
  String get errorNetwork => 'Gabim rrjeti';

  @override
  String get errorBadResponse => 'Përgjigje e papritur e serverit';

  @override
  String get termsAccept => 'Jam dakord me kushtet';

  @override
  String get settingsApiUrl => 'URL e faqes publike';

  @override
  String get settingsAccount => 'Llogaria';

  @override
  String get settingsAppearance => 'Pamja e jashtme';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistemi';

  @override
  String get themeLight => 'Drita';

  @override
  String get themeDark => 'E errët';

  @override
  String get settingsSignedIn => 'Ju jeni identifikuar.';

  @override
  String get settingsSignedOut => 'Nuk jeni identifikuar.';

  @override
  String get settingsOpenWebsite => 'Hap faqen e internetit';

  @override
  String get signUp => 'Regjistrohu';

  @override
  String get settingsLinks => 'Lidhjet';

  @override
  String get privacyPolicy => 'Politika e privatësisë';

  @override
  String get termsOfService => 'Kushtet e shërbimit';

  @override
  String get about => 'Rreth';

  @override
  String get moreApps => 'Më shumë aplikacione';

  @override
  String get settingsLanguage => 'Gjuha';

  @override
  String get languageEnglish => 'anglisht';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Dilni';

  @override
  String get deleteAccount => 'Fshi llogarinë';

  @override
  String get deleteAccountConfirmTitle => 'Të fshihet llogaria juaj?';

  @override
  String get deleteAccountConfirmBody =>
      'Kjo fshin përgjithmonë llogarinë tuaj dhe ju nxjerr jashtë. Lidhjet tuaja të transferimit do të vazhdojnë të funksionojnë, por ato nuk do të shfaqen më në historikun tuaj.';

  @override
  String get deleteAccountSuccess => 'Llogaria u fshi';

  @override
  String get deleteAccountSuccessBody => 'Llogaria juaj është hequr.';

  @override
  String get deleteAccountFailed => 'Llogaria nuk mund të fshihej';

  @override
  String get deleteAccountFailedBody =>
      'Ju lutemi provoni përsëri ose kontaktoni mbështetjen.';

  @override
  String get maxFilesReached => 'Shumë skedarë';

  @override
  String get fileTooLarge => 'Skedari shumë i madh';

  @override
  String get ipLimit => 'Shumë ngarkime nga ky rrjet';

  @override
  String get fillFields => 'Ju lutemi plotësoni fushat e kërkuara';

  @override
  String get invalidEmail => 'Email i pavlefshëm';

  @override
  String get maxRecipientsReached => 'Shumë marrës';

  @override
  String get loginRequiredTitle => 'Kërkohet identifikimi';

  @override
  String get loginRequiredBody =>
      'Ky server kërkon një llogari për të ngarkuar ose shkarkuar.';

  @override
  String get settingsSubtitle => 'Preferencat dhe llogaria e aplikacionit.';

  @override
  String get dropHeavyFile => 'Hidhni një skedar të rëndë këtu.';

  @override
  String upToTotal(String max) {
    return 'Deri në $max total';
  }

  @override
  String get removeAll => 'Hiq të gjitha';

  @override
  String get addFiles => 'Shtoni skedarë';

  @override
  String get adding => 'Po shtohet…';

  @override
  String get options => 'Opsionet';

  @override
  String get selfDestruct => 'Vetë-shkatërrohet pas shkarkimit';

  @override
  String get expiry => 'Skadimi';

  @override
  String get cancelUpload => 'Anulo ngarkimin';

  @override
  String get transferReady => 'Transferta gati!';

  @override
  String get emailSentReady => 'Email u dërgua!';

  @override
  String get shareRecipientHint => 'Ndani këtë lidhje me marrësin tuaj.';

  @override
  String get emailSentBody => 'Ne kemi njoftuar marrësit tuaj.';

  @override
  String get scanQr => 'Skanoni për të hapur lidhjen e transferimit.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'Futni kodin 4-shifror të dërguar në emailin e dërguesit tuaj.';

  @override
  String get starting => 'Duke filluar…';

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
    return '$amount MB të mbetura';
  }

  @override
  String get fillField => 'Ju lutemi plotësoni këtë fushë.';

  @override
  String get enterValidEmail => 'Fut një email të vlefshëm.';

  @override
  String get message => 'Mesazh';

  @override
  String get recipientEmail => 'Email i marrësit';

  @override
  String get active => 'Aktiv';

  @override
  String get expired => 'I skaduar';

  @override
  String get historyTitle => 'Transfertat e mia';

  @override
  String get signInToSeeTransfers => 'Hyni për të parë transferimet tuaja';

  @override
  String get signInTransfersBody =>
      'Ne përdorim emailin tuaj për të lidhur transferimet me llogarinë tuaj - nuk nevojitet fjalëkalim.';

  @override
  String get couldNotLoadTransfers => 'Transferimet nuk mund të ngarkoheshin';

  @override
  String get retry => 'Provo sërish';

  @override
  String get noTransfersYet => 'Nuk ka transferime ende';

  @override
  String get noTransfersBody =>
      'Pasi të dërgoni një skedar, ai do të shfaqet këtu.';

  @override
  String get transferDetails => 'Detajet e transferimit';

  @override
  String get filesSection => 'Skedarët';

  @override
  String get receiveTitle => 'Merrni skedarë';

  @override
  String get receiveSubtitle =>
      'Ngjit një lidhje transferimi për të shkarkuar skedarë.';

  @override
  String get pasteTooltip => 'Paste';

  @override
  String get findTransfer => 'Gjeni Transferimin';

  @override
  String get receiveScanQr => 'Skanoni QR';

  @override
  String get receiveScanQrTitle => 'Skano QR-në e transferimit';

  @override
  String get receiveScanQrHint => 'Rreshtoni kodin QR brenda kornizës.';

  @override
  String get receiveScanQrInvalid =>
      'Ky kod QR nuk është një lidhje e vlefshme transferimi.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kërkohet qasja në kamerë për të skanuar kodet QR.';

  @override
  String get receiveStepGetLink => 'Merrni lidhjen';

  @override
  String get receiveStepGetLinkBody =>
      'Kërkojini dërguesit të ndajë lidhjen e transferimit me ju.';

  @override
  String get receiveStepPaste => 'Ngjit dhe gjej';

  @override
  String get receiveStepPasteBody =>
      'Ngjitni lidhjen e mësipërme dhe trokitni lehtë mbi \"Gjeni transferimin\".';

  @override
  String get receiveStepDownload => 'Shkarko skedarët';

  @override
  String get receiveStepDownloadBody =>
      'Shikoni detajet e skedarit dhe shkarkoni gjithçka menjëherë.';

  @override
  String get lookingUpTransfer => 'Po kërkon transferim…';

  @override
  String get transferNotFound =>
      'Transferimi nuk u gjet. Kontrollo lidhjen dhe provo sërish.';

  @override
  String get transferExpired =>
      'Ky transferim ka skaduar dhe nuk është më i disponueshëm.';

  @override
  String get transferLoginRequired =>
      'Kërkohet identifikimi për të hyrë në këtë transferim.';

  @override
  String get transferBadResponse =>
      'Përgjigje e papritur e serverit. Kontrolloni lidhjen tuaj.';

  @override
  String get transferNetworkError =>
      'Gabim rrjeti. Kontrolloni lidhjen tuaj të internetit.';

  @override
  String transferLoadFailed(String error) {
    return 'Transferimi nuk mund të ngarkohej: $error';
  }

  @override
  String get passwordProtected => 'E mbrojtur me fjalëkalim';

  @override
  String get enterPassword => 'Fut fjalëkalimin';

  @override
  String get unlock => 'Zhblloko';

  @override
  String get downloading => 'Po shkarkohet…';

  @override
  String get downloadAllFiles => 'Shkarkoni të gjithë skedarët';

  @override
  String get downloadSingleFile => 'Shkarko skedarin';

  @override
  String get receiveAnother => 'Merrni një transferim tjetër';

  @override
  String get plansTitle => 'Planet';

  @override
  String get plansSubtitle =>
      'Përmirësojeni për të hequr reklamat dhe për të dërguar skedarë më të mëdhenj.';

  @override
  String get storeUnavailable => 'Dyqani i padisponueshëm';

  @override
  String get storeUnavailableBody =>
      'Blerjet përmes aplikacionit nuk ofrohen për momentin.';

  @override
  String get storeLoadingPrices => 'Çmimet po ngarkohen nga App Store…';

  @override
  String get storePricesUnavailable => 'Çmimet nuk ofrohen';

  @override
  String get storePricesPartial => 'Disa çmime nuk mund të ngarkoheshin';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded e produkteve të abonimit $total u ngarkuan.';
  }

  @override
  String get storeSetupHint =>
      'Testoni në një iPhone të vërtetë (jo Simulator), përdorni një ID Apple Sandbox dhe sigurohuni që të 6 abonimet të jenë krijuar nën ID-në e paketës së këtij aplikacioni në App Store Connect me grupin e çmimeve.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/muaj';
  }

  @override
  String get freeVersionAds =>
      'Aktualisht po përdorni versionin tonë falas me reklama';

  @override
  String get restorePurchases => 'Rivendos blerjet';

  @override
  String get plansContinue => 'Vazhdoni';

  @override
  String get planLinkRestore => 'Rivendos';

  @override
  String get termsAndConditions => 'Termat dhe kushtet';

  @override
  String get createAccountTitle => 'Krijo llogari';

  @override
  String get signUpSubtitle => 'Regjistrohu me email dhe fjalëkalim.';

  @override
  String get confirmPassword => 'Konfirmo fjalëkalimin';

  @override
  String get passwordMin8 => 'Fjalëkalimi (min 8 karaktere)';

  @override
  String get alreadyHaveAccount => 'Keni tashmë një llogari?';

  @override
  String get checkEmailTitle => 'Kontrolloni tuajin\nemail';

  @override
  String otpSentTo(String email) {
    return 'Ne dërguam një kod 6-shifror te\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifiko & Identifikohu';

  @override
  String get didntReceiveCode => 'Nuk e morët?';

  @override
  String get tryAgain => 'Provo sërish';

  @override
  String get otpExpiresHint =>
      'Kodi skadon për 5 minuta. Kontrolloni dosjen tuaj të postës së padëshiruar nëse nuk e shihni atë.';

  @override
  String get snackError => 'Gabim';

  @override
  String get snackCopied => 'E kopjuar';

  @override
  String get snackCopiedBody => 'Lidhja u kopjua në kujtesën e fragmenteve';

  @override
  String get snackWelcome => 'Mirë se vini';

  @override
  String get snackAccountCreated => 'Llogaria u krijua';

  @override
  String get snackEnterEmail => 'Ju lutemi shkruani emailin tuaj';

  @override
  String get snackEnterPassword => 'Ju lutemi shkruani fjalëkalimin tuaj';

  @override
  String get snackInvalidEmail => 'Adresë e pavlefshme emaili';

  @override
  String get snackInvalidCredentials => 'Email ose fjalëkalim i pasaktë';

  @override
  String get snackPasswordMin8 =>
      'Fjalëkalimi duhet të jetë së paku 8 karaktere';

  @override
  String get snackPasswordMismatch => 'Fjalëkalimet nuk përputhen.';

  @override
  String get snackAccountExists =>
      'Llogaria ekziston tashmë. Ju lutemi identifikohuni.';

  @override
  String get snackSignupFailed =>
      'Llogaria nuk mund të krijohej. Provo sërish.';

  @override
  String get snackEnterOtp => 'Ju lutemi shkruani kodin 6-shifror';

  @override
  String get snackOtpExpired => 'Kodi ka skaduar';

  @override
  String get snackOtpExpiredBody => 'Kërkoni një kod të ri.';

  @override
  String get snackInvalidCode => 'Kodi i pavlefshëm';

  @override
  String get snackInvalidCodeBody =>
      'Kodi është i pasaktë. Ju lutemi provoni përsëri.';

  @override
  String get snackSendCodeFailed =>
      'Kodi nuk mund të dërgohej. Kontrollo lidhjen tënde dhe provo sërish.';

  @override
  String get snackEmptyFolder => 'Dosja bosh';

  @override
  String get snackEmptyFolderBody =>
      'Nuk u gjet asnjë skedar në dosjen e zgjedhur.';

  @override
  String get snackFolderUnsupported => 'Nuk mbështetet';

  @override
  String get snackFolderUnsupportedBody =>
      'Ngarkimi i dosjeve nuk ofrohet në këtë platformë.';

  @override
  String get snackFolderReadError => 'Dosja e zgjedhur nuk mund të lexohej.';

  @override
  String get snackLimitReached => 'U arrit kufiri';

  @override
  String get snackLimitFilesBody =>
      'Disa skedarë nuk u shtuan për shkak të kufizimeve të madhësisë ose numrit të skedarëve.';

  @override
  String get snackFreePlanLimit =>
      'Plani falas lejon deri në 5 GB për transferim. Ju lutemi hiqni disa skedarë ose përmirësoni.';

  @override
  String get snackSignInEmail =>
      'Ju lutemi identifikohuni për ta dërguar me email.';

  @override
  String get snackUploadStartFailed => 'Ngarkimi nuk mund të fillonte.';

  @override
  String get snackVerifyEnterCode => 'Futni kodin 4-shifror nga emaili juaj.';

  @override
  String get snackVerifyInvalid =>
      'Kodi i pavlefshëm ose i skaduar. Kontrollo emailin dhe provo sërish.';

  @override
  String get snackVerifyResendFailed =>
      'Kodi nuk mund të ridërgohej. Provo sërish.';

  @override
  String get snackDownloadComplete => 'Shkarkimi përfundoi';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" u ruajt te Shkarkimet';
  }

  @override
  String get snackDownloadFailed => 'Shkarkimi dështoi';

  @override
  String get snackSaved => 'U ruajt';

  @override
  String get snackServerUrlUpdated =>
      'URL-ja e serverit u përditësua. Rinisni aplikacionin për të aplikuar.';

  @override
  String get snackStoreError => 'Gabim në dyqan';

  @override
  String get snackMissingProducts => 'Produktet që mungojnë';

  @override
  String get snackStoreUnavailable => 'Dyqani i padisponueshëm';

  @override
  String get snackStoreUnavailableBody =>
      'Blerjet përmes aplikacionit nuk ofrohen në këtë pajisje.';

  @override
  String get snackProductNotLoaded => 'Produkti nuk është ngarkuar ende.';

  @override
  String get snackRestoreStarted => 'Rivendosja filloi';

  @override
  String get snackRestoreStartedBody => 'Ne po kontrollojmë blerjet tuaja.';

  @override
  String get snackRestoreFailed => 'Rivendosja dështoi';

  @override
  String get snackProcessing => 'Përpunimi';

  @override
  String get snackPleaseWait => 'Ju lutemi prisni…';

  @override
  String get snackSuccess => 'Suksese';

  @override
  String get snackPurchaseCompleted => 'Blerja përfundoi.';

  @override
  String get snackPurchaseError => 'Gabim në blerje';

  @override
  String get snackPurchaseFailed => 'Blerja dështoi.';

  @override
  String get snackCanceled => 'Anuluar';

  @override
  String get snackPurchaseCanceled => 'Blerja u anulua.';

  @override
  String get snackUpload => 'Ngarko';

  @override
  String get snackVerify => 'Verifiko';

  @override
  String get doNotExpire => 'Mos skadon';

  @override
  String get hourSingular => 'orë';

  @override
  String get hourPlural => 'orë';

  @override
  String get daySingular => 'ditë';

  @override
  String get dayPlural => 'ditë';

  @override
  String get emailAddressLabel => 'ADRESA E EMAIL';

  @override
  String get passwordLabelCaps => 'FJALËKALIMI';

  @override
  String get confirmPasswordLabelCaps => 'KONFIRMO FALËkalimin';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LIDHJA OSE ID e TRANSFERIMIT';

  @override
  String get howToReceive => 'SI TË MARRNI';

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
  String get planAdsTitle => 'Plani i reklamave';

  @override
  String get planAdsBullet1 => 'Qasje në aplikacion pa reklama';

  @override
  String get planAdsBullet2 => 'Hiq të gjitha reklamat';

  @override
  String get planProTitle => 'Plani Pro';

  @override
  String get planProBullet1 => 'Dërgoni skedarë deri në 20 GB';

  @override
  String get planProBullet2 => 'Ngarkimi i shpejtë';

  @override
  String get planPremiumTitle => 'Plani Premium';

  @override
  String get planPremiumBullet1 => 'Dërgoni skedarë deri në 100 GB';

  @override
  String get planPremiumBullet2 => 'Ngarkimi super i shpejtë';

  @override
  String get planSubscriptionDisclaimer =>
      'Nuk ka periudhë prove - kërkohet abonim për të përdorur funksionalitetin shtesë të aplikacionit. Do të tarifoheni menjëherë. Mund ta anuloni në çdo kohë.';

  @override
  String get perMonth => '/ muaj';

  @override
  String get perYear => '/ vit';

  @override
  String get snackConnectionProblem =>
      'Problemi i lidhjes. Ju lutemi provoni përsëri.';

  @override
  String get networkTitle => 'Rrjeti';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Skedarët: $count · $size bajt';
  }

  @override
  String todayAt(String time) {
    return 'Sot · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Dje · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d më parë · $time';
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
    return '$sent / $total • $remaining majtas';
  }

  @override
  String get loadingShort => 'Po ngarkohet…';

  @override
  String get colorPaletteTitle => 'Paleta e ngjyrave';

  @override
  String get colorPaletteSectionBackgrounds => 'Sfondet (shkalla e bojës)';

  @override
  String get colorPaletteSectionAccent => 'Theks / Primar';

  @override
  String get colorPaletteSectionText => 'Teksti';

  @override
  String get colorPaletteSectionBorders => 'Kufij & Xham';

  @override
  String get colorPaletteSectionSemantic => 'Semantike';

  @override
  String get colorPaletteSectionLive => 'Tema e drejtpërdrejtë (aktualisht)';

  @override
  String get colorPaletteActiveHint =>
      '★ = përdoret në mënyrë aktive në ekrane';

  @override
  String get colorPaletteCopyHint =>
      'Shtypni gjatë çdo swatch për të kopjuar vlerën e tij heks.';

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
  String get settingsAppBrand => 'Ndani të mëdha\nSkedarët Video';

  @override
  String get loginEmailPasswordPrompt =>
      'Futni emailin dhe fjalëkalimin tuaj për t\'u identifikuar.';

  @override
  String get forgotPassword => 'Keni harruar fjalëkalimin?';

  @override
  String get forgotPasswordTitle => 'Rivendos fjalëkalimin';

  @override
  String get forgotPasswordBody =>
      'Futni emailin e llogarisë tuaj dhe ne do të dërgojmë një kod rivendosjeje.';

  @override
  String get forgotPasswordSubmit => 'Dërgo kodin e rivendosjes';

  @override
  String get resetPasswordTitle => 'Krijo fjalëkalim të ri';

  @override
  String get resetPasswordBody =>
      'Futni kodin 6-shifror nga emaili juaj dhe zgjidhni një fjalëkalim të ri.';

  @override
  String get resetPasswordSubmit => 'Përditëso fjalëkalimin';

  @override
  String get snackPasswordResetSent => 'Rivendos kodin u dërgua';

  @override
  String get snackPasswordResetSentBody =>
      'Kontrolloni emailin tuaj për një kod rivendosjeje 6-shifrore.';

  @override
  String get snackPasswordResetFailed =>
      'Kodi i rivendosjes nuk mund të dërgohej. Provo sërish.';

  @override
  String get snackPasswordUpdated => 'Fjalëkalimi u përditësua';

  @override
  String get snackPasswordUpdatedBody => 'Hyni me fjalëkalimin tuaj të ri.';

  @override
  String get snackPasswordResetInvalid =>
      'Kodi i rivendosjes i pavlefshëm ose i skaduar.';

  @override
  String get otpDigitLabel => 'KODI 6-SHIFOR';

  @override
  String receiveMoreFiles(int count) {
    return '+$count skedarë të tjerë';
  }
}
