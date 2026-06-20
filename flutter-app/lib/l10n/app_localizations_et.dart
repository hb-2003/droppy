// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Jagage suuri videofaile';

  @override
  String get heroAccent => 'koheselt.';

  @override
  String get heroTitle => 'Saatke raskeid faile';

  @override
  String get splashLoading => 'Laadimine…';

  @override
  String get navSend => 'Armatuurlaud';

  @override
  String get navHome => 'Kodu';

  @override
  String get navHistory => 'Ajalugu';

  @override
  String get navReceive => 'Vastu võtta';

  @override
  String get navPlans => 'Plaanid';

  @override
  String get navDownload => 'Laadi alla';

  @override
  String get navSettings => 'Seaded';

  @override
  String get modeLink => 'Hankige link';

  @override
  String get modeEmail => 'Saada meili teel';

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
  String get pickFiles => 'Valige failid';

  @override
  String get pickFolder => 'Valige kaust';

  @override
  String get emailFrom => 'Teie meiliaadress';

  @override
  String get mailFromUsesAccount => 'Kasutab teie sisselogitud e-posti.';

  @override
  String get recipientEmailsHelper =>
      'Mitu adressaati: eraldage koma, semikooloni või tühikutega.';

  @override
  String get emailTo => 'Saaja meiliaadress';

  @override
  String get messageOptional => 'Sõnum (valikuline)';

  @override
  String get passwordOptional => 'Parool (valikuline)';

  @override
  String get destructAfterDownload => 'Kustuta pärast allalaadimist';

  @override
  String get destructNo => 'Hoidke saadaval';

  @override
  String get sendButton => 'Saada';

  @override
  String get uploading => 'Üleslaadimine…';

  @override
  String get uploadComplete => 'Valmis';

  @override
  String get shareLinkTitle => 'Sinu link';

  @override
  String get copyLink => 'Kopeeri link';

  @override
  String get share => 'Jaga';

  @override
  String get shareQrCode => 'Jagage QR-koodi';

  @override
  String get uploadMore => 'Saada teine';

  @override
  String get emailSentTitle => 'E-kirjad saadetud';

  @override
  String get verifyEmailTitle => 'Kinnitage oma e-posti aadress';

  @override
  String get verifyCodeHint => 'Sisestage oma meilist saadud kood';

  @override
  String get verifySubmit => 'Kinnitage';

  @override
  String get verifyResendCode => 'Saada kood uuesti';

  @override
  String get verifyCodeSent => 'Teie meilile saadeti uus kinnituskood.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Võimalik, et kinnitusmeili ei saadetud';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Server ei saanud kohaletoimetamist kinnitada (sageli on SMTP valesti konfigureeritud). Paluge saidi administraatoril kontrollida administraatoripaneelil meiliseadeid, seejärel puudutage nuppu Saada kood uuesti.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Kui see ei saabu: kontrollige Rämpspost/Rämpspost ja Pakkumised, oodake minut, veenduge, et $email pole kirjavigu, seejärel puudutage Saada uuesti.';
  }

  @override
  String get loginTitle => 'Logi sisse';

  @override
  String get signupHint =>
      'Kasutage oma saidi konto e-posti aadressi ja parooli.';

  @override
  String get emailHint => 'Meil';

  @override
  String get passwordHint => 'Parool';

  @override
  String get cancel => 'Tühista';

  @override
  String get signIn => 'Logi sisse';

  @override
  String get downloadIdHint => 'Ülekande ID';

  @override
  String get privateIdHint => 'Isiklik ID (valikuline)';

  @override
  String get fetchTransfer => 'Avage ülekanne';

  @override
  String get downloadFile => 'Laadi alla';

  @override
  String get unlockDownload => 'Avage allalaadimine';

  @override
  String get downloadSaved => 'Salvestatud allalaadimiste alla';

  @override
  String get errorGeneric => 'Midagi läks valesti';

  @override
  String get errorNetwork => 'Võrgu viga';

  @override
  String get errorBadResponse => 'Ootamatu serveri vastus';

  @override
  String get termsAccept => 'Nõustun tingimustega';

  @override
  String get settingsApiUrl => 'Avaliku saidi URL';

  @override
  String get settingsAccount => 'konto';

  @override
  String get settingsAppearance => 'Välimus';

  @override
  String get settingsTheme => 'Teema';

  @override
  String get themeSystem => 'Süsteem';

  @override
  String get themeLight => 'Valgus';

  @override
  String get themeDark => 'Tume';

  @override
  String get settingsSignedIn => 'Olete sisse logitud.';

  @override
  String get settingsSignedOut => 'Te pole sisse logitud.';

  @override
  String get settingsOpenWebsite => 'Ava veebisait';

  @override
  String get signUp => 'Registreeruge';

  @override
  String get settingsLinks => 'Lingid';

  @override
  String get privacyPolicy => 'Privaatsuspoliitika';

  @override
  String get termsOfService => 'Kasutustingimused';

  @override
  String get about => 'Umbes';

  @override
  String get moreApps => 'Rohkem rakendusi';

  @override
  String get settingsLanguage => 'Keel';

  @override
  String get languageEnglish => 'inglise keel';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Logi välja';

  @override
  String get deleteAccount => 'Kustuta konto';

  @override
  String get deleteAccountConfirmTitle => 'Kas kustutada oma konto?';

  @override
  String get deleteAccountConfirmBody =>
      'See kustutab teie konto jäädavalt ja logib teid välja. Teie edastuslingid töötavad edasi, kuid neid ei kuvata enam teie ajaloos.';

  @override
  String get deleteAccountSuccess => 'Konto kustutatud';

  @override
  String get deleteAccountSuccessBody => 'Teie konto on eemaldatud.';

  @override
  String get deleteAccountFailed => 'Kontot ei saanud kustutada';

  @override
  String get deleteAccountFailedBody =>
      'Proovige uuesti või võtke ühendust toega.';

  @override
  String get maxFilesReached => 'Liiga palju faile';

  @override
  String get fileTooLarge => 'Fail on liiga suur';

  @override
  String get ipLimit => 'Liiga palju üleslaadimisi sellest võrgust';

  @override
  String get fillFields => 'Palun täitke nõutud väljad';

  @override
  String get invalidEmail => 'Kehtetu e-posti aadress';

  @override
  String get maxRecipientsReached => 'Liiga palju saajaid';

  @override
  String get loginRequiredTitle => 'Sisselogimine on vajalik';

  @override
  String get loginRequiredBody =>
      'See server nõuab üles- või allalaadimiseks kontot.';

  @override
  String get settingsSubtitle => 'Rakenduse eelistused ja konto.';

  @override
  String get dropHeavyFile => 'Pukseerige siia raske fail.';

  @override
  String upToTotal(String max) {
    return 'Kokku kuni $max';
  }

  @override
  String get removeAll => 'Eemalda kõik';

  @override
  String get addFiles => 'Lisa faile';

  @override
  String get adding => 'Lisamine…';

  @override
  String get options => 'Valikud';

  @override
  String get selfDestruct => 'Enesehävitus pärast allalaadimist';

  @override
  String get expiry => 'Aegumine';

  @override
  String get cancelUpload => 'Tühista üleslaadimine';

  @override
  String get transferReady => 'Ülekanne valmis!';

  @override
  String get emailSentReady => 'Meil saadetud!';

  @override
  String get shareRecipientHint => 'Jagage seda linki oma adressaadiga.';

  @override
  String get emailSentBody => 'Teavitasime teie adressaate.';

  @override
  String get scanQr => 'Edastuslingi avamiseks skannige.';

  @override
  String get shareLinkButton => 'JAGA LINKI';

  @override
  String get verifyFourDigit =>
      'Sisestage saatja meilile saadetud 4-kohaline kood.';

  @override
  String get starting => 'Alustatakse…';

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
    return '$amount MB jäänud';
  }

  @override
  String get fillField => 'Palun täitke see väli.';

  @override
  String get enterValidEmail => 'Sisestage kehtiv e-posti aadress.';

  @override
  String get message => 'Sõnum';

  @override
  String get recipientEmail => 'Saaja meiliaadress';

  @override
  String get active => 'Aktiivne';

  @override
  String get expired => 'Aegunud';

  @override
  String get historyTitle => 'Minu ülekanded';

  @override
  String get signInToSeeTransfers => 'Ülekannete nägemiseks logige sisse';

  @override
  String get signInTransfersBody =>
      'Kasutame teie e-posti, et linkida ülekanne teie kontoga – parooli pole vaja.';

  @override
  String get couldNotLoadTransfers => 'Edastusi ei saanud laadida';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get noTransfersYet => 'Ülekannet pole veel';

  @override
  String get noTransfersBody => 'Kui olete faili saatnud, kuvatakse see siin.';

  @override
  String get transferDetails => 'Ülekande üksikasjad';

  @override
  String get filesSection => 'Failid';

  @override
  String get receiveTitle => 'Failide vastuvõtmine';

  @override
  String get receiveSubtitle => 'Failide allalaadimiseks kleepige edastuslink.';

  @override
  String get pasteTooltip => 'Kleebi';

  @override
  String get findTransfer => 'Otsige ülekanne';

  @override
  String get receiveScanQr => 'Skaneeri QR';

  @override
  String get receiveScanQrTitle => 'Skanni ülekande QR';

  @override
  String get receiveScanQrHint => 'Joondage QR-kood raami sees.';

  @override
  String get receiveScanQrInvalid => 'See QR-kood ei ole kehtiv edastuslink.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR-koodide skannimiseks on vajalik juurdepääs kaamerale.';

  @override
  String get receiveStepGetLink => 'Hangi link';

  @override
  String get receiveStepGetLinkBody =>
      'Paluge saatjal edastuslinki teiega jagada.';

  @override
  String get receiveStepPaste => 'Kleebi ja otsi';

  @override
  String get receiveStepPasteBody =>
      'Kleepige ülalolev link ja puudutage \"Leia ülekanne\".';

  @override
  String get receiveStepDownload => 'Laadige alla failid';

  @override
  String get receiveStepDownloadBody =>
      'Vaadake faili üksikasju ja laadige kõik korraga alla.';

  @override
  String get lookingUpTransfer => 'Ülekande otsimine…';

  @override
  String get transferNotFound =>
      'Ülekannet ei leitud. Kontrollige linki ja proovige uuesti.';

  @override
  String get transferExpired =>
      'See ülekanne on aegunud ja pole enam saadaval.';

  @override
  String get transferLoginRequired =>
      'Sellele ülekandele juurdepääsuks on vaja sisse logida.';

  @override
  String get transferBadResponse =>
      'Ootamatu serveri vastus. Kontrollige ühendust.';

  @override
  String get transferNetworkError =>
      'Võrgu viga. Kontrollige oma Interneti-ühendust.';

  @override
  String transferLoadFailed(String error) {
    return 'Ülekannet ei saanud laadida: $error';
  }

  @override
  String get passwordProtected => 'Parooliga kaitstud';

  @override
  String get enterPassword => 'Sisestage parool';

  @override
  String get unlock => 'Avage lukustus';

  @override
  String get downloading => 'Allalaadimine…';

  @override
  String get downloadAllFiles => 'Laadige alla kõik failid';

  @override
  String get downloadSingleFile => 'Laadige fail alla';

  @override
  String get receiveAnother => 'Saate uue ülekande';

  @override
  String get plansTitle => 'Plaanid';

  @override
  String get plansSubtitle =>
      'Uuendage reklaamide eemaldamiseks ja suuremate failide saatmiseks.';

  @override
  String get storeUnavailable => 'Kauplus pole saadaval';

  @override
  String get storeUnavailableBody =>
      'Rakendusesisesed ostud pole praegu saadaval.';

  @override
  String get storeLoadingPrices => 'Hindade laadimine App Store\'ist…';

  @override
  String get storePricesUnavailable => 'Hinnad pole saadaval';

  @override
  String get storePricesPartial => 'Mõnda hinda ei saanud laadida';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded / $total tellimustoodetest on laaditud.';
  }

  @override
  String get storeSetupHint =>
      'Testige tõelises iPhone\'is (mitte Simulaatoris), kasutage liivakasti Apple ID-d ja veenduge, et kõik 6 tellimust luuakse selle rakenduse komplekti ID all App Store Connectis koos hinnakujundusega.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/kuus';
  }

  @override
  String get freeVersionAds =>
      'Praegu kasutate meie tasuta versiooni koos reklaamidega';

  @override
  String get restorePurchases => 'Taasta ostud';

  @override
  String get plansContinue => 'Jätka';

  @override
  String get planLinkRestore => 'Taasta';

  @override
  String get termsAndConditions => 'Tingimused';

  @override
  String get createAccountTitle => 'Loo konto';

  @override
  String get signUpSubtitle => 'Registreeruge e-posti ja parooliga.';

  @override
  String get confirmPassword => 'Kinnitage parool';

  @override
  String get passwordMin8 => 'Parool (vähemalt 8 tähemärki)';

  @override
  String get alreadyHaveAccount => 'Kas teil on juba konto?';

  @override
  String get checkEmailTitle => 'Kontrollige oma\nemail';

  @override
  String otpSentTo(String email) {
    return 'Saatsime 6-kohalise koodi aadressile\n$email';
  }

  @override
  String get verifyAndSignIn => 'Kinnitage ja logige sisse';

  @override
  String get didntReceiveCode => 'Ei saanud kätte?';

  @override
  String get tryAgain => 'Proovi uuesti';

  @override
  String get otpExpiresHint =>
      'Kood aegub 5 minuti pärast. Kontrollige oma rämpsposti kausta, kui te seda ei näe.';

  @override
  String get snackError => 'Viga';

  @override
  String get snackCopied => 'Kopeeritud';

  @override
  String get snackCopiedBody => 'Link on lõikelauale kopeeritud';

  @override
  String get snackWelcome => 'Tere tulemast';

  @override
  String get snackAccountCreated => 'Konto loodud';

  @override
  String get snackEnterEmail => 'Palun sisesta oma email';

  @override
  String get snackEnterPassword => 'Palun sisesta oma parool';

  @override
  String get snackInvalidEmail => 'Vale e-posti aadress';

  @override
  String get snackInvalidCredentials => 'Vale e-posti aadress või parool';

  @override
  String get snackPasswordMin8 => 'Parool peab koosnema vähemalt 8 tähemärgist';

  @override
  String get snackPasswordMismatch => 'Paroolid ei ühti.';

  @override
  String get snackAccountExists => 'Konto on juba olemas. Palun logi sisse.';

  @override
  String get snackSignupFailed => 'Kontot ei saanud luua. Proovi uuesti.';

  @override
  String get snackEnterOtp => 'Sisestage 6-kohaline kood';

  @override
  String get snackOtpExpired => 'Kood aegunud';

  @override
  String get snackOtpExpiredBody => 'Taotlege uut koodi.';

  @override
  String get snackInvalidCode => 'Vale kood';

  @override
  String get snackInvalidCodeBody => 'Kood on vale. Palun proovi uuesti.';

  @override
  String get snackSendCodeFailed =>
      'Koodi ei saanud saata. Kontrollige ühendust ja proovige uuesti.';

  @override
  String get snackEmptyFolder => 'Tühi kaust';

  @override
  String get snackEmptyFolderBody => 'Valitud kaustast ei leitud ühtegi faili.';

  @override
  String get snackFolderUnsupported => 'Ei toetata';

  @override
  String get snackFolderUnsupportedBody =>
      'Kausta üleslaadimine pole sellel platvormil saadaval.';

  @override
  String get snackFolderReadError => 'Valitud kausta ei õnnestunud lugeda.';

  @override
  String get snackLimitReached => 'Limiit saavutatud';

  @override
  String get snackLimitFilesBody =>
      'Mõnda faili ei lisatud suuruse või failide arvu piirangute tõttu.';

  @override
  String get snackFreePlanLimit =>
      'Tasuta pakett võimaldab kuni 5 GB ülekande kohta. Palun eemaldage mõned failid või uuendage.';

  @override
  String get snackSignInEmail => 'Meili teel saatmiseks logige sisse.';

  @override
  String get snackUploadStartFailed => 'Üleslaadimist ei saanud alustada.';

  @override
  String get snackVerifyEnterCode =>
      'Sisestage oma meilist saadud 4-kohaline kood.';

  @override
  String get snackVerifyInvalid =>
      'Kehtetu või aegunud kood. Kontrollige meili ja proovige uuesti.';

  @override
  String get snackVerifyResendFailed =>
      'Koodi ei saanud uuesti saata. Proovi uuesti.';

  @override
  String get snackDownloadComplete => 'Allalaadimine on lõpetatud';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" salvestati allalaadimiste alla';
  }

  @override
  String get snackDownloadFailed => 'Allalaadimine ebaõnnestus';

  @override
  String get snackSaved => 'Salvestatud';

  @override
  String get snackServerUrlUpdated =>
      'Serveri URL-i värskendati. Rakendamiseks taaskäivitage rakendus.';

  @override
  String get snackStoreError => 'Poe viga';

  @override
  String get snackMissingProducts => 'Puuduvad tooted';

  @override
  String get snackStoreUnavailable => 'Kauplus pole saadaval';

  @override
  String get snackStoreUnavailableBody =>
      'Rakendusesisesed ostud pole selles seadmes saadaval.';

  @override
  String get snackProductNotLoaded => 'Toode pole veel laaditud.';

  @override
  String get snackRestoreStarted => 'Taastamine algas';

  @override
  String get snackRestoreStartedBody => 'Kontrollime teie oste.';

  @override
  String get snackRestoreFailed => 'Taastamine ebaõnnestus';

  @override
  String get snackProcessing => 'Töötlemine';

  @override
  String get snackPleaseWait => 'Palun oota…';

  @override
  String get snackSuccess => 'Edu';

  @override
  String get snackPurchaseCompleted => 'Ost sooritatud.';

  @override
  String get snackPurchaseError => 'Ostu viga';

  @override
  String get snackPurchaseFailed => 'Ost ebaõnnestus.';

  @override
  String get snackCanceled => 'Tühistatud';

  @override
  String get snackPurchaseCanceled => 'Ost tühistatud.';

  @override
  String get snackUpload => 'Laadi üles';

  @override
  String get snackVerify => 'Kinnitage';

  @override
  String get doNotExpire => 'Mitte aeguda';

  @override
  String get hourSingular => 'tund';

  @override
  String get hourPlural => 'tundi';

  @override
  String get daySingular => 'päeval';

  @override
  String get dayPlural => 'päevadel';

  @override
  String get emailAddressLabel => 'MEILIAADRESS';

  @override
  String get passwordLabelCaps => 'PAROOL';

  @override
  String get confirmPasswordLabelCaps => 'KINNITA PAROOL';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ÜLEKANDE LINK VÕI ID';

  @override
  String get howToReceive => 'KUIDAS SAADA';

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
  String get planAdsTitle => 'Reklaamiplaan';

  @override
  String get planAdsBullet1 => 'Juurdepääs reklaamivabale rakendusele';

  @override
  String get planAdsBullet2 => 'Eemalda kõik reklaamid';

  @override
  String get planProTitle => 'Pro plaan';

  @override
  String get planProBullet1 => 'Saatke kuni 20 GB faile';

  @override
  String get planProBullet2 => 'Kiire üleslaadimine';

  @override
  String get planPremiumTitle => 'Premium-pakett';

  @override
  String get planPremiumBullet1 => 'Saatke kuni 100 GB faile';

  @override
  String get planPremiumBullet2 => 'Super kiire üleslaadimine';

  @override
  String get planSubscriptionDisclaimer =>
      'Prooviperioodi pole – rakenduse lisafunktsioonide kasutamiseks on vajalik tellimus. Teilt võetakse kohe tasu. Saate igal ajal tühistada.';

  @override
  String get perMonth => '/ kuus';

  @override
  String get perYear => '/ aasta';

  @override
  String get snackConnectionProblem =>
      'Ühenduse probleem. Palun proovi uuesti.';

  @override
  String get networkTitle => 'Võrk';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Failid: $count · $size baiti';
  }

  @override
  String todayAt(String time) {
    return 'Täna · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Eile · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}p tagasi · $time';
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
    return '$sent / $total • $remaining vasakule';
  }

  @override
  String get loadingShort => 'Laadimine…';

  @override
  String get colorPaletteTitle => 'Värvipalett';

  @override
  String get colorPaletteSectionBackgrounds => 'Taustad (tindi skaala)';

  @override
  String get colorPaletteSectionAccent => 'Aktsent / Esmane';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Äärised ja klaas';

  @override
  String get colorPaletteSectionSemantic => 'Semantiline';

  @override
  String get colorPaletteSectionLive => 'Reaalajas teema (praegune)';

  @override
  String get colorPaletteActiveHint => '★ = kasutatakse aktiivselt ekraanidel';

  @override
  String get colorPaletteCopyHint =>
      'Vajutage pikalt mis tahes proovi, et kopeerida selle kuueteistkümnendväärtust.';

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
  String get settingsAppBrand => 'Jaga suur\nVideofailid';

  @override
  String get loginEmailPasswordPrompt =>
      'Sisselogimiseks sisestage oma e-posti aadress ja parool.';

  @override
  String get forgotPassword => 'Unustasid parooli?';

  @override
  String get forgotPasswordTitle => 'Lähtestage parool';

  @override
  String get forgotPasswordBody =>
      'Sisestage oma konto meiliaadress ja me saadame lähtestuskoodi.';

  @override
  String get forgotPasswordSubmit => 'Saada lähtestamiskood';

  @override
  String get resetPasswordTitle => 'Loo uus parool';

  @override
  String get resetPasswordBody =>
      'Sisestage oma meilist saadud 6-kohaline kood ja valige uus parool.';

  @override
  String get resetPasswordSubmit => 'Uuenda parooli';

  @override
  String get snackPasswordResetSent => 'Lähtestamiskood saadeti';

  @override
  String get snackPasswordResetSentBody =>
      'Kontrollige oma e-kirjast 6-kohalist lähtestuskoodi.';

  @override
  String get snackPasswordResetFailed =>
      'Lähtestamiskoodi ei saanud saata. Proovi uuesti.';

  @override
  String get snackPasswordUpdated => 'Parool uuendatud';

  @override
  String get snackPasswordUpdatedBody => 'Logige sisse oma uue parooliga.';

  @override
  String get snackPasswordResetInvalid => 'Vale või aegunud lähtestamiskood.';

  @override
  String get otpDigitLabel => '6-KOGiline KOOD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count rohkem faile';
  }
}
