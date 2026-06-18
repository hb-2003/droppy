// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Partekatu bideo-fitxategi handiak';

  @override
  String get heroAccent => 'berehala.';

  @override
  String get heroTitle => 'Bidali fitxategi astunak';

  @override
  String get splashLoading => 'Kargatzen…';

  @override
  String get navSend => 'Aginte-panela';

  @override
  String get navHome => 'Hasiera';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Jaso';

  @override
  String get navPlans => 'Planoak';

  @override
  String get navDownload => 'Deskargatu';

  @override
  String get navSettings => 'Ezarpenak';

  @override
  String get modeLink => 'Lortu esteka';

  @override
  String get modeEmail => 'Bidali posta elektronikoz';

  @override
  String get pickFiles => 'Aukeratu fitxategiak';

  @override
  String get pickFolder => 'Aukeratu karpeta';

  @override
  String get emailFrom => 'Zure posta elektronikoa';

  @override
  String get mailFromUsesAccount =>
      'Saioa hasitako helbide elektronikoa erabiltzen du.';

  @override
  String get recipientEmailsHelper =>
      'Hartzaile anitz: bereiz ezazu koma, puntu eta koma edo zuriuneekin.';

  @override
  String get emailTo => 'Hartzailearen posta elektronikoa';

  @override
  String get messageOptional => 'Mezua (aukerakoa)';

  @override
  String get passwordOptional => 'Pasahitza (aukerakoa)';

  @override
  String get destructAfterDownload => 'Ezabatu deskargatu ondoren';

  @override
  String get destructNo => 'Mantendu eskuragarri';

  @override
  String get sendButton => 'Bidali';

  @override
  String get uploading => 'Kargatzen…';

  @override
  String get uploadComplete => 'Eginda';

  @override
  String get shareLinkTitle => 'Zure esteka';

  @override
  String get copyLink => 'Kopiatu esteka';

  @override
  String get share => 'Partekatu';

  @override
  String get shareQrCode => 'Partekatu QR kodea';

  @override
  String get uploadMore => 'Beste bat bidali';

  @override
  String get emailSentTitle => 'Bidalitako mezu elektronikoak';

  @override
  String get verifyEmailTitle => 'Egiaztatu posta elektronikoa';

  @override
  String get verifyCodeHint => 'Sartu zure posta elektronikoko kodea';

  @override
  String get verifySubmit => 'Egiaztatu';

  @override
  String get verifyResendCode => 'Birbidali kodea';

  @override
  String get verifyCodeSent =>
      'Egiaztapen-kode berri bat bidali da zure posta elektronikora.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Baliteke egiaztapen-mezu elektronikoa ez bidali izana';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Zerbitzariak ezin izan du bidalketa baieztatu (askotan SMTP gaizki konfiguratuta dago). Eskatu zure guneko administratzaileari posta-ezarpenak egiaztatzeko administrazio-panelean, eta, ondoren, sakatu berriro bidali kodea.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ez bada iristen: egiaztatu Zabor/Spam eta Promozioak, itxaron minutu bat, berretsi ${email}k ez duela akatsik eta, ondoren, sakatu Bidali berriro.';
  }

  @override
  String get loginTitle => 'Hasi saioa';

  @override
  String get signupHint =>
      'Erabili zure guneko kontuko helbide elektronikoa eta pasahitza.';

  @override
  String get emailHint => 'Posta elektronikoa';

  @override
  String get passwordHint => 'Pasahitza';

  @override
  String get cancel => 'Utzi';

  @override
  String get signIn => 'Hasi saioa';

  @override
  String get downloadIdHint => 'Transferitu ID';

  @override
  String get privateIdHint => 'NAN pribatua (aukerakoa)';

  @override
  String get fetchTransfer => 'Ireki transferentzia';

  @override
  String get downloadFile => 'Deskargatu';

  @override
  String get unlockDownload => 'Desblokeatu deskarga';

  @override
  String get downloadSaved => 'Deskargan gordeta';

  @override
  String get errorGeneric => 'Zerbait gaizki joan da';

  @override
  String get errorNetwork => 'Sareko errorea';

  @override
  String get errorBadResponse => 'Ezusteko zerbitzariaren erantzuna';

  @override
  String get termsAccept => 'Baldintzak onartzen ditut';

  @override
  String get settingsApiUrl => 'Gune publikoaren URLa';

  @override
  String get settingsAccount => 'Kontua';

  @override
  String get settingsAppearance => 'Itxura';

  @override
  String get settingsTheme => 'Gaia';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Argia';

  @override
  String get themeDark => 'Iluna';

  @override
  String get settingsSignedIn => 'Saioa hasi duzu.';

  @override
  String get settingsSignedOut => 'Ez duzu saioa hasita.';

  @override
  String get settingsOpenWebsite => 'Ireki webgunea';

  @override
  String get signUp => 'Izena eman';

  @override
  String get settingsLinks => 'Estekak';

  @override
  String get privacyPolicy => 'Pribatutasun politika';

  @override
  String get termsOfService => 'Zerbitzu-baldintzak';

  @override
  String get about => 'Buruz';

  @override
  String get moreApps => 'Aplikazio gehiago';

  @override
  String get settingsLanguage => 'Hizkuntza';

  @override
  String get languageEnglish => 'ingelesa';

  @override
  String get languageHindi => 'Hindia';

  @override
  String get logout => 'Amaitu saioa';

  @override
  String get deleteAccount => 'Ezabatu kontua';

  @override
  String get deleteAccountConfirmTitle => 'Zure kontua ezabatu?';

  @override
  String get deleteAccountConfirmBody =>
      'Honek betiko ezabatzen du zure kontua eta saioa amaitzen zaitu. Zure transferentzia-estekek funtzionatzen jarraituko dute, baina ez dira gehiago zure historian agertuko.';

  @override
  String get deleteAccountSuccess => 'Kontua ezabatu da';

  @override
  String get deleteAccountSuccessBody => 'Zure kontua kendu da.';

  @override
  String get deleteAccountFailed => 'Ezin izan da kontua ezabatu';

  @override
  String get deleteAccountFailedBody =>
      'Saiatu berriro edo jarri laguntzarekin harremanetan.';

  @override
  String get maxFilesReached => 'Fitxategi gehiegi';

  @override
  String get fileTooLarge => 'Fitxategi handiegia';

  @override
  String get ipLimit => 'Kargatze gehiegi sare honetatik';

  @override
  String get fillFields => 'Mesedez, bete beharrezko eremuak';

  @override
  String get invalidEmail => 'Helbide elektroniko baliogabea';

  @override
  String get maxRecipientsReached => 'Hartzaile gehiegi';

  @override
  String get loginRequiredTitle => 'Saioa hasi behar da';

  @override
  String get loginRequiredBody =>
      'Zerbitzari honek kontu bat behar du kargatzeko edo deskargatzeko.';

  @override
  String get settingsSubtitle => 'Aplikazioaren hobespenak eta kontua.';

  @override
  String get dropHeavyFile => 'Jaregin fitxategi astun bat hemen.';

  @override
  String upToTotal(String max) {
    return 'Guztira $max arte';
  }

  @override
  String get removeAll => 'Kendu guztiak';

  @override
  String get addFiles => 'Gehitu fitxategiak';

  @override
  String get adding => 'Gehitzen…';

  @override
  String get options => 'Aukerak';

  @override
  String get selfDestruct => 'Deskargatu ondoren autosuntsitu';

  @override
  String get expiry => 'Iraungitzea';

  @override
  String get cancelUpload => 'Utzi kargatzea';

  @override
  String get transferReady => 'Transferentzia prest!';

  @override
  String get emailSentReady => 'Bidali da mezu elektronikoa!';

  @override
  String get shareRecipientHint => 'Partekatu esteka hau zure hartzailearekin.';

  @override
  String get emailSentBody => 'Zure hartzaileei jakinarazi diegu.';

  @override
  String get scanQr => 'Eskaneatu transferentzia esteka irekitzeko.';

  @override
  String get shareLinkButton => 'PARTEKATU LOTURA';

  @override
  String get verifyFourDigit =>
      'Sartu zure igorlearen posta elektronikora bidalitako lau digituko kodea.';

  @override
  String get starting => 'Abiatzen…';

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
    return '$amount MB geratzen dira';
  }

  @override
  String get fillField => 'Mesedez, bete eremu hau.';

  @override
  String get enterValidEmail => 'Sartu baliozko posta elektroniko bat.';

  @override
  String get message => 'Mezua';

  @override
  String get recipientEmail => 'Hartzailearen posta elektronikoa';

  @override
  String get active => 'Aktiboa';

  @override
  String get expired => 'Iraungi egin da';

  @override
  String get historyTitle => 'Nire transferentziak';

  @override
  String get signInToSeeTransfers => 'Hasi saioa zure transferentziak ikusteko';

  @override
  String get signInTransfersBody =>
      'Zure posta elektronikoa erabiltzen dugu transferentziak zure kontuarekin lotzeko, ez da pasahitzik behar.';

  @override
  String get couldNotLoadTransfers => 'Ezin izan dira kargatu transferentziak';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get noTransfersYet => 'Oraindik ez dago transferentziarik';

  @override
  String get noTransfersBody =>
      'Fitxategi bat bidali ondoren, hemen agertuko da.';

  @override
  String get transferDetails => 'Transferitzeko xehetasunak';

  @override
  String get filesSection => 'Fitxategiak';

  @override
  String get receiveTitle => 'Fitxategiak jaso';

  @override
  String get receiveSubtitle =>
      'Itsatsi transferentzia-esteka fitxategiak deskargatzeko.';

  @override
  String get pasteTooltip => 'Itsatsi';

  @override
  String get findTransfer => 'Bilatu Transfer';

  @override
  String get receiveScanQr => 'Eskaneatu QR';

  @override
  String get receiveScanQrTitle => 'Eskaneatu transferentzia QR';

  @override
  String get receiveScanQrHint => 'Lerrokatu QR kodea markoaren barruan.';

  @override
  String get receiveScanQrInvalid =>
      'QR kode hau ez da baliozko transferentzia-esteka bat.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kamera sarbidea behar da QR kodeak eskaneatzeko.';

  @override
  String get receiveStepGetLink => 'Lortu esteka';

  @override
  String get receiveStepGetLinkBody =>
      'Eskatu igorleari transferentzia-esteka zurekin partekatzeko.';

  @override
  String get receiveStepPaste => 'Itsatsi eta aurkitu';

  @override
  String get receiveStepPasteBody =>
      'Itsatsi goiko esteka eta sakatu \"Bilatu transferentzia\".';

  @override
  String get receiveStepDownload => 'Deskargatu fitxategiak';

  @override
  String get receiveStepDownloadBody =>
      'Ikusi fitxategiaren xehetasunak eta deskargatu guztia aldi berean.';

  @override
  String get lookingUpTransfer => 'Transferentzia bilatzen…';

  @override
  String get transferNotFound =>
      'Ez da transferentzia aurkitu. Egiaztatu esteka eta saiatu berriro.';

  @override
  String get transferExpired =>
      'Transferentzia hau iraungi da eta jada ez dago erabilgarri.';

  @override
  String get transferLoginRequired =>
      'Transferentzia honetara atzitzeko, saioa hasi behar da.';

  @override
  String get transferBadResponse =>
      'Ezusteko zerbitzariaren erantzuna. Egiaztatu zure konexioa.';

  @override
  String get transferNetworkError =>
      'Sareko errorea. Egiaztatu Interneteko konexioa.';

  @override
  String transferLoadFailed(String error) {
    return 'Ezin izan da transferentzia kargatu: $error';
  }

  @override
  String get passwordProtected => 'Pasahitz babestuta';

  @override
  String get enterPassword => 'Sartu pasahitza';

  @override
  String get unlock => 'Desblokeatu';

  @override
  String get downloading => 'Deskargatzen…';

  @override
  String get downloadAllFiles => 'Deskargatu fitxategi guztiak';

  @override
  String get downloadSingleFile => 'Deskargatu fitxategia';

  @override
  String get receiveAnother => 'Jaso beste transferentzia bat';

  @override
  String get plansTitle => 'Planoak';

  @override
  String get plansSubtitle =>
      'Berritu iragarkiak kentzeko eta fitxategi handiagoak bidaltzeko.';

  @override
  String get storeUnavailable => 'Denda ez dago erabilgarri';

  @override
  String get storeUnavailableBody =>
      'Aplikazio barruko erosketak ez daude eskuragarri une honetan.';

  @override
  String get storeLoadingPrices => 'App Store-tik prezioak kargatzen…';

  @override
  String get storePricesUnavailable => 'Prezioak ez daude eskuragarri';

  @override
  String get storePricesPartial => 'Prezio batzuk ezin izan dira kargatu';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Harpidetza-produktuen $loaded kargatu da.';
  }

  @override
  String get storeSetupHint =>
      'Probatu benetako iPhone batean (ez Simulator), erabili Sandbox Apple ID bat eta ziurtatu 6 harpidetza guztiak aplikazio honen sortaren IDarekin sortu direla App Store Connect-en prezioak ezarrita.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/hilabete';
  }

  @override
  String get freeVersionAds =>
      'Une honetan gure doako bertsioa erabiltzen ari zara iragarkiekin';

  @override
  String get restorePurchases => 'Berrezarri erosketak';

  @override
  String get plansContinue => 'Jarraitu';

  @override
  String get planLinkRestore => 'Berreskuratu';

  @override
  String get termsAndConditions => 'Baldintzak';

  @override
  String get createAccountTitle => 'Sortu kontua';

  @override
  String get signUpSubtitle => 'Eman izena e-posta eta pasahitzarekin.';

  @override
  String get confirmPassword => 'Berretsi pasahitza';

  @override
  String get passwordMin8 => 'Pasahitza (gutxienez 8 karaktere)';

  @override
  String get alreadyHaveAccount => 'Kontu bat al duzu dagoeneko?';

  @override
  String get checkEmailTitle => 'Egiaztatu zure\nposta elektronikoa';

  @override
  String otpSentTo(String email) {
    return '6 digituko kodea bidali genion\n$email';
  }

  @override
  String get verifyAndSignIn => 'Egiaztatu eta hasi saioa';

  @override
  String get didntReceiveCode => 'Ez al duzu jaso?';

  @override
  String get tryAgain => 'Saiatu berriro';

  @override
  String get otpExpiresHint =>
      'Kodea 5 minutu barru iraungiko da. Begiratu spam karpeta ez baduzu ikusten.';

  @override
  String get snackError => 'Errorea';

  @override
  String get snackCopied => 'Kopiatua';

  @override
  String get snackCopiedBody => 'Esteka arbelean kopiatu da';

  @override
  String get snackWelcome => 'Ongi etorri';

  @override
  String get snackAccountCreated => 'Kontua sortu da';

  @override
  String get snackEnterEmail => 'Mesedez, sartu zure helbide elektronikoa';

  @override
  String get snackEnterPassword => 'Mesedez, sartu zure pasahitza';

  @override
  String get snackInvalidEmail => 'Helbide elektroniko baliogabea';

  @override
  String get snackInvalidCredentials =>
      'Helbide elektronikoa edo pasahitza okerra';

  @override
  String get snackPasswordMin8 =>
      'Pasahitzak 8 karaktere izan behar ditu gutxienez';

  @override
  String get snackPasswordMismatch => 'Pasahitzak ez datoz bat.';

  @override
  String get snackAccountExists => 'Kontua badago jada. Mesedez, hasi saioa.';

  @override
  String get snackSignupFailed => 'Ezin izan da kontua sortu. Saiatu berriro.';

  @override
  String get snackEnterOtp => 'Mesedez, sartu 6 digituko kodea';

  @override
  String get snackOtpExpired => 'Kodea iraungi da';

  @override
  String get snackOtpExpiredBody => 'Mesedez, eskatu kode berri bat.';

  @override
  String get snackInvalidCode => 'Kode baliogabea';

  @override
  String get snackInvalidCodeBody =>
      'Kodea okerra da. Mesedez, saiatu berriro.';

  @override
  String get snackSendCodeFailed =>
      'Ezin izan da kodea bidali. Egiaztatu konexioa eta saiatu berriro.';

  @override
  String get snackEmptyFolder => 'Karpeta hutsa';

  @override
  String get snackEmptyFolderBody =>
      'Ez da fitxategirik aurkitu hautatutako karpetan.';

  @override
  String get snackFolderUnsupported => 'Ez da onartzen';

  @override
  String get snackFolderUnsupportedBody =>
      'Karpetak kargatzea ez dago erabilgarri plataforma honetan.';

  @override
  String get snackFolderReadError =>
      'Ezin izan da hautatutako karpeta irakurri.';

  @override
  String get snackLimitReached => 'Muga iritsi da';

  @override
  String get snackLimitFilesBody =>
      'Fitxategi batzuk ez dira gehitu tamaina edo fitxategi kopuruaren mugengatik.';

  @override
  String get snackFreePlanLimit =>
      'Doako planak transferentzia bakoitzeko 5 GB gehienez onartzen ditu. Mesedez, kendu fitxategi batzuk edo berritu.';

  @override
  String get snackSignInEmail => 'Mesedez, hasi saioa e-postaz bidaltzeko.';

  @override
  String get snackUploadStartFailed => 'Ezin izan da kargatzen hasi.';

  @override
  String get snackVerifyEnterCode =>
      'Sartu zure posta elektronikoko 4 digituko kodea.';

  @override
  String get snackVerifyInvalid =>
      'Kode baliogabea edo iraungita. Egiaztatu posta elektronikoa eta saiatu berriro.';

  @override
  String get snackVerifyResendFailed =>
      'Ezin izan da kodea berriro bidali. Saiatu berriro.';

  @override
  String get snackDownloadComplete => 'Deskarga osatuta';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" Deskargak atalean gorde da';
  }

  @override
  String get snackDownloadFailed => 'Deskargatu huts egin du';

  @override
  String get snackSaved => 'Gorde';

  @override
  String get snackServerUrlUpdated =>
      'Zerbitzariaren URLa eguneratu da. Berrabiarazi aplikazioa aplikatzeko.';

  @override
  String get snackStoreError => 'Gorde-errorea';

  @override
  String get snackMissingProducts => 'Produktuak falta dira';

  @override
  String get snackStoreUnavailable => 'Denda ez dago erabilgarri';

  @override
  String get snackStoreUnavailableBody =>
      'Aplikazio barruko erosketak ez daude erabilgarri gailu honetan.';

  @override
  String get snackProductNotLoaded => 'Produktua ez dago oraindik kargatu.';

  @override
  String get snackRestoreStarted => 'Berreskuratzea hasi da';

  @override
  String get snackRestoreStartedBody => 'Zure erosketak egiaztatzen ari gara.';

  @override
  String get snackRestoreFailed => 'Berreskuratu huts egin du';

  @override
  String get snackProcessing => 'Tramitazioa';

  @override
  String get snackPleaseWait => 'Mesedez, itxaron...';

  @override
  String get snackSuccess => 'Arrakasta';

  @override
  String get snackPurchaseCompleted => 'Erosketa amaitu da.';

  @override
  String get snackPurchaseError => 'Erosketa errorea';

  @override
  String get snackPurchaseFailed => 'Erosketak huts egin du.';

  @override
  String get snackCanceled => 'Bertan behera utzita';

  @override
  String get snackPurchaseCanceled => 'Erosketa bertan behera utzi da.';

  @override
  String get snackUpload => 'Kargatu';

  @override
  String get snackVerify => 'Egiaztatu';

  @override
  String get doNotExpire => 'Ez iraungi';

  @override
  String get hourSingular => 'ordua';

  @override
  String get hourPlural => 'orduak';

  @override
  String get daySingular => 'eguna';

  @override
  String get dayPlural => 'egunak';

  @override
  String get emailAddressLabel => 'HELBIDE POSTUA';

  @override
  String get passwordLabelCaps => 'PASAHITZA';

  @override
  String get confirmPasswordLabelCaps => 'BAIRMEZTU PASAHITZA';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'TRANSFERENTZIA LOTURA EDO ID';

  @override
  String get howToReceive => 'NOLA JASO';

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
  String get planAdsTitle => 'Iragarkien plana';

  @override
  String get planAdsBullet1 => 'Iragarkiak doan aplikaziorako sarbidea';

  @override
  String get planAdsBullet2 => 'Kendu iragarki guztiak';

  @override
  String get planProTitle => 'Pro Plana';

  @override
  String get planProBullet1 => 'Bidali 20 GB arteko fitxategiak';

  @override
  String get planProBullet2 => 'Karga azkarra';

  @override
  String get planPremiumTitle => 'Premium Plana';

  @override
  String get planPremiumBullet1 => 'Bidali 100 GB arteko fitxategiak';

  @override
  String get planPremiumBullet2 => 'Kargatze oso azkarra';

  @override
  String get planSubscriptionDisclaimer =>
      'Ez dago probaldirik — harpidetza behar da aplikazioaren funtzionalitate gehigarria erabiltzeko. Berehala kobratuko zaizu. Edonoiz bertan behera utzi dezakezu.';

  @override
  String get perMonth => '/ hilabete';

  @override
  String get perYear => '/ urtea';

  @override
  String get snackConnectionProblem =>
      'Konexio arazoa. Mesedez, saiatu berriro.';

  @override
  String get networkTitle => 'Sarea';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Fitxategiak: $count · $size byte';
  }

  @override
  String todayAt(String time) {
    return 'Gaur · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Atzo · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Duela ${days}d · $time';
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
    return '$sent / $total • $remaining ezkerrean';
  }

  @override
  String get loadingShort => 'Kargatzen…';

  @override
  String get colorPaletteTitle => 'Kolore Paleta';

  @override
  String get colorPaletteSectionBackgrounds => 'Atzeko planoak (tinta eskala)';

  @override
  String get colorPaletteSectionAccent => 'Azentua / Lehen mailakoa';

  @override
  String get colorPaletteSectionText => 'Testua';

  @override
  String get colorPaletteSectionBorders => 'Ertzak eta beira';

  @override
  String get colorPaletteSectionSemantic => 'Semantikoa';

  @override
  String get colorPaletteSectionLive => 'Zuzeneko gaia (unekoa)';

  @override
  String get colorPaletteActiveHint => '★ = Pantailetan aktiboki erabiltzen da';

  @override
  String get colorPaletteCopyHint =>
      'Luze sakatu edozein lagin bere balio hexadezimala kopiatzeko.';

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
  String get settingsAppBrand => 'Partekatu Handia\nBideo Fitxategiak';

  @override
  String get loginEmailPasswordPrompt =>
      'Sartu zure helbide elektronikoa eta pasahitza saioa hasteko.';

  @override
  String get forgotPassword => 'Pasahitza ahaztu duzu?';

  @override
  String get forgotPasswordTitle => 'Berrezarri pasahitza';

  @override
  String get forgotPasswordBody =>
      'Sartu zure kontuko helbide elektronikoa eta berrezarri kodea bidaliko dizugu.';

  @override
  String get forgotPasswordSubmit => 'Bidali berrezartzeko kodea';

  @override
  String get resetPasswordTitle => 'Sortu pasahitz berria';

  @override
  String get resetPasswordBody =>
      'Sartu zure posta elektronikoko 6 digituko kodea eta aukeratu pasahitz berri bat.';

  @override
  String get resetPasswordSubmit => 'Eguneratu pasahitza';

  @override
  String get snackPasswordResetSent => 'Berrezarri kodea bidali da';

  @override
  String get snackPasswordResetSentBody =>
      'Begiratu zure posta elektronikoa 6 digituko berrezartzeko kodea ikusteko.';

  @override
  String get snackPasswordResetFailed =>
      'Ezin izan da berrezarri kodea bidali. Saiatu berriro.';

  @override
  String get snackPasswordUpdated => 'Pasahitza eguneratu da';

  @override
  String get snackPasswordUpdatedBody => 'Hasi saioa pasahitz berriarekin.';

  @override
  String get snackPasswordResetInvalid =>
      'Berrezartzeko kodea baliogabea edo iraungi da.';

  @override
  String get otpDigitLabel => '6 ZIFFREN KODEA';

  @override
  String receiveMoreFiles(int count) {
    return '+$count fitxategi gehiago';
  }
}
