// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Zdieľajte veľké video súbory';

  @override
  String get heroAccent => 'okamžite.';

  @override
  String get heroTitle => 'Posielajte ťažké súbory';

  @override
  String get splashLoading => 'Načítava sa...';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Domov';

  @override
  String get navHistory => 'História';

  @override
  String get navReceive => 'Prijať';

  @override
  String get navPlans => 'Plány';

  @override
  String get navDownload => 'Stiahnuť';

  @override
  String get navSettings => 'Nastavenia';

  @override
  String get modeLink => 'Získajte odkaz';

  @override
  String get modeEmail => 'Poslať emailom';

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
  String get driveTitle => 'Google Drive';

  @override
  String get driveSubtitle =>
      'Back up files to your Drive or download files you saved from this app.';

  @override
  String get driveBackup => 'Back up to Drive';

  @override
  String get driveBackupDesc =>
      'Pick files on this device and upload to your Google Drive';

  @override
  String get driveDownload => 'Download from Drive';

  @override
  String get driveDownloadDesc =>
      'Download files you previously backed up with this app';

  @override
  String get drivePickFilesHint =>
      'Choose one or more files to back up to Google Drive.';

  @override
  String get driveStartBackup => 'Back up now';

  @override
  String get driveStartDownload => 'Download to device';

  @override
  String get driveYourFiles => 'Your backed-up files';

  @override
  String get driveNoFiles => 'No files in Drive yet. Back up some files first.';

  @override
  String get driveBackingUp => 'Backing up…';

  @override
  String get driveDownloading => 'Downloading…';

  @override
  String driveUploadingFile(int current, int total) {
    return 'Uploading file $current of $total';
  }

  @override
  String get driveBackupDone => 'Backed up';

  @override
  String get driveBackupDoneBody => 'Your files are saved to Google Drive.';

  @override
  String get driveUploadFailed =>
      'Could not upload to Google Drive. Try again.';

  @override
  String get driveListFailed => 'Could not load files from Google Drive.';

  @override
  String get driveDownloadFailed => 'Could not download from Google Drive.';

  @override
  String get driveComplete => 'Done';

  @override
  String get driveDone => 'Back';

  @override
  String get driveSignOut => 'Sign out of Google';

  @override
  String driveSignedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get driveSetupTitle => 'Google Drive not configured';

  @override
  String get driveSetupBody =>
      'Add Google OAuth client IDs when building the app (see drive_config.dart).';

  @override
  String get driveOpen => 'Google Drive';

  @override
  String get driveOpenDesc => 'Back up or download your files';

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
  String get pickFiles => 'Vyberte súbory';

  @override
  String get pickFolder => 'Vyberte priečinok';

  @override
  String get emailFrom => 'Váš email';

  @override
  String get mailFromUsesAccount => 'Používa váš prihlásený e-mail.';

  @override
  String get recipientEmailsHelper =>
      'Viacerí príjemcovia: oddeľte ich čiarkami, bodkočiarkami alebo medzerami.';

  @override
  String get emailTo => 'E-mail príjemcu';

  @override
  String get messageOptional => 'Správa (voliteľné)';

  @override
  String get passwordOptional => 'Heslo (voliteľné)';

  @override
  String get destructAfterDownload => 'Po stiahnutí vymazať';

  @override
  String get destructNo => 'Majte k dispozícii';

  @override
  String get sendButton => 'Odoslať';

  @override
  String get uploading => 'Nahráva sa…';

  @override
  String get uploadComplete => 'Hotovo';

  @override
  String get shareLinkTitle => 'Váš odkaz';

  @override
  String get copyLink => 'Kopírovať odkaz';

  @override
  String get share => 'zdieľať';

  @override
  String get shareQrCode => 'Zdieľajte QR kód';

  @override
  String get uploadMore => 'Pošlite ďalšiu';

  @override
  String get emailSentTitle => 'E-maily odoslané';

  @override
  String get verifyEmailTitle => 'Overte svoj e-mail';

  @override
  String get verifyCodeHint => 'Zadajte kód z vášho e-mailu';

  @override
  String get verifySubmit => 'Overiť';

  @override
  String get verifyResendCode => 'Znova odoslať kód';

  @override
  String get verifyCodeSent => 'Na váš e-mail bol odoslaný nový overovací kód.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Verifikačný e-mail možno nebol odoslaný';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Server nemohol potvrdiť doručenie (SMTP je často nesprávne nakonfigurovaný). Požiadajte správcu lokality, aby skontroloval nastavenia pošty na paneli správcu, a potom klepnite na Znovu odoslať kód.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ak nepríde: skontrolujte Nevyžiadanú poštu/Spam a propagácie, počkajte minútu, uistite sa, že $email neobsahuje preklepy, a potom klepnite na Znova odoslať.';
  }

  @override
  String get loginTitle => 'Prihláste sa';

  @override
  String get signupHint => 'Použite e-mail a heslo svojho účtu na stránke.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'heslo';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get signIn => 'Prihláste sa';

  @override
  String get downloadIdHint => 'ID prevodu';

  @override
  String get privateIdHint => 'Súkromné ​​​​ID (voliteľné)';

  @override
  String get fetchTransfer => 'Otvorený prevod';

  @override
  String get downloadFile => 'Stiahnuť';

  @override
  String get unlockDownload => 'Odomknúť sťahovanie';

  @override
  String get downloadSaved => 'Uložené do priečinka Stiahnuté súbory';

  @override
  String get errorGeneric => 'Niečo sa pokazilo';

  @override
  String get errorNetwork => 'Chyba siete';

  @override
  String get errorBadResponse => 'Neočakávaná odpoveď servera';

  @override
  String get termsAccept => 'Súhlasím s podmienkami';

  @override
  String get settingsApiUrl => 'Adresa URL verejnej stránky';

  @override
  String get settingsAccount => 'účtu';

  @override
  String get settingsAppearance => 'Vzhľad';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get themeSystem => 'Systém';

  @override
  String get themeLight => 'Svetlo';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get settingsSignedIn => 'Ste prihlásení.';

  @override
  String get settingsSignedOut => 'Nie ste prihlásení.';

  @override
  String get settingsOpenWebsite => 'Otvorte webovú stránku';

  @override
  String get signUp => 'Zaregistrujte sa';

  @override
  String get settingsLinks => 'Odkazy';

  @override
  String get privacyPolicy => 'Zásady ochrany osobných údajov';

  @override
  String get termsOfService => 'Zmluvné podmienky';

  @override
  String get about => 'O';

  @override
  String get moreApps => 'Viac aplikácií';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get languageEnglish => 'angličtina';

  @override
  String get languageHindi => 'hindčina';

  @override
  String get logout => 'Odhláste sa';

  @override
  String get deleteAccount => 'Odstrániť účet';

  @override
  String get deleteAccountConfirmTitle => 'Chcete odstrániť svoj účet?';

  @override
  String get deleteAccountConfirmBody =>
      'Týmto sa natrvalo odstráni váš účet a odhlásite sa. Vaše odkazy na prenos budú naďalej fungovať, ale už sa nebudú zobrazovať vo vašej histórii.';

  @override
  String get deleteAccountSuccess => 'Účet bol odstránený';

  @override
  String get deleteAccountSuccessBody => 'Váš účet bol odstránený.';

  @override
  String get deleteAccountFailed => 'Účet sa nepodarilo odstrániť';

  @override
  String get deleteAccountFailedBody =>
      'Skúste to znova alebo kontaktujte podporu.';

  @override
  String get maxFilesReached => 'Príliš veľa súborov';

  @override
  String get fileTooLarge => 'Súbor je príliš veľký';

  @override
  String get ipLimit => 'Príliš veľa nahrávaní z tejto siete';

  @override
  String get fillFields => 'Vyplňte prosím povinné polia';

  @override
  String get invalidEmail => 'Neplatný email';

  @override
  String get maxRecipientsReached => 'Príliš veľa príjemcov';

  @override
  String get loginRequiredTitle => 'Vyžaduje sa prihlásenie';

  @override
  String get loginRequiredBody =>
      'Tento server vyžaduje na nahranie alebo stiahnutie účet.';

  @override
  String get settingsSubtitle => 'Predvoľby aplikácie a účet.';

  @override
  String get dropHeavyFile => 'Sem vložte ťažký súbor.';

  @override
  String upToTotal(String max) {
    return 'Celkovo až do $max';
  }

  @override
  String get removeAll => 'Odstráňte všetky';

  @override
  String get addFiles => 'Pridať súbory';

  @override
  String get adding => 'Pridáva sa…';

  @override
  String get options => 'Možnosti';

  @override
  String get selfDestruct => 'Samodeštrukcia po stiahnutí';

  @override
  String get expiry => 'Expirácia';

  @override
  String get cancelUpload => 'Zrušiť nahrávanie';

  @override
  String get transferReady => 'Presun pripravený!';

  @override
  String get emailSentReady => 'Email odoslaný!';

  @override
  String get shareRecipientHint => 'Zdieľajte tento odkaz so svojím príjemcom.';

  @override
  String get emailSentBody => 'Upozornili sme vašich príjemcov.';

  @override
  String get scanQr => 'Skenovaním otvoríte prepojenie na prenos.';

  @override
  String get shareLinkButton => 'ZDIEĽAŤ ODKAZ';

  @override
  String get verifyFourDigit =>
      'Zadajte 4-ciferný kód odoslaný na váš e-mail odosielateľa.';

  @override
  String get starting => 'Začína sa…';

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
    return 'Zostáva $amount MB';
  }

  @override
  String get fillField => 'Vyplňte toto pole.';

  @override
  String get enterValidEmail => 'Zadajte platný e-mail.';

  @override
  String get message => 'Správa';

  @override
  String get recipientEmail => 'E-mail príjemcu';

  @override
  String get active => 'Aktívne';

  @override
  String get expired => 'Platnosť vypršala';

  @override
  String get historyTitle => 'Moje prevody';

  @override
  String get signInToSeeTransfers =>
      'Ak chcete zobraziť svoje prevody, prihláste sa';

  @override
  String get signInTransfersBody =>
      'Váš e-mail používame na prepojenie prevodov s vaším účtom – nepotrebujete žiadne heslo.';

  @override
  String get couldNotLoadTransfers => 'Prevody sa nepodarilo načítať';

  @override
  String get retry => 'Skúste to znova';

  @override
  String get noTransfersYet => 'Zatiaľ žiadne prevody';

  @override
  String get noTransfersBody => 'Keď odošlete súbor, zobrazí sa tu.';

  @override
  String get transferDetails => 'Podrobnosti o prevode';

  @override
  String get filesSection => 'Súbory';

  @override
  String get receiveTitle => 'Prijímať súbory';

  @override
  String get receiveSubtitle =>
      'Ak chcete stiahnuť súbory, vložte odkaz na prenos.';

  @override
  String get pasteTooltip => 'Vložiť';

  @override
  String get findTransfer => 'Nájdite Prenos';

  @override
  String get receiveScanQr => 'Naskenujte QR kód';

  @override
  String get receiveScanQrTitle => 'Skenovanie prenosu QR';

  @override
  String get receiveScanQrHint => 'Zarovnajte QR kód vo vnútri rámu.';

  @override
  String get receiveScanQrInvalid =>
      'Tento QR kód nie je platný prenosový odkaz.';

  @override
  String get receiveScanQrCameraDenied =>
      'Na skenovanie QR kódov je potrebný prístup k fotoaparátu.';

  @override
  String get receiveStepGetLink => 'Získajte odkaz';

  @override
  String get receiveStepGetLinkBody =>
      'Požiadajte odosielateľa, aby s vami zdieľal odkaz na prenos.';

  @override
  String get receiveStepPaste => 'Prilepiť a nájsť';

  @override
  String get receiveStepPasteBody =>
      'Prilepte vyššie uvedený odkaz a klepnite na „Nájsť prenos“.';

  @override
  String get receiveStepDownload => 'Stiahnite si súbory';

  @override
  String get receiveStepDownloadBody =>
      'Pozrite si podrobnosti o súbore a stiahnite si všetko naraz.';

  @override
  String get lookingUpTransfer => 'Hľadá sa prevod…';

  @override
  String get transferNotFound =>
      'Prenos sa nenašiel. Skontrolujte odkaz a skúste to znova.';

  @override
  String get transferExpired =>
      'Platnosť tohto prevodu vypršala a už nie je k dispozícii.';

  @override
  String get transferLoginRequired =>
      'Na prístup k tomuto prenosu sa vyžaduje prihlásenie.';

  @override
  String get transferBadResponse =>
      'Neočakávaná odpoveď servera. Skontrolujte pripojenie.';

  @override
  String get transferNetworkError =>
      'Chyba siete. Skontrolujte svoje internetové pripojenie.';

  @override
  String transferLoadFailed(String error) {
    return 'Nepodarilo sa načítať prenos: $error';
  }

  @override
  String get passwordProtected => 'Chránené heslom';

  @override
  String get enterPassword => 'Zadajte heslo';

  @override
  String get unlock => 'Odomknúť';

  @override
  String get downloading => 'Sťahuje sa…';

  @override
  String get downloadAllFiles => 'Stiahnite si všetky súbory';

  @override
  String get downloadSingleFile => 'Stiahnite si súbor';

  @override
  String get receiveAnother => 'Prijať ďalší prevod';

  @override
  String get plansTitle => 'Plány';

  @override
  String get plansSubtitle =>
      'Inovujte na odstránenie reklám a odosielanie väčších súborov.';

  @override
  String get storeUnavailable => 'Obchod nedostupný';

  @override
  String get storeUnavailableBody =>
      'Nákupy v aplikácii nie sú momentálne k dispozícii.';

  @override
  String get storeLoadingPrices => 'Načítavajú sa ceny z App Store…';

  @override
  String get storePricesUnavailable => 'Ceny nedostupné';

  @override
  String get storePricesPartial => 'Niektoré ceny sa nepodarilo načítať';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Načítané produkty s odberom $loaded z $total.';
  }

  @override
  String get storeSetupHint =>
      'Otestujte na skutočnom iPhone (nie na simulátore), použite Sandbox Apple ID a uistite sa, že všetkých 6 predplatných je vytvorených pod ID balíka tejto aplikácie v App Store Connect s nastavenou cenou.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mesiac';
  }

  @override
  String get freeVersionAds =>
      'V súčasnosti používate našu bezplatnú verziu s reklamami';

  @override
  String get restorePurchases => 'Obnoviť nákupy';

  @override
  String get plansContinue => 'Pokračovať';

  @override
  String get planLinkRestore => 'Obnoviť';

  @override
  String get termsAndConditions => 'Podmienky';

  @override
  String get createAccountTitle => 'Vytvoriť účet';

  @override
  String get signUpSubtitle => 'Zaregistrujte sa pomocou e-mailu a hesla.';

  @override
  String get confirmPassword => 'Potvrďte heslo';

  @override
  String get passwordMin8 => 'Heslo (min. 8 znakov)';

  @override
  String get alreadyHaveAccount => 'Už máte účet?';

  @override
  String get checkEmailTitle => 'Skontrolujte svoje\nemail';

  @override
  String otpSentTo(String email) {
    return 'Poslali sme 6-miestny kód na\n$email';
  }

  @override
  String get verifyAndSignIn => 'Overiť a prihlásiť sa';

  @override
  String get didntReceiveCode => 'Nedostali ste to?';

  @override
  String get tryAgain => 'Skúste to znova';

  @override
  String get otpExpiresHint =>
      'Platnosť kódu vyprší o 5 minút. Skontrolujte priečinok so spamom, ak ho nevidíte.';

  @override
  String get snackError => 'Chyba';

  @override
  String get snackCopied => 'Skopírované';

  @override
  String get snackCopiedBody => 'Odkaz bol skopírovaný do schránky';

  @override
  String get snackWelcome => 'Vitajte';

  @override
  String get snackAccountCreated => 'Účet vytvorený';

  @override
  String get snackEnterEmail => 'Zadajte svoj email';

  @override
  String get snackEnterPassword => 'Zadajte svoje heslo';

  @override
  String get snackInvalidEmail => 'Neplatná e-mailová adresa';

  @override
  String get snackInvalidCredentials => 'Nesprávny e-mail alebo heslo';

  @override
  String get snackPasswordMin8 => 'Heslo musí mať aspoň 8 znakov';

  @override
  String get snackPasswordMismatch => 'Heslá sa nezhodujú.';

  @override
  String get snackAccountExists => 'Účet už existuje. Prosím prihláste sa.';

  @override
  String get snackSignupFailed =>
      'Nepodarilo sa vytvoriť účet. Skúste to znova.';

  @override
  String get snackEnterOtp => 'Zadajte 6-miestny kód';

  @override
  String get snackOtpExpired => 'Platnosť kódu vypršala';

  @override
  String get snackOtpExpiredBody => 'Požiadajte o nový kód.';

  @override
  String get snackInvalidCode => 'Neplatný kód';

  @override
  String get snackInvalidCodeBody => 'Kód je nesprávny. Skúste to znova.';

  @override
  String get snackSendCodeFailed =>
      'Kód sa nepodarilo odoslať. Skontrolujte pripojenie a skúste to znova.';

  @override
  String get snackEmptyFolder => 'Prázdny priečinok';

  @override
  String get snackEmptyFolderBody =>
      'Vo vybranom priečinku sa nenašli žiadne súbory.';

  @override
  String get snackFolderUnsupported => 'Nie je podporované';

  @override
  String get snackFolderUnsupportedBody =>
      'Nahrávanie priečinkov nie je na tejto platforme dostupné.';

  @override
  String get snackFolderReadError =>
      'Vybratý priečinok sa nepodarilo prečítať.';

  @override
  String get snackLimitReached => 'Dosiahnutý limit';

  @override
  String get snackLimitFilesBody =>
      'Niektoré súbory neboli pridané z dôvodu obmedzenia veľkosti alebo počtu súborov.';

  @override
  String get snackFreePlanLimit =>
      'Bezplatný plán umožňuje až 5 GB na prenos. Odstráňte niektoré súbory alebo inovujte.';

  @override
  String get snackSignInEmail => 'Ak chcete odoslať e-mailom, prihláste sa.';

  @override
  String get snackUploadStartFailed => 'Nepodarilo sa spustiť nahrávanie.';

  @override
  String get snackVerifyEnterCode => 'Zadajte 4-ciferný kód z vášho e-mailu.';

  @override
  String get snackVerifyInvalid =>
      'Neplatný kód alebo kód s vypršanou platnosťou. Skontrolujte e-mail a skúste to znova.';

  @override
  String get snackVerifyResendFailed =>
      'Kód sa nepodarilo znova odoslať. Skúste to znova.';

  @override
  String get snackDownloadComplete => 'Sťahovanie dokončené';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" bola uložená do prevzatých súborov';
  }

  @override
  String get snackDownloadFailed => 'Sťahovanie zlyhalo';

  @override
  String get snackSaved => 'Uložené';

  @override
  String get snackServerUrlUpdated =>
      'Webová adresa servera bola aktualizovaná. Ak chcete použiť, reštartujte aplikáciu.';

  @override
  String get snackStoreError => 'Chyba obchodu';

  @override
  String get snackMissingProducts => 'Chýbajúce produkty';

  @override
  String get snackStoreUnavailable => 'Obchod nedostupný';

  @override
  String get snackStoreUnavailableBody =>
      'Nákupy v aplikácii nie sú na tomto zariadení k dispozícii.';

  @override
  String get snackProductNotLoaded => 'Produkt ešte nie je načítaný.';

  @override
  String get snackRestoreStarted => 'Obnovenie spustené';

  @override
  String get snackRestoreStartedBody => 'Kontrolujeme vaše nákupy.';

  @override
  String get snackRestoreFailed => 'Obnovenie zlyhalo';

  @override
  String get snackProcessing => 'Spracovanie';

  @override
  String get snackPleaseWait => 'Čakajte prosím…';

  @override
  String get snackSuccess => 'Úspech';

  @override
  String get snackPurchaseCompleted => 'Nákup dokončený.';

  @override
  String get snackPurchaseError => 'Chyba nákupu';

  @override
  String get snackPurchaseFailed => 'Nákup zlyhal.';

  @override
  String get snackCanceled => 'Zrušené';

  @override
  String get snackPurchaseCanceled => 'Nákup bol zrušený.';

  @override
  String get snackUpload => 'Nahrať';

  @override
  String get snackVerify => 'Overiť';

  @override
  String get doNotExpire => 'Nevyprší platnosť';

  @override
  String get hourSingular => 'hodina';

  @override
  String get hourPlural => 'hodiny';

  @override
  String get daySingular => 'deň';

  @override
  String get dayPlural => 'dní';

  @override
  String get emailAddressLabel => 'E-MAILOVÁ ADRESA';

  @override
  String get passwordLabelCaps => 'HESLO';

  @override
  String get confirmPasswordLabelCaps => 'POTVRDIŤ HESLO';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'PRENOSOVÝ ODKAZ ALEBO ID';

  @override
  String get howToReceive => 'AKO PRIJÍMAŤ';

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
  String get planAdsTitle => 'Plán reklám';

  @override
  String get planAdsBullet1 => 'Prístup k aplikácii bez reklám';

  @override
  String get planAdsBullet2 => 'Odstráňte všetky reklamy';

  @override
  String get planProTitle => 'Pro plán';

  @override
  String get planProBullet1 => 'Posielajte súbory až do 20 GB';

  @override
  String get planProBullet2 => 'Rýchle nahrávanie';

  @override
  String get planPremiumTitle => 'Prémiový plán';

  @override
  String get planPremiumBullet1 => 'Posielajte súbory až do 100 GB';

  @override
  String get planPremiumBullet2 => 'Super rýchle nahrávanie';

  @override
  String get planSubscriptionDisclaimer =>
      'Žiadne skúšobné obdobie – na používanie dodatočných funkcií aplikácie je potrebné predplatné. Okamžite vám budú účtované poplatky. Môžete to kedykoľvek zrušiť.';

  @override
  String get perMonth => '/ mesiac';

  @override
  String get perYear => '/ rok';

  @override
  String get snackConnectionProblem => 'Problém s pripojením. Skúste to znova.';

  @override
  String get networkTitle => 'sieť';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Súbory: $count · $size bajtov';
  }

  @override
  String todayAt(String time) {
    return 'Dnes · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Včera · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d pred · $time';
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
    return '$sent / $total • $remaining vľavo';
  }

  @override
  String get loadingShort => 'Načítava sa...';

  @override
  String get colorPaletteTitle => 'Paleta farieb';

  @override
  String get colorPaletteSectionBackgrounds => 'Pozadia (škála atramentu)';

  @override
  String get colorPaletteSectionAccent => 'Prízvuk / Primárne';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Borders & Glass';

  @override
  String get colorPaletteSectionSemantic => 'Sémantický';

  @override
  String get colorPaletteSectionLive => 'Živá téma (aktuálna)';

  @override
  String get colorPaletteActiveHint => '★ = aktívne používané v obrazovkách';

  @override
  String get colorPaletteCopyHint =>
      'Dlhým stlačením ľubovoľného políčka skopírujte jeho hexadecimálnu hodnotu.';

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
  String get settingsAppBrand => 'Zdieľať veľké\nVideo súbory';

  @override
  String get loginEmailPasswordPrompt =>
      'Na prihlásenie zadajte svoj e-mail a heslo.';

  @override
  String get forgotPassword => 'Zabudli ste heslo?';

  @override
  String get forgotPasswordTitle => 'Obnoviť heslo';

  @override
  String get forgotPasswordBody =>
      'Zadajte e-mail svojho účtu a my vám pošleme resetovací kód.';

  @override
  String get forgotPasswordSubmit => 'Odoslať resetovací kód';

  @override
  String get resetPasswordTitle => 'Vytvorte nové heslo';

  @override
  String get resetPasswordBody =>
      'Zadajte 6-miestny kód z vášho e-mailu a zvoľte si nové heslo.';

  @override
  String get resetPasswordSubmit => 'Aktualizovať heslo';

  @override
  String get snackPasswordResetSent => 'Resetovací kód bol odoslaný';

  @override
  String get snackPasswordResetSentBody =>
      'Skontrolujte svoj e-mail, kde nájdete 6-miestny resetovací kód.';

  @override
  String get snackPasswordResetFailed =>
      'Nepodarilo sa odoslať resetovací kód. Skúste to znova.';

  @override
  String get snackPasswordUpdated => 'Heslo bolo aktualizované';

  @override
  String get snackPasswordUpdatedBody => 'Prihláste sa pomocou nového hesla.';

  @override
  String get snackPasswordResetInvalid =>
      'Neplatný alebo vypršaný resetovací kód.';

  @override
  String get otpDigitLabel => '6-CIFERNÝ KÓD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count ďalšie súbory';
  }
}
