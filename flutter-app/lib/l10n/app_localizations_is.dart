// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Deildu stórum myndbandsskrám';

  @override
  String get heroAccent => 'samstundis.';

  @override
  String get heroTitle => 'Sendu þungar skrár';

  @override
  String get splashLoading => 'Hleður…';

  @override
  String get navSend => 'Mælaborð';

  @override
  String get navHome => 'Heim';

  @override
  String get navHistory => 'Saga';

  @override
  String get navReceive => 'Taka á móti';

  @override
  String get navPlans => 'Áætlanir';

  @override
  String get navDownload => 'Sækja';

  @override
  String get navSettings => 'Stillingar';

  @override
  String get modeLink => 'Fáðu tengil';

  @override
  String get modeEmail => 'Senda með tölvupósti';

  @override
  String get pickFiles => 'Veldu skrár';

  @override
  String get pickFolder => 'Veldu möppu';

  @override
  String get emailFrom => 'Netfangið þitt';

  @override
  String get mailFromUsesAccount => 'Notar innskráða netfangið þitt.';

  @override
  String get recipientEmailsHelper =>
      'Margir viðtakendur: aðskilið með kommum, semíkommum eða bilum.';

  @override
  String get emailTo => 'Netfang viðtakanda';

  @override
  String get messageOptional => 'Skilaboð (valfrjálst)';

  @override
  String get passwordOptional => 'Lykilorð (valfrjálst)';

  @override
  String get destructAfterDownload => 'Eyða eftir niðurhal';

  @override
  String get destructNo => 'Haltu tiltækum';

  @override
  String get sendButton => 'Senda';

  @override
  String get uploading => 'Hleður inn...';

  @override
  String get uploadComplete => 'Búið';

  @override
  String get shareLinkTitle => 'Hlekkurinn þinn';

  @override
  String get copyLink => 'Afritaðu tengil';

  @override
  String get share => 'Deila';

  @override
  String get shareQrCode => 'Deildu QR kóða';

  @override
  String get uploadMore => 'Sendu annan';

  @override
  String get emailSentTitle => 'Tölvupóstar sendir';

  @override
  String get verifyEmailTitle => 'Staðfestu netfangið þitt';

  @override
  String get verifyCodeHint => 'Sláðu inn kóðann úr tölvupóstinum þínum';

  @override
  String get verifySubmit => 'Staðfestu';

  @override
  String get verifyResendCode => 'Sendu kóða aftur';

  @override
  String get verifyCodeSent =>
      'Nýr staðfestingarkóði var sendur á netfangið þitt.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Staðfestingarpóstur gæti ekki hafa verið sendur';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Miðlarinn gat ekki staðfest afhendingu (oft er SMTP rangt stillt). Biddu síðustjórann þinn um að athuga póststillingar á stjórnborðinu og pikkaðu síðan á Endursenda kóða.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ef það berst ekki: athugaðu rusl/ruslpóst og kynningar, bíddu í eina mínútu, staðfestu að <<PH0>> hafi engar innsláttarvillur, pikkaðu síðan á Senda aftur.';
  }

  @override
  String get loginTitle => 'Skráðu þig inn';

  @override
  String get signupHint => 'Notaðu netfang og lykilorð síðureikningsins þíns.';

  @override
  String get emailHint => 'Tölvupóstur';

  @override
  String get passwordHint => 'Lykilorð';

  @override
  String get cancel => 'Hætta við';

  @override
  String get signIn => 'Skráðu þig inn';

  @override
  String get downloadIdHint => 'Flytja auðkenni';

  @override
  String get privateIdHint => 'Einkaauðkenni (valfrjálst)';

  @override
  String get fetchTransfer => 'Opinn flutningur';

  @override
  String get downloadFile => 'Sækja';

  @override
  String get unlockDownload => 'Aflæsa niðurhal';

  @override
  String get downloadSaved => 'Vistað í niðurhal';

  @override
  String get errorGeneric => 'Eitthvað fór úrskeiðis';

  @override
  String get errorNetwork => 'Netvilla';

  @override
  String get errorBadResponse => 'Óvænt svar netþjóns';

  @override
  String get termsAccept => 'Ég samþykki skilmálana';

  @override
  String get settingsApiUrl => 'Opinber vefslóð';

  @override
  String get settingsAccount => 'Reikningur';

  @override
  String get settingsAppearance => 'Útlit';

  @override
  String get settingsTheme => 'Þema';

  @override
  String get themeSystem => 'Kerfi';

  @override
  String get themeLight => 'Ljós';

  @override
  String get themeDark => 'Myrkur';

  @override
  String get settingsSignedIn => 'Þú ert skráður inn.';

  @override
  String get settingsSignedOut => 'Þú ert ekki skráður inn.';

  @override
  String get settingsOpenWebsite => 'Opin vefsíða';

  @override
  String get signUp => 'Skráðu þig';

  @override
  String get settingsLinks => 'Tenglar';

  @override
  String get privacyPolicy => 'Persónuverndarstefna';

  @override
  String get termsOfService => 'Þjónustuskilmálar';

  @override
  String get about => 'Um';

  @override
  String get moreApps => 'Fleiri forrit';

  @override
  String get settingsLanguage => 'Tungumál';

  @override
  String get languageEnglish => 'ensku';

  @override
  String get languageHindi => 'hindí';

  @override
  String get logout => 'Skráðu þig út';

  @override
  String get deleteAccount => 'Eyða reikningi';

  @override
  String get deleteAccountConfirmTitle => 'Eyða reikningnum þínum?';

  @override
  String get deleteAccountConfirmBody =>
      'Þetta eyðir reikningnum þínum varanlega og skráir þig út. Flutningstenglar þínir munu halda áfram að virka en þeir munu ekki lengur birtast í ferlinum þínum.';

  @override
  String get deleteAccountSuccess => 'Reikningi eytt';

  @override
  String get deleteAccountSuccessBody =>
      'Reikningurinn þinn hefur verið fjarlægður.';

  @override
  String get deleteAccountFailed => 'Gat ekki eytt reikningi';

  @override
  String get deleteAccountFailedBody =>
      'Vinsamlegast reyndu aftur eða hafðu samband við þjónustudeild.';

  @override
  String get maxFilesReached => 'Of margar skrár';

  @override
  String get fileTooLarge => 'Skrá of stór';

  @override
  String get ipLimit => 'Of mörg upphleðsla frá þessu neti';

  @override
  String get fillFields => 'Vinsamlegast fylltu út nauðsynlega reiti';

  @override
  String get invalidEmail => 'Ógilt netfang';

  @override
  String get maxRecipientsReached => 'Of margir viðtakendur';

  @override
  String get loginRequiredTitle => 'Innskráning krafist';

  @override
  String get loginRequiredBody =>
      'Þessi þjónn krefst reiknings til að hlaða upp eða hlaða niður.';

  @override
  String get settingsSubtitle => 'App óskir og reikningur.';

  @override
  String get dropHeavyFile => 'Slepptu þungri skrá hér.';

  @override
  String upToTotal(String max) {
    return 'Allt að <<PH0>> samtals';
  }

  @override
  String get removeAll => 'Fjarlægðu allt';

  @override
  String get addFiles => 'Bæta við skrám';

  @override
  String get adding => 'Bætir við...';

  @override
  String get options => 'Valmöguleikar';

  @override
  String get selfDestruct => 'Sjálfseyðing eftir niðurhal';

  @override
  String get expiry => 'Rennur út';

  @override
  String get cancelUpload => 'Hætta við upphleðslu';

  @override
  String get transferReady => 'Flutningur tilbúinn!';

  @override
  String get emailSentReady => 'Tölvupóstur sendur!';

  @override
  String get shareRecipientHint => 'Deildu þessum tengli með viðtakanda þínum.';

  @override
  String get emailSentBody => 'Við höfum látið viðtakanda/viðtakendur vita.';

  @override
  String get scanQr => 'Skannaðu til að opna flutningstengilinn.';

  @override
  String get shareLinkButton => 'DEILA TENGLI';

  @override
  String get verifyFourDigit =>
      'Sláðu inn 4 stafa kóðann sem sendur var á tölvupóstfang sendanda.';

  @override
  String get starting => 'Er að byrja...';

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
    return '<<PH0>> MB eftir';
  }

  @override
  String get fillField => 'Vinsamlegast fylltu út þennan reit.';

  @override
  String get enterValidEmail => 'Sláðu inn gilt netfang.';

  @override
  String get message => 'Skilaboð';

  @override
  String get recipientEmail => 'Netfang viðtakanda';

  @override
  String get active => 'Virkur';

  @override
  String get expired => 'Útrunnið';

  @override
  String get historyTitle => 'Flutningarnir mínir';

  @override
  String get signInToSeeTransfers =>
      'Skráðu þig inn til að sjá millifærslurnar þínar';

  @override
  String get signInTransfersBody =>
      'Við notum tölvupóstinn þinn til að tengja millifærslur við reikninginn þinn - ekkert lykilorð þarf.';

  @override
  String get couldNotLoadTransfers => 'Gat ekki hlaðið millifærslur';

  @override
  String get retry => 'Reyndu aftur';

  @override
  String get noTransfersYet => 'Engar millifærslur ennþá';

  @override
  String get noTransfersBody => 'Þegar þú hefur sent skrá birtist hún hér.';

  @override
  String get transferDetails => 'Flutningaupplýsingar';

  @override
  String get filesSection => 'Skrár';

  @override
  String get receiveTitle => 'Fáðu skrár';

  @override
  String get receiveSubtitle =>
      'Límdu flutningstengil til að hlaða niður skrám.';

  @override
  String get pasteTooltip => 'Líma';

  @override
  String get findTransfer => 'Finndu Transfer';

  @override
  String get receiveScanQr => 'Skannaðu QR';

  @override
  String get receiveScanQrTitle => 'Skanna flytja QR';

  @override
  String get receiveScanQrHint => 'Stilltu QR kóðann inni í rammanum.';

  @override
  String get receiveScanQrInvalid =>
      'Þessi QR-kóði er ekki gildur flutningstengur.';

  @override
  String get receiveScanQrCameraDenied =>
      'Aðgangur að myndavél er nauðsynlegur til að skanna QR kóða.';

  @override
  String get receiveStepGetLink => 'Fáðu hlekkinn';

  @override
  String get receiveStepGetLinkBody =>
      'Biddu sendanda um að deila flutningstenglinum með þér.';

  @override
  String get receiveStepPaste => 'Límdu og finndu';

  @override
  String get receiveStepPasteBody =>
      'Límdu hlekkinn hér að ofan og pikkaðu á „Finna flutning“.';

  @override
  String get receiveStepDownload => 'Sækja skrár';

  @override
  String get receiveStepDownloadBody =>
      'Sjáðu skráarupplýsingar og halaðu niður öllu í einu.';

  @override
  String get lookingUpTransfer => 'Leitar upp flutning...';

  @override
  String get transferNotFound =>
      'Flutningur fannst ekki. Athugaðu hlekkinn og reyndu aftur.';

  @override
  String get transferExpired =>
      'Þessi flutningur er útrunninn og er ekki lengur tiltækur.';

  @override
  String get transferLoginRequired =>
      'Innskráning er nauðsynleg til að fá aðgang að þessum flutningi.';

  @override
  String get transferBadResponse =>
      'Óvænt svar netþjóns. Athugaðu tenginguna þína.';

  @override
  String get transferNetworkError => 'Netvilla. Athugaðu nettenginguna þína.';

  @override
  String transferLoadFailed(String error) {
    return 'Gat ekki hlaðið flutning: <<PH0>>';
  }

  @override
  String get passwordProtected => 'Lykilorð varið';

  @override
  String get enterPassword => 'Sláðu inn lykilorð';

  @override
  String get unlock => 'Opnaðu';

  @override
  String get downloading => 'Sækir…';

  @override
  String get downloadAllFiles => 'Sækja allar skrár';

  @override
  String get downloadSingleFile => 'Sækja skrá';

  @override
  String get receiveAnother => 'Fáðu aðra millifærslu';

  @override
  String get plansTitle => 'Áætlanir';

  @override
  String get plansSubtitle =>
      'Uppfærðu til að fjarlægja auglýsingar og senda stærri skrár.';

  @override
  String get storeUnavailable => 'Verslun ekki tiltæk';

  @override
  String get storeUnavailableBody =>
      'Innkaup í forriti eru ekki í boði eins og er.';

  @override
  String get storeLoadingPrices => 'Hleður verð úr App Store…';

  @override
  String get storePricesUnavailable => 'Verð ekki í boði';

  @override
  String get storePricesPartial => 'Ekki tókst að hlaða sum verð';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '<<PH0>> af <<PH1>> áskriftarvörum hlaðnar.';
  }

  @override
  String get storeSetupHint =>
      'Prófaðu á alvöru iPhone (ekki Simulator), notaðu Sandbox Apple ID og tryggðu að allar 6 áskriftirnar séu búnar til undir búntaauðkenni þessa forrits í App Store Tengstu við verðsett.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<PH0>>/mánuði';
  }

  @override
  String get freeVersionAds =>
      'Eins og er ertu að nota ókeypis útgáfuna okkar með auglýsingum';

  @override
  String get restorePurchases => 'Endurheimta kaup';

  @override
  String get plansContinue => 'Halda áfram';

  @override
  String get planLinkRestore => 'Endurheimta';

  @override
  String get termsAndConditions => 'Skilmálar og skilyrði';

  @override
  String get createAccountTitle => 'Búðu til reikning';

  @override
  String get signUpSubtitle => 'Skráðu þig með tölvupósti og lykilorði.';

  @override
  String get confirmPassword => 'Staðfestu lykilorð';

  @override
  String get passwordMin8 => 'Lykilorð (lágmark 8 stafir)';

  @override
  String get alreadyHaveAccount => 'Ertu nú þegar með reikning?';

  @override
  String get checkEmailTitle => 'Athugaðu þitt\ntölvupósti';

  @override
  String otpSentTo(String email) {
    return 'Við sendum 6 stafa kóða til\n<<PH0>>';
  }

  @override
  String get verifyAndSignIn => 'Staðfestu og skráðu þig inn';

  @override
  String get didntReceiveCode => 'Fékkstu það ekki?';

  @override
  String get tryAgain => 'Reyndu aftur';

  @override
  String get otpExpiresHint =>
      'Kóðinn rennur út eftir 5 mínútur. Athugaðu ruslpóstmöppuna þína ef þú sérð hana ekki.';

  @override
  String get snackError => 'Villa';

  @override
  String get snackCopied => 'Afritað';

  @override
  String get snackCopiedBody => 'Tengill afritaður á klippiborð';

  @override
  String get snackWelcome => 'Verið velkomin';

  @override
  String get snackAccountCreated => 'Reikningur búinn til';

  @override
  String get snackEnterEmail => 'Vinsamlegast sláðu inn netfangið þitt';

  @override
  String get snackEnterPassword => 'Vinsamlegast sláðu inn lykilorðið þitt';

  @override
  String get snackInvalidEmail => 'Ógilt netfang';

  @override
  String get snackInvalidCredentials => 'Rangt netfang eða lykilorð';

  @override
  String get snackPasswordMin8 =>
      'Lykilorð verður að vera að minnsta kosti 8 stafir';

  @override
  String get snackPasswordMismatch => 'Lykilorð passa ekki saman.';

  @override
  String get snackAccountExists =>
      'Reikningur er þegar til. Vinsamlegast skráðu þig inn.';

  @override
  String get snackSignupFailed => 'Gat ekki búið til reikning. Reyndu aftur.';

  @override
  String get snackEnterOtp => 'Vinsamlegast sláðu inn 6 stafa kóðann';

  @override
  String get snackOtpExpired => 'Kóði rann út';

  @override
  String get snackOtpExpiredBody => 'Vinsamlegast biðjið um nýjan kóða.';

  @override
  String get snackInvalidCode => 'Ógildur kóði';

  @override
  String get snackInvalidCodeBody =>
      'Kóðinn er rangur. Vinsamlegast reyndu aftur.';

  @override
  String get snackSendCodeFailed =>
      'Gat ekki sent kóða. Athugaðu tenginguna þína og reyndu aftur.';

  @override
  String get snackEmptyFolder => 'Tóm mappa';

  @override
  String get snackEmptyFolderBody => 'Engar skrár fundust í valinni möppu.';

  @override
  String get snackFolderUnsupported => 'Ekki stutt';

  @override
  String get snackFolderUnsupportedBody =>
      'Ekki er hægt að hlaða upp möppum á þessum vettvangi.';

  @override
  String get snackFolderReadError => 'Gat ekki lesið valda möppu.';

  @override
  String get snackLimitReached => 'Takmarki náð';

  @override
  String get snackLimitFilesBody =>
      'Sumum skrám var ekki bætt við vegna takmarkana á stærð eða skráafjölda.';

  @override
  String get snackFreePlanLimit =>
      'Ókeypis áætlun leyfir allt að 5GB á hvern flutning. Vinsamlegast fjarlægðu einhverjar skrár eða uppfærðu.';

  @override
  String get snackSignInEmail =>
      'Vinsamlegast skráðu þig inn til að senda með tölvupósti.';

  @override
  String get snackUploadStartFailed => 'Gat ekki byrjað að hlaða upp.';

  @override
  String get snackVerifyEnterCode =>
      'Sláðu inn 4 stafa kóðann úr tölvupóstinum þínum.';

  @override
  String get snackVerifyInvalid =>
      'Ógildur eða útrunninn kóði. Athugaðu tölvupóstinn og reyndu aftur.';

  @override
  String get snackVerifyResendFailed =>
      'Gat ekki sent kóða aftur. Reyndu aftur.';

  @override
  String get snackDownloadComplete => 'Niðurhali lokið';

  @override
  String snackDownloadSaved(String filename) {
    return '\"<<PH0>>\" vistað í niðurhali';
  }

  @override
  String get snackDownloadFailed => 'Niðurhal mistókst';

  @override
  String get snackSaved => 'Vistað';

  @override
  String get snackServerUrlUpdated =>
      'Vefslóð netþjóns uppfærð. Endurræstu forritið til að sækja um.';

  @override
  String get snackStoreError => 'Villa í verslun';

  @override
  String get snackMissingProducts => 'Vörur vantar';

  @override
  String get snackStoreUnavailable => 'Verslun ekki tiltæk';

  @override
  String get snackStoreUnavailableBody =>
      'Innkaup í forriti eru ekki í boði á þessu tæki.';

  @override
  String get snackProductNotLoaded => 'Varan er ekki hlaðin enn.';

  @override
  String get snackRestoreStarted => 'Endurheimt hófst';

  @override
  String get snackRestoreStartedBody => 'Við erum að athuga innkaupin þín.';

  @override
  String get snackRestoreFailed => 'Endurheimt mistókst';

  @override
  String get snackProcessing => 'Vinnsla';

  @override
  String get snackPleaseWait => 'Vinsamlegast bíddu…';

  @override
  String get snackSuccess => 'Árangur';

  @override
  String get snackPurchaseCompleted => 'Kaup lokið.';

  @override
  String get snackPurchaseError => 'Villa við kaup';

  @override
  String get snackPurchaseFailed => 'Kaup mistókst.';

  @override
  String get snackCanceled => 'Hætt við';

  @override
  String get snackPurchaseCanceled => 'Hætt við kaup.';

  @override
  String get snackUpload => 'Hlaða upp';

  @override
  String get snackVerify => 'Staðfestu';

  @override
  String get doNotExpire => 'Ekki renna út';

  @override
  String get hourSingular => 'klukkustund';

  @override
  String get hourPlural => 'klukkustundir';

  @override
  String get daySingular => 'dag';

  @override
  String get dayPlural => 'daga';

  @override
  String get emailAddressLabel => 'NETVÖL';

  @override
  String get passwordLabelCaps => 'LYKILORÐ';

  @override
  String get confirmPasswordLabelCaps => 'STEFNA LYKILORÐ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'FLYTJA TENGILL EÐA auðkenni';

  @override
  String get howToReceive => 'HVERNIG Á AÐ MÓTA';

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
  String get planAdsTitle => 'Auglýsingaáætlun';

  @override
  String get planAdsBullet1 => 'Aðgangur að ókeypis auglýsingaforriti';

  @override
  String get planAdsBullet2 => 'Fjarlægðu allar auglýsingar';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Sendu skrár allt að 20GB';

  @override
  String get planProBullet2 => 'Hratt upphleðsla';

  @override
  String get planPremiumTitle => 'Premium áætlun';

  @override
  String get planPremiumBullet1 => 'Sendu skrár allt að 100GB';

  @override
  String get planPremiumBullet2 => 'Ofur hröð upphleðsla';

  @override
  String get planSubscriptionDisclaimer =>
      'Enginn prufutími - áskrift er nauðsynleg til að nota viðbótarvirkni appsins. Þú verður rukkaður strax. Þú getur hætt við hvenær sem er.';

  @override
  String get perMonth => '/ mánuði';

  @override
  String get perYear => '/ ári';

  @override
  String get snackConnectionProblem =>
      'Tengingarvandamál. Vinsamlegast reyndu aftur.';

  @override
  String get networkTitle => 'Net';

  @override
  String transferIdLabel(String id) {
    return 'Auðkenni: <<PH0>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Skrár: <<PH0>> · <<PH1>> bæti';
  }

  @override
  String todayAt(String time) {
    return 'Í dag · <<PH0>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'Í gær · <<PH0>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '<<PH0>>d. síðan · <<PH1>>';
  }

  @override
  String dateAt(String date, String time) {
    return '<<PH0>> · <<PH1>>';
  }

  @override
  String mbAmount(String amount) {
    return '<<PH0>> MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '<<PH0>> / <<PH1>> • <<PH2>> vinstri';
  }

  @override
  String get loadingShort => 'Hleður…';

  @override
  String get colorPaletteTitle => 'Litapalletta';

  @override
  String get colorPaletteSectionBackgrounds => 'Bakgrunnur (blekkvarði)';

  @override
  String get colorPaletteSectionAccent => 'Hreimur / aðal';

  @override
  String get colorPaletteSectionText => 'Texti';

  @override
  String get colorPaletteSectionBorders => 'Borders & Gler';

  @override
  String get colorPaletteSectionSemantic => 'Merkingarfræði';

  @override
  String get colorPaletteSectionLive => 'Lifandi þema (núverandi)';

  @override
  String get colorPaletteActiveHint => '★ = virkur notaður á skjám';

  @override
  String get colorPaletteCopyHint =>
      'Ýttu lengi á hvaða sýni sem er til að afrita hex gildi þess.';

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
  String get settingsAppBrand => 'Deila Large\nVídeó skrár';

  @override
  String get loginEmailPasswordPrompt =>
      'Sláðu inn netfangið þitt og lykilorð til að skrá þig inn.';

  @override
  String get forgotPassword => 'Gleymt lykilorð?';

  @override
  String get forgotPasswordTitle => 'Endurstilla lykilorð';

  @override
  String get forgotPasswordBody =>
      'Sláðu inn netfang reikningsins þíns og við munum senda endurstillingarkóða.';

  @override
  String get forgotPasswordSubmit => 'Sendu endurstillingarkóða';

  @override
  String get resetPasswordTitle => 'Búðu til nýtt lykilorð';

  @override
  String get resetPasswordBody =>
      'Sláðu inn 6 stafa kóðann úr tölvupóstinum þínum og veldu nýtt lykilorð.';

  @override
  String get resetPasswordSubmit => 'Uppfærðu lykilorð';

  @override
  String get snackPasswordResetSent => 'Endurstilla kóða sendur';

  @override
  String get snackPasswordResetSentBody =>
      'Athugaðu tölvupóstinn þinn fyrir 6 stafa endurstillingarkóða.';

  @override
  String get snackPasswordResetFailed =>
      'Gat ekki sent endurstillingarkóða. Reyndu aftur.';

  @override
  String get snackPasswordUpdated => 'Lykilorð uppfært';

  @override
  String get snackPasswordUpdatedBody =>
      'Skráðu þig inn með nýja lykilorðinu þínu.';

  @override
  String get snackPasswordResetInvalid =>
      'Ógildur eða útrunninn endurstillingarkóði.';

  @override
  String get otpDigitLabel => '6-STAFA KÓÐI';

  @override
  String receiveMoreFiles(int count) {
    return '+<<PH0>> fleiri skrár';
  }
}
