// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Jaa suuria videotiedostoja';

  @override
  String get heroAccent => 'välittömästi.';

  @override
  String get heroTitle => 'Lähetä raskaita tiedostoja';

  @override
  String get splashLoading => 'Ladataan…';

  @override
  String get navSend => 'Kojelauta';

  @override
  String get navHome => 'Kotiin';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Vastaanota';

  @override
  String get navPlans => 'Suunnitelmat';

  @override
  String get navDownload => 'Lataa';

  @override
  String get navSettings => 'Asetukset';

  @override
  String get modeLink => 'Hanki linkki';

  @override
  String get modeEmail => 'Lähetä sähköpostilla';

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
  String get pickFiles => 'Valitse tiedostot';

  @override
  String get pickFolder => 'Valitse kansio';

  @override
  String get emailFrom => 'Sähköpostisi';

  @override
  String get mailFromUsesAccount =>
      'Käyttää kirjautuneena sähköpostiosoitettasi.';

  @override
  String get recipientEmailsHelper =>
      'Useita vastaanottajia: erottele pilkuilla, puolipisteillä tai välilyönneillä.';

  @override
  String get emailTo => 'Vastaanottajan sähköposti';

  @override
  String get messageOptional => 'Viesti (valinnainen)';

  @override
  String get passwordOptional => 'Salasana (valinnainen)';

  @override
  String get destructAfterDownload => 'Poista latauksen jälkeen';

  @override
  String get destructNo => 'Pidä saatavilla';

  @override
  String get sendButton => 'Lähetä';

  @override
  String get uploading => 'Ladataan…';

  @override
  String get uploadComplete => 'Tehty';

  @override
  String get shareLinkTitle => 'Sinun linkkisi';

  @override
  String get copyLink => 'Kopioi linkki';

  @override
  String get share => 'Jakaa';

  @override
  String get shareQrCode => 'Jaa QR-koodi';

  @override
  String get uploadMore => 'Lähetä toinen';

  @override
  String get emailSentTitle => 'Sähköpostit lähetetty';

  @override
  String get verifyEmailTitle => 'Vahvista sähköpostiosoitteesi';

  @override
  String get verifyCodeHint => 'Syötä koodi sähköpostistasi';

  @override
  String get verifySubmit => 'Vahvista';

  @override
  String get verifyResendCode => 'Lähetä koodi uudelleen';

  @override
  String get verifyCodeSent => 'Sähköpostiisi lähetettiin uusi vahvistuskoodi.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Vahvistussähköpostia ei ehkä ole lähetetty';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Palvelin ei voinut vahvistaa toimitusta (usein SMTP on määritetty väärin). Pyydä sivustosi järjestelmänvalvojaa tarkistamaan sähköpostiasetukset hallintapaneelista ja napauta sitten Lähetä koodi uudelleen.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Jos se ei tule perille: tarkista Roskaposti/Roskaposti ja Tarjoukset, odota hetki, varmista, että $email ei sisällä kirjoitusvirheitä, ja napauta sitten Lähetä uudelleen.';
  }

  @override
  String get loginTitle => 'Kirjaudu sisään';

  @override
  String get signupHint => 'Käytä sivustosi sähköpostiosoitetta ja salasanaa.';

  @override
  String get emailHint => 'Sähköposti';

  @override
  String get passwordHint => 'Salasana';

  @override
  String get cancel => 'Peruuttaa';

  @override
  String get signIn => 'Kirjaudu sisään';

  @override
  String get downloadIdHint => 'Siirtotunnus';

  @override
  String get privateIdHint => 'Yksityinen henkilöllisyystodistus (valinnainen)';

  @override
  String get fetchTransfer => 'Avaa siirto';

  @override
  String get downloadFile => 'Lataa';

  @override
  String get unlockDownload => 'Avaa lataus';

  @override
  String get downloadSaved => 'Tallennettu latauksiin';

  @override
  String get errorGeneric => 'Jotain meni pieleen';

  @override
  String get errorNetwork => 'Verkkovirhe';

  @override
  String get errorBadResponse => 'Odottamaton palvelimen vastaus';

  @override
  String get termsAccept => 'Hyväksyn ehdot';

  @override
  String get settingsApiUrl => 'Julkisen sivuston URL-osoite';

  @override
  String get settingsAccount => 'Tili';

  @override
  String get settingsAppearance => 'Ulkonäkö';

  @override
  String get settingsTheme => 'Teema';

  @override
  String get themeSystem => 'Järjestelmä';

  @override
  String get themeLight => 'Kevyt';

  @override
  String get themeDark => 'Tumma';

  @override
  String get settingsSignedIn => 'Olet kirjautunut sisään.';

  @override
  String get settingsSignedOut => 'Et ole kirjautunut sisään.';

  @override
  String get settingsOpenWebsite => 'Avaa verkkosivusto';

  @override
  String get signUp => 'Rekisteröidy';

  @override
  String get settingsLinks => 'Linkit';

  @override
  String get privacyPolicy => 'Tietosuojakäytäntö';

  @override
  String get termsOfService => 'Palveluehdot';

  @override
  String get about => 'Noin';

  @override
  String get moreApps => 'Lisää sovelluksia';

  @override
  String get settingsLanguage => 'Kieli';

  @override
  String get languageEnglish => 'englanti';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Kirjaudu ulos';

  @override
  String get deleteAccount => 'Poista tili';

  @override
  String get deleteAccountConfirmTitle => 'Poistetaanko tilisi?';

  @override
  String get deleteAccountConfirmBody =>
      'Tämä poistaa tilisi pysyvästi ja kirjaa sinut ulos. Siirtolinkkisi toimivat edelleen, mutta ne eivät enää näy historiassasi.';

  @override
  String get deleteAccountSuccess => 'Tili poistettu';

  @override
  String get deleteAccountSuccessBody => 'Tilisi on poistettu.';

  @override
  String get deleteAccountFailed => 'Tiliä ei voitu poistaa';

  @override
  String get deleteAccountFailedBody =>
      'Yritä uudelleen tai ota yhteyttä tukeen.';

  @override
  String get maxFilesReached => 'Liian monta tiedostoa';

  @override
  String get fileTooLarge => 'Tiedosto liian suuri';

  @override
  String get ipLimit => 'Liian monta latausta tästä verkosta';

  @override
  String get fillFields => 'Täytä pakolliset kentät';

  @override
  String get invalidEmail => 'Virheellinen sähköpostiosoite';

  @override
  String get maxRecipientsReached => 'Liian monta vastaanottajaa';

  @override
  String get loginRequiredTitle => 'Kirjautuminen vaaditaan';

  @override
  String get loginRequiredBody =>
      'Tämä palvelin vaatii tilin lataamiseen tai lataamiseen.';

  @override
  String get settingsSubtitle => 'Sovellusasetukset ja tili.';

  @override
  String get dropHeavyFile => 'Pudota raskas tiedosto tähän.';

  @override
  String upToTotal(String max) {
    return 'Enintään $max yhteensä';
  }

  @override
  String get removeAll => 'Poista kaikki';

  @override
  String get addFiles => 'Lisää tiedostoja';

  @override
  String get adding => 'Lisätään…';

  @override
  String get options => 'Vaihtoehdot';

  @override
  String get selfDestruct => 'Itsetuho latauksen jälkeen';

  @override
  String get expiry => 'Vanheneminen';

  @override
  String get cancelUpload => 'Peruuta lataus';

  @override
  String get transferReady => 'Siirto valmis!';

  @override
  String get emailSentReady => 'Sähköposti lähetetty!';

  @override
  String get shareRecipientHint => 'Jaa tämä linkki vastaanottajallesi.';

  @override
  String get emailSentBody => 'Olemme ilmoittaneet vastaanottajallesi.';

  @override
  String get scanQr => 'Skannaa avataksesi siirtolinkin.';

  @override
  String get shareLinkButton => 'JAA LINKKI';

  @override
  String get verifyFourDigit =>
      'Syötä lähettäjän sähköpostiisi lähetetty 4-numeroinen koodi.';

  @override
  String get starting => 'Alkaen…';

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
    return '$amount Mt jäljellä';
  }

  @override
  String get fillField => 'Täytä tämä kenttä.';

  @override
  String get enterValidEmail => 'Anna kelvollinen sähköpostiosoite.';

  @override
  String get message => 'Viesti';

  @override
  String get recipientEmail => 'Vastaanottajan sähköposti';

  @override
  String get active => 'Aktiivinen';

  @override
  String get expired => 'Vanhentunut';

  @override
  String get historyTitle => 'Omat siirrot';

  @override
  String get signInToSeeTransfers => 'Kirjaudu sisään nähdäksesi siirrot';

  @override
  String get signInTransfersBody =>
      'Käytämme sähköpostiasi linkittääksemme siirrot tiliisi – salasanaa ei tarvita.';

  @override
  String get couldNotLoadTransfers => 'Siirtoja ei voitu ladata';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get noTransfersYet => 'Ei vielä siirtoja';

  @override
  String get noTransfersBody => 'Kun lähetät tiedoston, se näkyy täällä.';

  @override
  String get transferDetails => 'Siirron tiedot';

  @override
  String get filesSection => 'Tiedostot';

  @override
  String get receiveTitle => 'Vastaanota tiedostoja';

  @override
  String get receiveSubtitle =>
      'Liitä siirtolinkki tiedostojen lataamista varten.';

  @override
  String get pasteTooltip => 'Liitä';

  @override
  String get findTransfer => 'Etsi siirto';

  @override
  String get receiveScanQr => 'Skannaa QR';

  @override
  String get receiveScanQrTitle => 'Skannaa siirto QR';

  @override
  String get receiveScanQrHint => 'Kohdista QR-koodi kehyksen sisään.';

  @override
  String get receiveScanQrInvalid =>
      'Tämä QR-koodi ei ole kelvollinen siirtolinkki.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR-koodien skannaamiseen tarvitaan kameran käyttöoikeus.';

  @override
  String get receiveStepGetLink => 'Hanki linkki';

  @override
  String get receiveStepGetLinkBody =>
      'Pyydä lähettäjää jakamaan siirtolinkki kanssasi.';

  @override
  String get receiveStepPaste => 'Liitä ja etsi';

  @override
  String get receiveStepPasteBody =>
      'Liitä yllä oleva linkki ja napauta \"Etsi siirto\".';

  @override
  String get receiveStepDownload => 'Lataa tiedostoja';

  @override
  String get receiveStepDownloadBody =>
      'Katso tiedoston tiedot ja lataa kaikki kerralla.';

  @override
  String get lookingUpTransfer => 'Haetaan siirtoa…';

  @override
  String get transferNotFound =>
      'Siirtoa ei löytynyt. Tarkista linkki ja yritä uudelleen.';

  @override
  String get transferExpired =>
      'Tämä siirto on vanhentunut, eikä se ole enää käytettävissä.';

  @override
  String get transferLoginRequired =>
      'Tämän siirron käyttäminen edellyttää kirjautumista.';

  @override
  String get transferBadResponse =>
      'Odottamaton palvelimen vastaus. Tarkista yhteys.';

  @override
  String get transferNetworkError =>
      'Verkkovirhe. Tarkista Internet-yhteytesi.';

  @override
  String transferLoadFailed(String error) {
    return 'Siirtoa ei voitu ladata: $error';
  }

  @override
  String get passwordProtected => 'Salasana suojattu';

  @override
  String get enterPassword => 'Anna salasana';

  @override
  String get unlock => 'Avata';

  @override
  String get downloading => 'Ladataan…';

  @override
  String get downloadAllFiles => 'Lataa kaikki tiedostot';

  @override
  String get downloadSingleFile => 'Lataa tiedosto';

  @override
  String get receiveAnother => 'Vastaanota toinen siirto';

  @override
  String get plansTitle => 'Suunnitelmat';

  @override
  String get plansSubtitle =>
      'Päivitä mainosten poistamiseksi ja suurempien tiedostojen lähettämiseksi.';

  @override
  String get storeUnavailable => 'Kauppa ei ole saatavilla';

  @override
  String get storeUnavailableBody =>
      'Sovelluksen sisäiset ostokset eivät ole tällä hetkellä saatavilla.';

  @override
  String get storeLoadingPrices => 'Ladataan hintoja App Storesta…';

  @override
  String get storePricesUnavailable => 'Hintoja ei saatavilla';

  @override
  String get storePricesPartial => 'Joitakin hintoja ei voitu ladata';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded / $total tilaustuotteista ladattu.';
  }

  @override
  String get storeSetupHint =>
      'Testaa aidolla iPhonella (ei simulaattorilla), käytä Sandbox Apple ID:tä ja varmista, että kaikki 6 tilausta on luotu tämän sovelluksen pakettitunnuksella App Store Connectissa hinnoitteluasetuksen kanssa.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/kk';
  }

  @override
  String get freeVersionAds =>
      'Tällä hetkellä käytät ilmaista versiotamme mainoksilla';

  @override
  String get restorePurchases => 'Palauta ostokset';

  @override
  String get plansContinue => 'Jatkaa';

  @override
  String get planLinkRestore => 'Palauttaa';

  @override
  String get termsAndConditions => 'Ehdot';

  @override
  String get createAccountTitle => 'Luo tili';

  @override
  String get signUpSubtitle => 'Rekisteröidy sähköpostilla ja salasanalla.';

  @override
  String get confirmPassword => 'Vahvista salasana';

  @override
  String get passwordMin8 => 'Salasana (vähintään 8 merkkiä)';

  @override
  String get alreadyHaveAccount => 'Onko sinulla jo tili?';

  @override
  String get checkEmailTitle => 'Tarkista omasi\nsähköposti';

  @override
  String otpSentTo(String email) {
    return 'Lähetimme 6-numeroisen koodin osoitteeseen\n$email';
  }

  @override
  String get verifyAndSignIn => 'Vahvista ja kirjaudu sisään';

  @override
  String get didntReceiveCode => 'Etkö saanut sitä?';

  @override
  String get tryAgain => 'Yritä uudelleen';

  @override
  String get otpExpiresHint =>
      'Koodi vanhenee 5 minuutin kuluttua. Tarkista roskapostikansiosi, jos et näe sitä.';

  @override
  String get snackError => 'Virhe';

  @override
  String get snackCopied => 'Kopioitu';

  @override
  String get snackCopiedBody => 'Linkki kopioitu leikepöydälle';

  @override
  String get snackWelcome => 'Tervetuloa';

  @override
  String get snackAccountCreated => 'Tili luotu';

  @override
  String get snackEnterEmail => 'Anna sähköpostiosoitteesi';

  @override
  String get snackEnterPassword => 'Anna salasanasi';

  @override
  String get snackInvalidEmail => 'Virheellinen sähköpostiosoite';

  @override
  String get snackInvalidCredentials => 'Väärä sähköpostiosoite tai salasana';

  @override
  String get snackPasswordMin8 => 'Salasanassa on oltava vähintään 8 merkkiä';

  @override
  String get snackPasswordMismatch => 'Salasanat eivät täsmää.';

  @override
  String get snackAccountExists => 'Tili on jo olemassa. Kirjaudu sisään.';

  @override
  String get snackSignupFailed => 'Tiliä ei voitu luoda. Yritä uudelleen.';

  @override
  String get snackEnterOtp => 'Anna 6-numeroinen koodi';

  @override
  String get snackOtpExpired => 'Koodi vanhentunut';

  @override
  String get snackOtpExpiredBody => 'Pyydä uusi koodi.';

  @override
  String get snackInvalidCode => 'Virheellinen koodi';

  @override
  String get snackInvalidCodeBody => 'Koodi on virheellinen. Yritä uudelleen.';

  @override
  String get snackSendCodeFailed =>
      'Koodia ei voitu lähettää. Tarkista yhteys ja yritä uudelleen.';

  @override
  String get snackEmptyFolder => 'Tyhjä kansio';

  @override
  String get snackEmptyFolderBody =>
      'Valitusta kansiosta ei löytynyt tiedostoja.';

  @override
  String get snackFolderUnsupported => 'Ei tuettu';

  @override
  String get snackFolderUnsupportedBody =>
      'Kansion lataus ei ole käytettävissä tällä alustalla.';

  @override
  String get snackFolderReadError => 'Valittua kansiota ei voitu lukea.';

  @override
  String get snackLimitReached => 'Raja saavutettu';

  @override
  String get snackLimitFilesBody =>
      'Joitakin tiedostoja ei lisätty koon tai tiedostomäärän rajoitusten vuoksi.';

  @override
  String get snackFreePlanLimit =>
      'Ilmainen paketti sallii jopa 5 Gt siirtoa kohden. Poista joitakin tiedostoja tai päivitä.';

  @override
  String get snackSignInEmail => 'Kirjaudu sisään lähettääksesi sähköpostitse.';

  @override
  String get snackUploadStartFailed => 'Lähetystä ei voitu aloittaa.';

  @override
  String get snackVerifyEnterCode =>
      'Syötä 4-numeroinen koodi sähköpostistasi.';

  @override
  String get snackVerifyInvalid =>
      'Virheellinen tai vanhentunut koodi. Tarkista sähköposti ja yritä uudelleen.';

  @override
  String get snackVerifyResendFailed =>
      'Koodia ei voitu lähettää uudelleen. Yritä uudelleen.';

  @override
  String get snackDownloadComplete => 'Lataus valmis';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" tallennettu latauksiin';
  }

  @override
  String get snackDownloadFailed => 'Lataus epäonnistui';

  @override
  String get snackSaved => 'Tallennettu';

  @override
  String get snackServerUrlUpdated =>
      'Palvelimen URL-osoite päivitetty. Käynnistä sovellus uudelleen soveltaaksesi.';

  @override
  String get snackStoreError => 'Store-virhe';

  @override
  String get snackMissingProducts => 'Puuttuvat tuotteet';

  @override
  String get snackStoreUnavailable => 'Kauppa ei ole saatavilla';

  @override
  String get snackStoreUnavailableBody =>
      'Sovelluksen sisäiset ostokset eivät ole käytettävissä tällä laitteella.';

  @override
  String get snackProductNotLoaded => 'Tuotetta ei ole vielä ladattu.';

  @override
  String get snackRestoreStarted => 'Palautus aloitettu';

  @override
  String get snackRestoreStartedBody => 'Tarkistamme ostoksesi.';

  @override
  String get snackRestoreFailed => 'Palautus epäonnistui';

  @override
  String get snackProcessing => 'Käsittely';

  @override
  String get snackPleaseWait => 'Odota…';

  @override
  String get snackSuccess => 'Menestys';

  @override
  String get snackPurchaseCompleted => 'Osto suoritettu.';

  @override
  String get snackPurchaseError => 'Ostovirhe';

  @override
  String get snackPurchaseFailed => 'Osto epäonnistui.';

  @override
  String get snackCanceled => 'Peruutettu';

  @override
  String get snackPurchaseCanceled => 'Ostos peruutettu.';

  @override
  String get snackUpload => 'Lataa';

  @override
  String get snackVerify => 'Vahvista';

  @override
  String get doNotExpire => 'Älä vanhene';

  @override
  String get hourSingular => 'tunnin';

  @override
  String get hourPlural => 'tuntia';

  @override
  String get daySingular => 'päivä';

  @override
  String get dayPlural => 'päivää';

  @override
  String get emailAddressLabel => 'SÄHKÖPOSTIOSOITE';

  @override
  String get passwordLabelCaps => 'SALASANA';

  @override
  String get confirmPasswordLabelCaps => 'VAHVISTA SALASANA';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'SIIRTOLINKKI TAI ID';

  @override
  String get howToReceive => 'MITEN VASTAANOTTAA';

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
  String get planAdsTitle => 'Mainossuunnitelma';

  @override
  String get planAdsBullet1 => 'Pääsy mainoksittomaan sovellukseen';

  @override
  String get planAdsBullet2 => 'Poista kaikki mainokset';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Lähetä tiedostoja 20 Gt asti';

  @override
  String get planProBullet2 => 'Nopea lataus';

  @override
  String get planPremiumTitle => 'Premium-suunnitelma';

  @override
  String get planPremiumBullet1 => 'Lähetä tiedostoja 100 Gt asti';

  @override
  String get planPremiumBullet2 => 'Supernopea lataus';

  @override
  String get planSubscriptionDisclaimer =>
      'Ei koeaikaa – sovelluksen lisätoimintojen käyttäminen edellyttää tilausta. Sinua veloitetaan välittömästi. Voit peruuttaa milloin tahansa.';

  @override
  String get perMonth => '/ kuukausi';

  @override
  String get perYear => '/ vuosi';

  @override
  String get snackConnectionProblem => 'Yhteysongelma. Yritä uudelleen.';

  @override
  String get networkTitle => 'Verkko';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Tiedostot: $count · $size tavua';
  }

  @override
  String todayAt(String time) {
    return 'Tänään · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Eilen · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}pv sitten · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount Mt';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining vasemmalle';
  }

  @override
  String get loadingShort => 'Ladataan…';

  @override
  String get colorPaletteTitle => 'Väripaletti';

  @override
  String get colorPaletteSectionBackgrounds => 'Taustat (musteasteikko)';

  @override
  String get colorPaletteSectionAccent => 'Aksentti / Ensisijainen';

  @override
  String get colorPaletteSectionText => 'Teksti';

  @override
  String get colorPaletteSectionBorders => 'Reunat ja lasit';

  @override
  String get colorPaletteSectionSemantic => 'Semanttinen';

  @override
  String get colorPaletteSectionLive => 'Live-teema (nykyinen)';

  @override
  String get colorPaletteActiveHint => '★ = käytetään aktiivisesti näytöissä';

  @override
  String get colorPaletteCopyHint =>
      'Paina mitä tahansa värimallia pitkään kopioidaksesi sen heksadesimaaliarvo.';

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
  String get settingsAppBrand => 'Jaa suuri\nVideotiedostot';

  @override
  String get loginEmailPasswordPrompt =>
      'Syötä sähköpostiosoitteesi ja salasanasi kirjautuaksesi sisään.';

  @override
  String get forgotPassword => 'Unohditko salasanan?';

  @override
  String get forgotPasswordTitle => 'Palauta salasana';

  @override
  String get forgotPasswordBody =>
      'Anna tilisi sähköpostiosoite, niin lähetämme palautuskoodin.';

  @override
  String get forgotPasswordSubmit => 'Lähetä nollauskoodi';

  @override
  String get resetPasswordTitle => 'Luo uusi salasana';

  @override
  String get resetPasswordBody =>
      'Syötä 6-numeroinen koodi sähköpostistasi ja valitse uusi salasana.';

  @override
  String get resetPasswordSubmit => 'Päivitä salasana';

  @override
  String get snackPasswordResetSent => 'Nollauskoodi lähetetty';

  @override
  String get snackPasswordResetSentBody =>
      'Tarkista sähköpostistasi 6-numeroinen palautuskoodi.';

  @override
  String get snackPasswordResetFailed =>
      'Nollauskoodia ei voitu lähettää. Yritä uudelleen.';

  @override
  String get snackPasswordUpdated => 'Salasana päivitetty';

  @override
  String get snackPasswordUpdatedBody =>
      'Kirjaudu sisään uudella salasanallasi.';

  @override
  String get snackPasswordResetInvalid =>
      'Virheellinen tai vanhentunut palautuskoodi.';

  @override
  String get otpDigitLabel => '6-NUMEROINEN KOODI';

  @override
  String receiveMoreFiles(int count) {
    return '+$count lisää tiedostoja';
  }
}
