// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Podijelite velike video datoteke';

  @override
  String get heroAccent => 'odmah.';

  @override
  String get heroTitle => 'Pošalji teške datoteke';

  @override
  String get splashLoading => 'učitavanje...';

  @override
  String get navSend => 'Nadzorna ploča';

  @override
  String get navHome => 'Dom';

  @override
  String get navHistory => 'Povijest';

  @override
  String get navReceive => 'primiti';

  @override
  String get navPlans => 'Planovi';

  @override
  String get navDownload => 'preuzimanje';

  @override
  String get navSettings => 'postavke';

  @override
  String get modeLink => 'Nabavite vezu';

  @override
  String get modeEmail => 'Pošalji e-poštom';

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
  String get pickFiles => 'Odaberite datoteke';

  @override
  String get pickFolder => 'Odaberite mapu';

  @override
  String get emailFrom => 'Vaš email';

  @override
  String get mailFromUsesAccount =>
      'Koristi vašu e-poštu na koju ste prijavljeni.';

  @override
  String get recipientEmailsHelper =>
      'Više primatelja: odvojite ih zarezima, točkom i zarezom ili razmacima.';

  @override
  String get emailTo => 'E-pošta primatelja';

  @override
  String get messageOptional => 'Poruka (nije obavezno)';

  @override
  String get passwordOptional => 'Lozinka (nije obavezno)';

  @override
  String get destructAfterDownload => 'Izbriši nakon preuzimanja';

  @override
  String get destructNo => 'Držite na raspolaganju';

  @override
  String get sendButton => 'Poslati';

  @override
  String get uploading => 'Prijenos…';

  @override
  String get uploadComplete => 'Gotovo';

  @override
  String get shareLinkTitle => 'Vaš link';

  @override
  String get copyLink => 'Kopiraj vezu';

  @override
  String get share => 'Udio';

  @override
  String get shareQrCode => 'Podijelite QR kod';

  @override
  String get uploadMore => 'Pošalji drugu';

  @override
  String get emailSentTitle => 'E-poruke su poslane';

  @override
  String get verifyEmailTitle => 'Potvrdite svoju e-poštu';

  @override
  String get verifyCodeHint => 'Unesite kod iz svoje e-pošte';

  @override
  String get verifySubmit => 'Potvrdi';

  @override
  String get verifyResendCode => 'Ponovno pošalji kod';

  @override
  String get verifyCodeSent => 'Novi kontrolni kod poslan je na vašu e-poštu.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'E-pošta za potvrdu možda nije poslana';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Poslužitelj nije mogao potvrditi isporuku (SMTP je često krivo konfiguriran). Zamolite administratora web-mjesta da provjeri postavke pošte u administratorskoj ploči, zatim dodirnite Ponovno pošalji kod.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ako ne stigne: provjerite Junk/Spam i Promocije, pričekajte minutu, potvrdite da $email nema pogrešaka pri upisu, zatim dodirnite Ponovno pošalji.';
  }

  @override
  String get loginTitle => 'Prijavite se';

  @override
  String get signupHint =>
      'Upotrijebite e-poštu i zaporku računa svoje web-lokacije.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Lozinka';

  @override
  String get cancel => 'Otkazati';

  @override
  String get signIn => 'Prijavite se';

  @override
  String get downloadIdHint => 'ID prijenosa';

  @override
  String get privateIdHint => 'Privatni ID (nije obavezno)';

  @override
  String get fetchTransfer => 'Otvoreni prijenos';

  @override
  String get downloadFile => 'preuzimanje';

  @override
  String get unlockDownload => 'Otključaj preuzimanje';

  @override
  String get downloadSaved => 'Spremljeno u Preuzimanja';

  @override
  String get errorGeneric => 'Nešto nije u redu';

  @override
  String get errorNetwork => 'Mrežna pogreška';

  @override
  String get errorBadResponse => 'Neočekivani odgovor poslužitelja';

  @override
  String get termsAccept => 'Slažem se s uvjetima';

  @override
  String get settingsApiUrl => 'Javna stranica URL';

  @override
  String get settingsAccount => 'Račun';

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sustav';

  @override
  String get themeLight => 'Svijetlo';

  @override
  String get themeDark => 'Tamno';

  @override
  String get settingsSignedIn => 'Prijavljeni ste.';

  @override
  String get settingsSignedOut => 'Niste prijavljeni u.';

  @override
  String get settingsOpenWebsite => 'Otvori web stranicu';

  @override
  String get signUp => 'Prijavi se';

  @override
  String get settingsLinks => 'Veze';

  @override
  String get privacyPolicy => 'Pravila o privatnosti';

  @override
  String get termsOfService => 'Uvjeti usluge';

  @override
  String get about => 'O';

  @override
  String get moreApps => 'Više apps';

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
      'This permanently deletes your account and signs you out. Vaše veze za prijenos nastavit će raditi, ali se više neće pojavljivati u vašoj povijesti.';

  @override
  String get deleteAccountSuccess => 'Račun izbrisan';

  @override
  String get deleteAccountSuccessBody => 'Vaš račun je uklonjen.';

  @override
  String get deleteAccountFailed => 'Nije moguće izbrisati račun';

  @override
  String get deleteAccountFailedBody =>
      'Pokušajte ponovo ili kontaktirajte podršku.';

  @override
  String get maxFilesReached => 'Previše datoteka';

  @override
  String get fileTooLarge => 'Datoteka također veliki';

  @override
  String get ipLimit => 'Previše prijenosa s ove mreže';

  @override
  String get fillFields => 'Molimo ispunite obavezna polja';

  @override
  String get invalidEmail => 'Nevažeća e-pošta';

  @override
  String get maxRecipientsReached => 'Previše primatelja';

  @override
  String get loginRequiredTitle => 'Potrebna je prijava';

  @override
  String get loginRequiredBody =>
      'Ovaj poslužitelj zahtijeva račun za prijenos ili preuzimanje.';

  @override
  String get settingsSubtitle => 'Postavke aplikacije i račun.';

  @override
  String get dropHeavyFile => 'Ovdje ispustite tešku datoteku.';

  @override
  String upToTotal(String max) {
    return 'Do $max ukupno';
  }

  @override
  String get removeAll => 'Ukloni sve';

  @override
  String get addFiles => 'Dodaj datoteke';

  @override
  String get adding => 'Dodavanje…';

  @override
  String get options => 'Opcije';

  @override
  String get selfDestruct => 'Samouništenje nakon preuzimanja';

  @override
  String get expiry => 'Istek';

  @override
  String get cancelUpload => 'Otkaži prijenos';

  @override
  String get transferReady => 'Prijenos spreman!';

  @override
  String get emailSentReady => 'E-pošta poslana!';

  @override
  String get shareRecipientHint => 'Podijelite ovu vezu sa svojim primateljem.';

  @override
  String get emailSentBody => 'Obavijestili smo vaše primatelje(e).';

  @override
  String get scanQr => 'Skenirajte da biste otvorili vezu za prijenos.';

  @override
  String get shareLinkButton => 'DIJELI LINK';

  @override
  String get verifyFourDigit =>
      'Unesite 4-znamenkasti kod poslan na vašu e-poštu pošiljatelja.';

  @override
  String get starting => 'Početak…';

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
    return '$amount MB preostalo';
  }

  @override
  String get fillField => 'Molimo ispunite ovo polje.';

  @override
  String get enterValidEmail => 'Unesite važeći e-pošta.';

  @override
  String get message => 'Poruka';

  @override
  String get recipientEmail => 'E-pošta primatelja';

  @override
  String get active => 'Aktivna';

  @override
  String get expired => 'Istekla';

  @override
  String get historyTitle => 'Moji transferi';

  @override
  String get signInToSeeTransfers =>
      'Prijavite se da biste vidjeli svoje transfere';

  @override
  String get signInTransfersBody =>
      'Koristimo vašu e-poštu za povezivanje transfera s vašim računom — nije potrebna lozinka.';

  @override
  String get couldNotLoadTransfers => 'Nije moguće učitati prijenosi';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get noTransfersYet => 'Još nema prijenosa';

  @override
  String get noTransfersBody =>
      'Kada pošaljete datoteku, ona će se pojaviti ovdje.';

  @override
  String get transferDetails => 'Pojedinosti o prijenosu';

  @override
  String get filesSection => 'Datoteke';

  @override
  String get receiveTitle => 'Primi datoteke';

  @override
  String get receiveSubtitle =>
      'Zalijepite vezu za prijenos za preuzimanje datoteke.';

  @override
  String get pasteTooltip => 'Zalijepi';

  @override
  String get findTransfer => 'Pronađi prijenos';

  @override
  String get receiveScanQr => 'Skeniraj QR';

  @override
  String get receiveScanQrTitle => 'Skeniraj QR prijenos';

  @override
  String get receiveScanQrHint => 'Poravnaj QR kod unutar okvira.';

  @override
  String get receiveScanQrInvalid =>
      'Ovaj QR kod nije valjana veza za prijenos.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kamera potreban je pristup za skeniranje QR kodova.';

  @override
  String get receiveStepGetLink => 'Preuzmite vezu';

  @override
  String get receiveStepGetLinkBody =>
      'Zamolite pošiljatelja da s vama podijeli vezu za prijenos.';

  @override
  String get receiveStepPaste => 'Zalijepi i pronađi';

  @override
  String get receiveStepPasteBody =>
      'Zalijepi gornju vezu i dodirnite \"Pronađi prijenos\".';

  @override
  String get receiveStepDownload => 'Preuzmi datoteke';

  @override
  String get receiveStepDownloadBody =>
      'Pogledaj detalje datoteke i preuzmite sve odjednom.';

  @override
  String get lookingUpTransfer => 'Traženje prijenosa...';

  @override
  String get transferNotFound =>
      'Prijenos nije pronađen. Provjerite vezu i pokušajte ponovo.';

  @override
  String get transferExpired =>
      'Ovaj prijenos je istekao i više nije dostupan.';

  @override
  String get transferLoginRequired =>
      'Za pristup ovom prijenosu potrebna je prijava.';

  @override
  String get transferBadResponse =>
      'Neočekivani odgovor poslužitelja. Provjerite vezu.';

  @override
  String get transferNetworkError =>
      'Mrežna pogreška. Provjerite internetsku vezu.';

  @override
  String transferLoadFailed(String error) {
    return 'Nije moguće učitati prijenos: $error';
  }

  @override
  String get passwordProtected => 'Zaporka zaštićena';

  @override
  String get enterPassword => 'Unesite lozinku';

  @override
  String get unlock => 'Otključaj';

  @override
  String get downloading => 'Preuzimanje…';

  @override
  String get downloadAllFiles => 'Preuzmi sve datoteke';

  @override
  String get downloadSingleFile => 'Preuzmi datoteku';

  @override
  String get receiveAnother => 'Primi još jedan prijenos';

  @override
  String get plansTitle => 'Planovi';

  @override
  String get plansSubtitle =>
      'Nadogradite za uklanjanje oglasa i slanje većih datoteka.';

  @override
  String get storeUnavailable => 'Trgovina nije dostupna';

  @override
  String get storeUnavailableBody =>
      'Kupnje unutar aplikacije nisu dostupne točno sada.';

  @override
  String get storeLoadingPrices => 'Učitavanje cijena iz App Storea…';

  @override
  String get storePricesUnavailable => 'Cijene nedostupne';

  @override
  String get storePricesPartial => 'Neke cijene nisu mogle biti učitane';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded od $total proizvoda za pretplatu su učitani.';
  }

  @override
  String get storeSetupHint =>
      'Testirajte na stvarnom iPhoneu (ne na Simulatoru), koristite Sandbox Apple ID i osigurajte sve 6 pretplata stvoreno je pod ID-om paketa ove aplikacije u App Store Connectu s postavljenim cijenama.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mjesečno';
  }

  @override
  String get freeVersionAds =>
      'Trenutno koristite našu besplatnu verziju s oglasima';

  @override
  String get restorePurchases => 'Vrati kupovine';

  @override
  String get plansContinue => 'Nastavi';

  @override
  String get planLinkRestore => 'Vrati';

  @override
  String get termsAndConditions => 'Uvjeti i odredbe';

  @override
  String get createAccountTitle => 'Izradi račun';

  @override
  String get signUpSubtitle => 'Prijavi se e-poštom i lozinkom.';

  @override
  String get confirmPassword => 'Potvrdi lozinku';

  @override
  String get passwordMin8 => 'Lozinka (min. 8 chars)';

  @override
  String get alreadyHaveAccount => 'Već imate račun?';

  @override
  String get checkEmailTitle => 'Provjerite svoj\nemail';

  @override
  String otpSentTo(String email) {
    return 'Poslali smo 6-znamenkasti kod na\n$email';
  }

  @override
  String get verifyAndSignIn => 'Potvrdi i prijavi se';

  @override
  String get didntReceiveCode => 'Niste ga primili?';

  @override
  String get tryAgain => 'Pokušajte ponovo';

  @override
  String get otpExpiresHint =>
      'Kôd ističe za 5 minuta. Provjerite mapu neželjene pošte ako je ne vidite.';

  @override
  String get snackError => 'Pogreška';

  @override
  String get snackCopied => 'Kopirano';

  @override
  String get snackCopiedBody => 'Veza je kopirana u međuspremnik';

  @override
  String get snackWelcome => 'Dobro došli';

  @override
  String get snackAccountCreated => 'Račun stvoren';

  @override
  String get snackEnterEmail => 'Unesite svoj email';

  @override
  String get snackEnterPassword => 'Unesite svoju lozinku';

  @override
  String get snackInvalidEmail => 'Nevažeća adresa e-pošte';

  @override
  String get snackInvalidCredentials => 'Netočna adresa e-pošte ili lozinka';

  @override
  String get snackPasswordMin8 => 'Lozinka mora imati najmanje 8 znakova';

  @override
  String get snackPasswordMismatch => 'Lozinke se ne podudaraju.';

  @override
  String get snackAccountExists => 'Račun već postoji. Prijavite se.';

  @override
  String get snackSignupFailed =>
      'Nije moguće stvoriti račun. Pokušajte ponovno.';

  @override
  String get snackEnterOtp => 'Unesite 6-znamenkasti kod';

  @override
  String get snackOtpExpired => 'Kôd je istekao';

  @override
  String get snackOtpExpiredBody => 'Zatražite novi kod.';

  @override
  String get snackInvalidCode => 'Kôd nevažeći';

  @override
  String get snackInvalidCodeBody => 'Kôd je netočan. Pokušajte ponovno.';

  @override
  String get snackSendCodeFailed =>
      'Nije moguće poslati kod. Provjerite vezu i pokušajte ponovo.';

  @override
  String get snackEmptyFolder => 'Prazna mapa';

  @override
  String get snackEmptyFolderBody =>
      'U odabranoj mapi nisu pronađene datoteke.';

  @override
  String get snackFolderUnsupported => 'Nije podržano';

  @override
  String get snackFolderUnsupportedBody =>
      'Prijenos mape nije dostupan na ovoj platformi.';

  @override
  String get snackFolderReadError => 'Nije moguće pročitati odabranu mapu.';

  @override
  String get snackLimitReached => 'Ograničenje je dosegnuto';

  @override
  String get snackLimitFilesBody =>
      'Neke datoteke nisu dodane zbog veličine ili broja datoteka ograničenja.';

  @override
  String get snackFreePlanLimit =>
      'Besplatni plan dopušta do 5 GB po prijenosu. Uklonite neke datoteke ili nadogradite.';

  @override
  String get snackSignInEmail => 'Prijavite se za slanje e-poštom.';

  @override
  String get snackUploadStartFailed => 'Nije moguće pokrenuti prijenos.';

  @override
  String get snackVerifyEnterCode =>
      'Unesite 4-znamenkasti kod iz svoje e-pošte.';

  @override
  String get snackVerifyInvalid =>
      'Kôd je nevažeći ili istekao. Provjerite e-poštu i pokušajte ponovno.';

  @override
  String get snackVerifyResendFailed =>
      'Nije moguće ponovno poslati kôd. Pokušajte ponovo.';

  @override
  String get snackDownloadComplete => 'Preuzimanje dovršeno';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" spremljeno u Preuzimanja';
  }

  @override
  String get snackDownloadFailed => 'Preuzimanje nije uspjelo';

  @override
  String get snackSaved => 'Spremljeno';

  @override
  String get snackServerUrlUpdated =>
      'URL poslužitelja ažuriran. Ponovno pokrenite aplikaciju za primjenu.';

  @override
  String get snackStoreError => 'Pogreška trgovine';

  @override
  String get snackMissingProducts => 'Proizvodi koji nedostaju';

  @override
  String get snackStoreUnavailable => 'Trgovina nije dostupna';

  @override
  String get snackStoreUnavailableBody =>
      'Kupnje unutar aplikacije nisu dostupne na ovom uređaju.';

  @override
  String get snackProductNotLoaded => 'Proizvod još nije učitan.';

  @override
  String get snackRestoreStarted => 'Pokrenuto vraćanje';

  @override
  String get snackRestoreStartedBody => 'Provjeravamo vaš kupnje.';

  @override
  String get snackRestoreFailed => 'Vraćanje nije uspjelo';

  @override
  String get snackProcessing => 'Obrada';

  @override
  String get snackPleaseWait => 'Pričekajte...';

  @override
  String get snackSuccess => 'Uspjeh';

  @override
  String get snackPurchaseCompleted => 'Kupnja dovršena.';

  @override
  String get snackPurchaseError => 'Pogreška pri kupnji';

  @override
  String get snackPurchaseFailed => 'Kupnja nije uspjelo.';

  @override
  String get snackCanceled => 'Otkazano';

  @override
  String get snackPurchaseCanceled => 'Kupnja otkazana.';

  @override
  String get snackUpload => 'Prenesi';

  @override
  String get snackVerify => 'Potvrdi';

  @override
  String get doNotExpire => 'Nemoj ističe';

  @override
  String get hourSingular => 'sat';

  @override
  String get hourPlural => 'sati';

  @override
  String get daySingular => 'dan';

  @override
  String get dayPlural => 'dana';

  @override
  String get emailAddressLabel => 'ADRESA E-POŠTE';

  @override
  String get passwordLabelCaps => 'LOZINKA';

  @override
  String get confirmPasswordLabelCaps => 'POTVRDI LOZINKU';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LINK ZA PRIJENOS ILI ID';

  @override
  String get howToReceive => 'KAKO PRIMITI';

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
  String get planAdsTitle => 'Ads Plan';

  @override
  String get planAdsBullet1 => 'Pristup aplikaciji bez oglasa';

  @override
  String get planAdsBullet2 => 'Ukloni sve oglase';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Pošalji datoteke do 20 GB';

  @override
  String get planProBullet2 => 'Brzo slanje';

  @override
  String get planPremiumTitle => 'Premium plan';

  @override
  String get planPremiumBullet1 => 'Šaljite datoteke do 100 GB';

  @override
  String get planPremiumBullet2 => 'Super brzo slanje';

  @override
  String get planSubscriptionDisclaimer =>
      'Nema probnog razdoblja — potrebna je pretplata za korištenje dodatne funkcije aplikacije. Bit će vam odmah naplaćeno. Možete otkazati bilo kada.';

  @override
  String get perMonth => '/ mjesec';

  @override
  String get perYear => '/ godina';

  @override
  String get snackConnectionProblem => 'Problem s vezom. Pokušajte ponovno.';

  @override
  String get networkTitle => 'Mreža';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Datoteke: $count · $size bajtovi';
  }

  @override
  String todayAt(String time) {
    return 'Danas · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Jučer · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}prije d · $time';
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
    return '$sent / $total • $remaining lijevo';
  }

  @override
  String get loadingShort => 'učitavanje...';

  @override
  String get colorPaletteTitle => 'Paleta boja';

  @override
  String get colorPaletteSectionBackgrounds => 'Pozadine (tinta skala)';

  @override
  String get colorPaletteSectionAccent => 'Akcent / Primarni';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Rubnice i staklo';

  @override
  String get colorPaletteSectionSemantic => 'Semantika';

  @override
  String get colorPaletteSectionLive => 'Tema uživo (trenutačno)';

  @override
  String get colorPaletteActiveHint => '★ = aktivno se koristi u zasloni';

  @override
  String get colorPaletteCopyHint =>
      'Dugo pritisnite bilo koji uzorak da kopirate njegovu heksadecimalnu vrijednost.';

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
  String get settingsAppBrand => 'Podijeli veliko\nVideo datoteke';

  @override
  String get loginEmailPasswordPrompt =>
      'Unesite svoju e-poštu i lozinku za prijavu.';

  @override
  String get forgotPassword => 'Zaboravili ste lozinku?';

  @override
  String get forgotPasswordTitle => 'Poništite lozinku';

  @override
  String get forgotPasswordBody =>
      'Unesite e-poštu svog računa i poslat ćemo vam kod za poništavanje.';

  @override
  String get forgotPasswordSubmit => 'Pošaljite kod za poništavanje';

  @override
  String get resetPasswordTitle => 'Kreiraj novi lozinka';

  @override
  String get resetPasswordBody =>
      'Unesite 6-znamenkasti kod iz svoje e-pošte i odaberite novu lozinku.';

  @override
  String get resetPasswordSubmit => 'Ažuriraj lozinku';

  @override
  String get snackPasswordResetSent => 'Kôd za poništavanje poslan';

  @override
  String get snackPasswordResetSentBody =>
      'Provjerite e-poštu za 6-znamenkasti kod za poništavanje.';

  @override
  String get snackPasswordResetFailed =>
      'Nije moguće poslati kod za poništavanje. Pokušajte ponovo.';

  @override
  String get snackPasswordUpdated => 'Zaporka je ažurirana';

  @override
  String get snackPasswordUpdatedBody =>
      'Prijavite se sa svojom novom zaporkom.';

  @override
  String get snackPasswordResetInvalid =>
      'Kôd za poništavanje nije valjan ili je istekao.';

  @override
  String get otpDigitLabel => 'ŠESTEROZNAMENKI KOD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count više datoteka';
  }
}
