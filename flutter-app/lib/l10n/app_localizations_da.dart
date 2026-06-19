// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Del store videofiler';

  @override
  String get heroAccent => 'øjeblikkeligt.';

  @override
  String get heroTitle => 'Send tunge filer';

  @override
  String get splashLoading => 'Indlæser...';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Hjem';

  @override
  String get navHistory => 'Historie';

  @override
  String get navReceive => 'Modtage';

  @override
  String get navPlans => 'Planer';

  @override
  String get navDownload => 'Download';

  @override
  String get navSettings => 'Indstillinger';

  @override
  String get modeLink => 'Få et link';

  @override
  String get modeEmail => 'Send via e-mail';

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
  String get pickFiles => 'Vælg filer';

  @override
  String get pickFolder => 'Vælg mappe';

  @override
  String get emailFrom => 'Din e-mail';

  @override
  String get mailFromUsesAccount => 'Bruger din loggede e-mail.';

  @override
  String get recipientEmailsHelper =>
      'Flere modtagere: adskilles med kommaer, semikolon eller mellemrum.';

  @override
  String get emailTo => 'Modtager e-mail';

  @override
  String get messageOptional => 'Besked (valgfrit)';

  @override
  String get passwordOptional => 'Adgangskode (valgfrit)';

  @override
  String get destructAfterDownload => 'Slet efter download';

  @override
  String get destructNo => 'Hold tilgængelig';

  @override
  String get sendButton => 'Sende';

  @override
  String get uploading => 'Uploader...';

  @override
  String get uploadComplete => 'Færdig';

  @override
  String get shareLinkTitle => 'Dit link';

  @override
  String get copyLink => 'Kopiér link';

  @override
  String get share => 'Dele';

  @override
  String get shareQrCode => 'Del QR-kode';

  @override
  String get uploadMore => 'Send en anden';

  @override
  String get emailSentTitle => 'E-mails sendt';

  @override
  String get verifyEmailTitle => 'Bekræft din e-mail';

  @override
  String get verifyCodeHint => 'Indtast koden fra din e-mail';

  @override
  String get verifySubmit => 'Verificere';

  @override
  String get verifyResendCode => 'Send kode igen';

  @override
  String get verifyCodeSent =>
      'En ny bekræftelseskode blev sendt til din e-mail.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Bekræftelses-e-mail er muligvis ikke sendt';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serveren kunne ikke bekræfte levering (ofte er SMTP forkert konfigureret). Bed din webstedsadministrator om at kontrollere Mail-indstillinger i administrationspanelet, og tryk derefter på Send kode igen.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Hvis den ikke ankommer: Tjek uønsket/spam og kampagner, vent et øjeblik, bekræft, at $email ikke har nogen stavefejl, og tryk derefter på Send igen.';
  }

  @override
  String get loginTitle => 'Log ind';

  @override
  String get signupHint => 'Brug e-mail og adgangskode til din webstedskonto.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Adgangskode';

  @override
  String get cancel => 'Ophæve';

  @override
  String get signIn => 'Log ind';

  @override
  String get downloadIdHint => 'Overfør ID';

  @override
  String get privateIdHint => 'Privat ID (valgfrit)';

  @override
  String get fetchTransfer => 'Åben overførsel';

  @override
  String get downloadFile => 'Download';

  @override
  String get unlockDownload => 'Lås download op';

  @override
  String get downloadSaved => 'Gemt i Downloads';

  @override
  String get errorGeneric => 'Noget gik galt';

  @override
  String get errorNetwork => 'Netværksfejl';

  @override
  String get errorBadResponse => 'Uventet serversvar';

  @override
  String get termsAccept => 'Jeg accepterer vilkårene';

  @override
  String get settingsApiUrl => 'Offentlig websteds-URL';

  @override
  String get settingsAccount => 'Konto';

  @override
  String get settingsAppearance => 'Udseende';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Lys';

  @override
  String get themeDark => 'Mørk';

  @override
  String get settingsSignedIn => 'Du er logget ind.';

  @override
  String get settingsSignedOut => 'Du er ikke logget ind.';

  @override
  String get settingsOpenWebsite => 'Åben hjemmeside';

  @override
  String get signUp => 'Tilmeld dig';

  @override
  String get settingsLinks => 'Links';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get termsOfService => 'Servicevilkår';

  @override
  String get about => 'Om';

  @override
  String get moreApps => 'Flere apps';

  @override
  String get settingsLanguage => 'Sprog';

  @override
  String get languageEnglish => 'engelsk';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Log ud';

  @override
  String get deleteAccount => 'Slet konto';

  @override
  String get deleteAccountConfirmTitle => 'Vil du slette din konto?';

  @override
  String get deleteAccountConfirmBody =>
      'Dette sletter din konto permanent og logger dig ud. Dine overførselslinks fortsætter med at fungere, men de vises ikke længere i din historik.';

  @override
  String get deleteAccountSuccess => 'Konto slettet';

  @override
  String get deleteAccountSuccessBody => 'Din konto er blevet fjernet.';

  @override
  String get deleteAccountFailed => 'Kontoen kunne ikke slettes';

  @override
  String get deleteAccountFailedBody =>
      'Prøv venligst igen eller kontakt support.';

  @override
  String get maxFilesReached => 'For mange filer';

  @override
  String get fileTooLarge => 'Filen er for stor';

  @override
  String get ipLimit => 'For mange uploads fra dette netværk';

  @override
  String get fillFields => 'Udfyld venligst de obligatoriske felter';

  @override
  String get invalidEmail => 'Ugyldig e-mail';

  @override
  String get maxRecipientsReached => 'For mange modtagere';

  @override
  String get loginRequiredTitle => 'Log ind påkrævet';

  @override
  String get loginRequiredBody =>
      'Denne server kræver en konto for at uploade eller downloade.';

  @override
  String get settingsSubtitle => 'App-præferencer og konto.';

  @override
  String get dropHeavyFile => 'Slip en tung fil her.';

  @override
  String upToTotal(String max) {
    return 'Op til $max i alt';
  }

  @override
  String get removeAll => 'Fjern alle';

  @override
  String get addFiles => 'Tilføj filer';

  @override
  String get adding => 'Tilføjer...';

  @override
  String get options => 'Valgmuligheder';

  @override
  String get selfDestruct => 'Selvdestruktion efter download';

  @override
  String get expiry => 'Udløb';

  @override
  String get cancelUpload => 'Annuller upload';

  @override
  String get transferReady => 'Overførsel klar!';

  @override
  String get emailSentReady => 'E-mail sendt!';

  @override
  String get shareRecipientHint => 'Del dette link med din modtager.';

  @override
  String get emailSentBody => 'Vi har underrettet din(e) modtager(e).';

  @override
  String get scanQr => 'Scan for at åbne overførselslinket.';

  @override
  String get shareLinkButton => 'DEL LINK';

  @override
  String get verifyFourDigit =>
      'Indtast den 4-cifrede kode, der er sendt til din afsender-e-mail.';

  @override
  String get starting => 'Starter...';

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
    return '$amount MB tilbage';
  }

  @override
  String get fillField => 'Udfyld venligst dette felt.';

  @override
  String get enterValidEmail => 'Indtast en gyldig e-mail.';

  @override
  String get message => 'Besked';

  @override
  String get recipientEmail => 'Modtager e-mail';

  @override
  String get active => 'Aktiv';

  @override
  String get expired => 'Udløbet';

  @override
  String get historyTitle => 'Mine overførsler';

  @override
  String get signInToSeeTransfers => 'Log ind for at se dine overførsler';

  @override
  String get signInTransfersBody =>
      'Vi bruger din e-mail til at linke overførsler til din konto - ingen adgangskode nødvendig.';

  @override
  String get couldNotLoadTransfers => 'Kunne ikke indlæse overførsler';

  @override
  String get retry => 'Prøv igen';

  @override
  String get noTransfersYet => 'Ingen overførsler endnu';

  @override
  String get noTransfersBody => 'Når du har sendt en fil, vises den her.';

  @override
  String get transferDetails => 'Overfør detaljer';

  @override
  String get filesSection => 'Filer';

  @override
  String get receiveTitle => 'Modtag filer';

  @override
  String get receiveSubtitle =>
      'Indsæt et overførselslink for at downloade filer.';

  @override
  String get pasteTooltip => 'Indsæt';

  @override
  String get findTransfer => 'Find Transfer';

  @override
  String get receiveScanQr => 'Scan QR';

  @override
  String get receiveScanQrTitle => 'Scan overførsel QR';

  @override
  String get receiveScanQrHint => 'Juster QR-koden inde i rammen.';

  @override
  String get receiveScanQrInvalid =>
      'Denne QR-kode er ikke et gyldigt overførselslink.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kameraadgang er påkrævet for at scanne QR-koder.';

  @override
  String get receiveStepGetLink => 'Hent linket';

  @override
  String get receiveStepGetLinkBody =>
      'Bed afsenderen om at dele overførselslinket med dig.';

  @override
  String get receiveStepPaste => 'Indsæt og find';

  @override
  String get receiveStepPasteBody =>
      'Indsæt linket ovenfor, og tryk på \"Find overførsel\".';

  @override
  String get receiveStepDownload => 'Download filer';

  @override
  String get receiveStepDownloadBody =>
      'Se fildetaljer og download alt på én gang.';

  @override
  String get lookingUpTransfer => 'Søger overførsel...';

  @override
  String get transferNotFound =>
      'Overførslen blev ikke fundet. Tjek linket og prøv igen.';

  @override
  String get transferExpired =>
      'Denne overførsel er udløbet og er ikke længere tilgængelig.';

  @override
  String get transferLoginRequired =>
      'Log ind er påkrævet for at få adgang til denne overførsel.';

  @override
  String get transferBadResponse => 'Uventet serversvar. Tjek din forbindelse.';

  @override
  String get transferNetworkError =>
      'Netværksfejl. Tjek din internetforbindelse.';

  @override
  String transferLoadFailed(String error) {
    return 'Kunne ikke indlæse overførsel: $error';
  }

  @override
  String get passwordProtected => 'Adgangskodebeskyttet';

  @override
  String get enterPassword => 'Indtast adgangskode';

  @override
  String get unlock => 'Lås op';

  @override
  String get downloading => 'Downloader...';

  @override
  String get downloadAllFiles => 'Download alle filer';

  @override
  String get downloadSingleFile => 'Download fil';

  @override
  String get receiveAnother => 'Modtag en anden overførsel';

  @override
  String get plansTitle => 'Planer';

  @override
  String get plansSubtitle =>
      'Opgrader for at fjerne annoncer og sende større filer.';

  @override
  String get storeUnavailable => 'Butikken er ikke tilgængelig';

  @override
  String get storeUnavailableBody =>
      'Køb i appen er ikke tilgængelige lige nu.';

  @override
  String get storeLoadingPrices => 'Indlæser priser fra App Store...';

  @override
  String get storePricesUnavailable => 'Priserne er ikke tilgængelige';

  @override
  String get storePricesPartial => 'Nogle priser kunne ikke indlæses';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded af $total abonnementsprodukter er indlæst.';
  }

  @override
  String get storeSetupHint =>
      'Test på en rigtig iPhone (ikke Simulator), brug et Sandbox Apple ID, og ​​sørg for, at alle 6 abonnementer er oprettet under denne apps bundle ID i App Store Connect med prissæt.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/måned';
  }

  @override
  String get freeVersionAds =>
      'I øjeblikket bruger du vores gratis version med annoncer';

  @override
  String get restorePurchases => 'Gendan køb';

  @override
  String get plansContinue => 'Fortsætte';

  @override
  String get planLinkRestore => 'Gendan';

  @override
  String get termsAndConditions => 'Vilkår og betingelser';

  @override
  String get createAccountTitle => 'Opret konto';

  @override
  String get signUpSubtitle => 'Tilmeld dig med e-mail og adgangskode.';

  @override
  String get confirmPassword => 'Bekræft adgangskode';

  @override
  String get passwordMin8 => 'Adgangskode (min. 8 tegn)';

  @override
  String get alreadyHaveAccount => 'Har du allerede en konto?';

  @override
  String get checkEmailTitle => 'Tjek din\ne-mail';

  @override
  String otpSentTo(String email) {
    return 'Vi sendte en 6-cifret kode til\n$email';
  }

  @override
  String get verifyAndSignIn => 'Bekræft og log ind';

  @override
  String get didntReceiveCode => 'Har du ikke modtaget den?';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get otpExpiresHint =>
      'Koden udløber om 5 minutter. Tjek din spam-mappe, hvis du ikke kan se den.';

  @override
  String get snackError => 'Fejl';

  @override
  String get snackCopied => 'Kopieret';

  @override
  String get snackCopiedBody => 'Linket er kopieret til udklipsholderen';

  @override
  String get snackWelcome => 'Velkomst';

  @override
  String get snackAccountCreated => 'Konto oprettet';

  @override
  String get snackEnterEmail => 'Indtast venligst din e-mail';

  @override
  String get snackEnterPassword => 'Indtast venligst din adgangskode';

  @override
  String get snackInvalidEmail => 'Ugyldig e-mailadresse';

  @override
  String get snackInvalidCredentials => 'Forkert e-mail eller adgangskode';

  @override
  String get snackPasswordMin8 => 'Adgangskoden skal være på mindst 8 tegn';

  @override
  String get snackPasswordMismatch => 'Adgangskoder stemmer ikke overens.';

  @override
  String get snackAccountExists =>
      'Kontoen eksisterer allerede. Log venligst ind.';

  @override
  String get snackSignupFailed => 'Kontoen kunne ikke oprettes. Prøv igen.';

  @override
  String get snackEnterOtp => 'Indtast venligst den 6-cifrede kode';

  @override
  String get snackOtpExpired => 'Koden er udløbet';

  @override
  String get snackOtpExpiredBody => 'Anmod om en ny kode.';

  @override
  String get snackInvalidCode => 'Ugyldig kode';

  @override
  String get snackInvalidCodeBody => 'Koden er forkert. Prøv venligst igen.';

  @override
  String get snackSendCodeFailed =>
      'Koden kunne ikke sendes. Tjek din forbindelse, og prøv igen.';

  @override
  String get snackEmptyFolder => 'Tom mappe';

  @override
  String get snackEmptyFolderBody => 'Ingen filer fundet i den valgte mappe.';

  @override
  String get snackFolderUnsupported => 'Ikke understøttet';

  @override
  String get snackFolderUnsupportedBody =>
      'Mappeupload er ikke tilgængelig på denne platform.';

  @override
  String get snackFolderReadError => 'Kunne ikke læse den valgte mappe.';

  @override
  String get snackLimitReached => 'Grænsen er nået';

  @override
  String get snackLimitFilesBody =>
      'Nogle filer blev ikke tilføjet på grund af størrelse eller filantal grænser.';

  @override
  String get snackFreePlanLimit =>
      'Gratis plan tillader op til 5 GB pr. overførsel. Fjern venligst nogle filer eller opgrader.';

  @override
  String get snackSignInEmail => 'Log venligst ind for at sende via e-mail.';

  @override
  String get snackUploadStartFailed => 'Kunne ikke starte upload.';

  @override
  String get snackVerifyEnterCode =>
      'Indtast den 4-cifrede kode fra din e-mail.';

  @override
  String get snackVerifyInvalid =>
      'Ugyldig eller udløbet kode. Tjek e-mailen, og prøv igen.';

  @override
  String get snackVerifyResendFailed =>
      'Koden kunne ikke sendes igen. Prøv igen.';

  @override
  String get snackDownloadComplete => 'Download fuldført';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" gemt i Downloads';
  }

  @override
  String get snackDownloadFailed => 'Download mislykkedes';

  @override
  String get snackSaved => 'Gemt';

  @override
  String get snackServerUrlUpdated =>
      'Server-URL opdateret. Genstart appen for at anvende.';

  @override
  String get snackStoreError => 'Butiksfejl';

  @override
  String get snackMissingProducts => 'Manglende produkter';

  @override
  String get snackStoreUnavailable => 'Butikken er ikke tilgængelig';

  @override
  String get snackStoreUnavailableBody =>
      'Køb i appen er ikke tilgængelige på denne enhed.';

  @override
  String get snackProductNotLoaded => 'Produktet er ikke indlæst endnu.';

  @override
  String get snackRestoreStarted => 'Gendannelse startede';

  @override
  String get snackRestoreStartedBody => 'Vi tjekker dine indkøb.';

  @override
  String get snackRestoreFailed => 'Gendannelse mislykkedes';

  @override
  String get snackProcessing => 'Forarbejdning';

  @override
  String get snackPleaseWait => 'Vent venligst...';

  @override
  String get snackSuccess => 'Succes';

  @override
  String get snackPurchaseCompleted => 'Køb gennemført.';

  @override
  String get snackPurchaseError => 'Købsfejl';

  @override
  String get snackPurchaseFailed => 'Køb mislykkedes.';

  @override
  String get snackCanceled => 'Annulleret';

  @override
  String get snackPurchaseCanceled => 'Køb annulleret.';

  @override
  String get snackUpload => 'Upload';

  @override
  String get snackVerify => 'Verificere';

  @override
  String get doNotExpire => 'Må ikke udløbe';

  @override
  String get hourSingular => 'time';

  @override
  String get hourPlural => 'timer';

  @override
  String get daySingular => 'dag';

  @override
  String get dayPlural => 'dage';

  @override
  String get emailAddressLabel => 'EMAILADRESSE';

  @override
  String get passwordLabelCaps => 'ADGANGSKODE';

  @override
  String get confirmPasswordLabelCaps => 'BEKRÆFT ADGANGSKODE';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'OVERFØRSELSLINK ELLER ID';

  @override
  String get howToReceive => 'SÅDAN MODTAGER DU';

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
  String get planAdsTitle => 'Annonceplan';

  @override
  String get planAdsBullet1 => 'Adgang til annoncefri app';

  @override
  String get planAdsBullet2 => 'Fjern alle annoncer';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Send filer op til 20 GB';

  @override
  String get planProBullet2 => 'Hurtig upload';

  @override
  String get planPremiumTitle => 'Premium-plan';

  @override
  String get planPremiumBullet1 => 'Send filer op til 100 GB';

  @override
  String get planPremiumBullet2 => 'Super hurtig upload';

  @override
  String get planSubscriptionDisclaimer =>
      'Ingen prøveperiode – abonnement er påkrævet for at bruge den ekstra app-funktionalitet. Du vil blive opkrævet med det samme. Du kan annullere når som helst.';

  @override
  String get perMonth => '/ måned';

  @override
  String get perYear => '/ år';

  @override
  String get snackConnectionProblem =>
      'Connection problem. Prøv venligst igen.';

  @override
  String get networkTitle => 'Netværk';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Filer: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'I dag · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'I går · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d siden · $time';
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
    return '$sent / $total • $remaining venstre';
  }

  @override
  String get loadingShort => 'Indlæser...';

  @override
  String get colorPaletteTitle => 'Farvepalet';

  @override
  String get colorPaletteSectionBackgrounds => 'Baggrunde (blækskala)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primær';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Border & Glas';

  @override
  String get colorPaletteSectionSemantic => 'Semantisk';

  @override
  String get colorPaletteSectionLive => 'Live-tema (aktuelt)';

  @override
  String get colorPaletteActiveHint => '★ = bruges aktivt i skærme';

  @override
  String get colorPaletteCopyHint =>
      'Tryk længe på en hvilken som helst farveprøve for at kopiere dens hex-værdi.';

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
  String get settingsAppBrand => 'Del Large\nVideo filer';

  @override
  String get loginEmailPasswordPrompt =>
      'Indtast din e-mail og adgangskode for at logge ind.';

  @override
  String get forgotPassword => 'Glemt adgangskode?';

  @override
  String get forgotPasswordTitle => 'Nulstil adgangskode';

  @override
  String get forgotPasswordBody =>
      'Indtast din konto-e-mail, og vi sender en nulstillingskode.';

  @override
  String get forgotPasswordSubmit => 'Send nulstillingskode';

  @override
  String get resetPasswordTitle => 'Opret ny adgangskode';

  @override
  String get resetPasswordBody =>
      'Indtast den 6-cifrede kode fra din e-mail, og vælg en ny adgangskode.';

  @override
  String get resetPasswordSubmit => 'Opdater adgangskode';

  @override
  String get snackPasswordResetSent => 'Nulstil kode sendt';

  @override
  String get snackPasswordResetSentBody =>
      'Tjek din e-mail for en 6-cifret nulstillingskode.';

  @override
  String get snackPasswordResetFailed =>
      'Kunne ikke sende nulstillingskode. Prøv igen.';

  @override
  String get snackPasswordUpdated => 'Adgangskode opdateret';

  @override
  String get snackPasswordUpdatedBody => 'Log ind med din nye adgangskode.';

  @override
  String get snackPasswordResetInvalid =>
      'Ugyldig eller udløbet nulstillingskode.';

  @override
  String get otpDigitLabel => '6-CIFFER KODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count flere filer';
  }
}
