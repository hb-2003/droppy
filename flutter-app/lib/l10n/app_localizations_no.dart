// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Del store videofiler';

  @override
  String get heroAccent => 'umiddelbart.';

  @override
  String get heroTitle => 'Send tunge filer';

  @override
  String get splashLoading => 'Laster inn …';

  @override
  String get navSend => 'Dashbord';

  @override
  String get navHome => 'Hjem';

  @override
  String get navHistory => 'Historie';

  @override
  String get navReceive => 'Motta';

  @override
  String get navPlans => 'Planer';

  @override
  String get navDownload => 'Last ned';

  @override
  String get navSettings => 'Innstillinger';

  @override
  String get modeLink => 'Få en link';

  @override
  String get modeEmail => 'Send på e-post';

  @override
  String get modeWifi => 'Wi‑Fi';

  @override
  String get modePc => 'PC';

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
  String get pickFiles => 'Velg filer';

  @override
  String get pickFolder => 'Velg mappe';

  @override
  String get emailFrom => 'Din e-post';

  @override
  String get mailFromUsesAccount => 'Bruker den påloggede e-postadressen din.';

  @override
  String get recipientEmailsHelper =>
      'Flere mottakere: Separer med komma, semikolon eller mellomrom.';

  @override
  String get emailTo => 'Mottakers e-post';

  @override
  String get messageOptional => 'Melding (valgfritt)';

  @override
  String get passwordOptional => 'Passord (valgfritt)';

  @override
  String get destructAfterDownload => 'Slett etter nedlasting';

  @override
  String get destructNo => 'Hold tilgjengelig';

  @override
  String get sendButton => 'Sende';

  @override
  String get uploading => 'Laster opp …';

  @override
  String get uploadComplete => 'Ferdig';

  @override
  String get shareLinkTitle => 'Linken din';

  @override
  String get copyLink => 'Kopier lenken';

  @override
  String get share => 'Dele';

  @override
  String get shareQrCode => 'Del QR-kode';

  @override
  String get uploadMore => 'Send en annen';

  @override
  String get emailSentTitle => 'E-poster sendt';

  @override
  String get verifyEmailTitle => 'Bekreft e-posten din';

  @override
  String get verifyCodeHint => 'Skriv inn koden fra e-posten din';

  @override
  String get verifySubmit => 'Verifisere';

  @override
  String get verifyResendCode => 'Send kode på nytt';

  @override
  String get verifyCodeSent =>
      'En ny bekreftelseskode ble sendt til e-posten din.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Bekreftelses-e-post kan ikke ha blitt sendt';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serveren kunne ikke bekrefte levering (ofte er SMTP feilkonfigurert). Be nettstedadministratoren om å sjekke e-postinnstillingene i administrasjonspanelet, og trykk deretter på Send kode på nytt.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Hvis den ikke kommer: sjekk søppelpost/søppelpost og kampanjer, vent et minutt, bekreft at $email ikke har noen skrivefeil, og trykk deretter på Send på nytt.';
  }

  @override
  String get loginTitle => 'Logg på';

  @override
  String get signupHint =>
      'Bruk e-postadressen og passordet for nettstedets konto.';

  @override
  String get emailHint => 'E-post';

  @override
  String get passwordHint => 'Passord';

  @override
  String get cancel => 'Kansellere';

  @override
  String get signIn => 'Logg på';

  @override
  String get downloadIdHint => 'Overfør ID';

  @override
  String get privateIdHint => 'Privat ID (valgfritt)';

  @override
  String get fetchTransfer => 'Åpen overføring';

  @override
  String get downloadFile => 'Last ned';

  @override
  String get unlockDownload => 'Lås opp nedlasting';

  @override
  String get downloadSaved => 'Lagret i Nedlastinger';

  @override
  String get errorGeneric => 'Noe gikk galt';

  @override
  String get errorNetwork => 'Nettverksfeil';

  @override
  String get errorBadResponse => 'Uventet serverrespons';

  @override
  String get termsAccept => 'Jeg godtar vilkårene';

  @override
  String get settingsApiUrl => 'URL til offentlig nettsted';

  @override
  String get settingsAccount => 'Konto';

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Lys';

  @override
  String get themeDark => 'Mørk';

  @override
  String get settingsSignedIn => 'Du er logget på.';

  @override
  String get settingsSignedOut => 'Du er ikke logget på.';

  @override
  String get settingsOpenWebsite => 'Åpne nettsiden';

  @override
  String get signUp => 'Registrer deg';

  @override
  String get settingsLinks => 'Lenker';

  @override
  String get privacyPolicy => 'Personvernerklæring';

  @override
  String get termsOfService => 'Vilkår for bruk';

  @override
  String get about => 'Om';

  @override
  String get moreApps => 'Flere apper';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get languageEnglish => 'engelsk';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Logg ut';

  @override
  String get deleteAccount => 'Slett konto';

  @override
  String get deleteAccountConfirmTitle => 'Vil du slette kontoen din?';

  @override
  String get deleteAccountConfirmBody =>
      'Dette sletter kontoen din permanent og logger deg av. Overføringskoblingene vil fortsette å fungere, men de vil ikke lenger vises i loggen din.';

  @override
  String get deleteAccountSuccess => 'Konto slettet';

  @override
  String get deleteAccountSuccessBody => 'Kontoen din er fjernet.';

  @override
  String get deleteAccountFailed => 'Kunne ikke slette kontoen';

  @override
  String get deleteAccountFailedBody =>
      'Prøv igjen eller kontakt brukerstøtten.';

  @override
  String get maxFilesReached => 'For mange filer';

  @override
  String get fileTooLarge => 'Filen er for stor';

  @override
  String get ipLimit => 'For mange opplastinger fra dette nettverket';

  @override
  String get fillFields => 'Fyll ut obligatoriske felt';

  @override
  String get invalidEmail => 'Ugyldig e-post';

  @override
  String get maxRecipientsReached => 'For mange mottakere';

  @override
  String get loginRequiredTitle => 'Pålogging kreves';

  @override
  String get loginRequiredBody =>
      'Denne serveren krever en konto for å laste opp eller ned.';

  @override
  String get settingsSubtitle => 'App-preferanser og konto.';

  @override
  String get dropHeavyFile => 'Slipp en tung fil her.';

  @override
  String upToTotal(String max) {
    return 'Opptil $max totalt';
  }

  @override
  String get removeAll => 'Fjern alle';

  @override
  String get addFiles => 'Legg til filer';

  @override
  String get adding => 'Legger til …';

  @override
  String get options => 'Alternativer';

  @override
  String get selfDestruct => 'Selvdestruksjon etter nedlasting';

  @override
  String get expiry => 'Utløp';

  @override
  String get cancelUpload => 'Avbryt opplasting';

  @override
  String get transferReady => 'Overføring klar!';

  @override
  String get emailSentReady => 'E-post sendt!';

  @override
  String get shareRecipientHint => 'Del denne lenken med mottakeren din.';

  @override
  String get emailSentBody => 'Vi har varslet mottakeren(e).';

  @override
  String get scanQr => 'Skann for å åpne overføringskoblingen.';

  @override
  String get shareLinkButton => 'DEL LINK';

  @override
  String get verifyFourDigit =>
      'Skriv inn den 4-sifrede koden sendt til avsenderens e-post.';

  @override
  String get starting => 'Starter …';

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
    return '$amount MB igjen';
  }

  @override
  String get fillField => 'Vennligst fyll ut dette feltet.';

  @override
  String get enterValidEmail => 'Skriv inn en gyldig e-post.';

  @override
  String get message => 'Beskjed';

  @override
  String get recipientEmail => 'Mottakers e-post';

  @override
  String get active => 'Aktiv';

  @override
  String get expired => 'Utløpt';

  @override
  String get historyTitle => 'Mine overføringer';

  @override
  String get signInToSeeTransfers => 'Logg på for å se overføringene dine';

  @override
  String get signInTransfersBody =>
      'Vi bruker e-posten din til å koble overføringer til kontoen din – du trenger ikke passord.';

  @override
  String get couldNotLoadTransfers => 'Kunne ikke laste overføringer';

  @override
  String get retry => 'Prøv på nytt';

  @override
  String get noTransfersYet => 'Ingen overføringer ennå';

  @override
  String get noTransfersBody => 'Når du har sendt en fil, vil den vises her.';

  @override
  String get transferDetails => 'Overføringsdetaljer';

  @override
  String get filesSection => 'Filer';

  @override
  String get receiveTitle => 'Motta filer';

  @override
  String get receiveSubtitle =>
      'Lim inn en overføringskobling for å laste ned filer.';

  @override
  String get pasteTooltip => 'Lim inn';

  @override
  String get findTransfer => 'Finn Transfer';

  @override
  String get receiveScanQr => 'Skann QR';

  @override
  String get receiveScanQrTitle => 'Skann overføring QR';

  @override
  String get receiveScanQrHint => 'Juster QR-koden inne i rammen.';

  @override
  String get receiveScanQrInvalid =>
      'Denne QR-koden er ikke en gyldig overføringslenke.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kameratilgang er nødvendig for å skanne QR-koder.';

  @override
  String get receiveStepGetLink => 'Få lenken';

  @override
  String get receiveStepGetLinkBody =>
      'Be avsenderen dele overføringslenken med deg.';

  @override
  String get receiveStepPaste => 'Lim inn og finn';

  @override
  String get receiveStepPasteBody =>
      'Lim inn lenken ovenfor og trykk på \"Finn overføring\".';

  @override
  String get receiveStepDownload => 'Last ned filer';

  @override
  String get receiveStepDownloadBody =>
      'Se fildetaljer og last ned alt på en gang.';

  @override
  String get lookingUpTransfer => 'Slår opp overføring …';

  @override
  String get transferNotFound =>
      'Overføringen ble ikke funnet. Sjekk linken og prøv igjen.';

  @override
  String get transferExpired =>
      'Denne overføringen er utløpt og er ikke lenger tilgjengelig.';

  @override
  String get transferLoginRequired =>
      'Pålogging kreves for å få tilgang til denne overføringen.';

  @override
  String get transferBadResponse =>
      'Uventet serverrespons. Sjekk tilkoblingen din.';

  @override
  String get transferNetworkError =>
      'Nettverksfeil. Sjekk internettforbindelsen din.';

  @override
  String transferLoadFailed(String error) {
    return 'Kunne ikke laste overføring: $error';
  }

  @override
  String get passwordProtected => 'Passordbeskyttet';

  @override
  String get enterPassword => 'Skriv inn passord';

  @override
  String get unlock => 'Låse opp';

  @override
  String get downloading => 'Laster ned …';

  @override
  String get downloadAllFiles => 'Last ned alle filer';

  @override
  String get downloadSingleFile => 'Last ned fil';

  @override
  String get receiveAnother => 'Motta en annen overføring';

  @override
  String get plansTitle => 'Planer';

  @override
  String get plansSubtitle =>
      'Oppgrader for å fjerne annonser og sende større filer.';

  @override
  String get storeUnavailable => 'Butikken er utilgjengelig';

  @override
  String get storeUnavailableBody =>
      'Kjøp i app er ikke tilgjengelig akkurat nå.';

  @override
  String get storeLoadingPrices => 'Laster priser fra App Store …';

  @override
  String get storePricesUnavailable => 'Prisene er ikke tilgjengelige';

  @override
  String get storePricesPartial => 'Noen priser kunne ikke lastes';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded av $total abonnementsprodukter lastet.';
  }

  @override
  String get storeSetupHint =>
      'Test på en ekte iPhone (ikke Simulator), bruk en Sandbox Apple ID, og ​​sørg for at alle 6 abonnementene er opprettet under denne appens pakke-ID i App Store Connect med prissett.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/måned';
  }

  @override
  String get freeVersionAds =>
      'For øyeblikket bruker du vår gratisversjon med annonser';

  @override
  String get restorePurchases => 'Gjenopprett kjøp';

  @override
  String get plansContinue => 'Fortsette';

  @override
  String get planLinkRestore => 'Restaurere';

  @override
  String get termsAndConditions => 'Vilkår og betingelser';

  @override
  String get createAccountTitle => 'Opprett konto';

  @override
  String get signUpSubtitle => 'Registrer deg med e-post og passord.';

  @override
  String get confirmPassword => 'Bekreft passord';

  @override
  String get passwordMin8 => 'Passord (minst 8 tegn)';

  @override
  String get alreadyHaveAccount => 'Har du allerede en konto?';

  @override
  String get checkEmailTitle => 'Sjekk din\ne-post';

  @override
  String otpSentTo(String email) {
    return 'Vi sendte en 6-sifret kode til\n$email';
  }

  @override
  String get verifyAndSignIn => 'Bekreft og logg på';

  @override
  String get didntReceiveCode => 'Ikke mottatt den?';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get otpExpiresHint =>
      'Koden utløper om 5 minutter. Sjekk søppelpostmappen din hvis du ikke ser den.';

  @override
  String get snackError => 'Feil';

  @override
  String get snackCopied => 'Kopiert';

  @override
  String get snackCopiedBody => 'Linken er kopiert til utklippstavlen';

  @override
  String get snackWelcome => 'Velkomst';

  @override
  String get snackAccountCreated => 'Konto opprettet';

  @override
  String get snackEnterEmail => 'Vennligst skriv inn e-postadressen din';

  @override
  String get snackEnterPassword => 'Vennligst skriv inn passordet ditt';

  @override
  String get snackInvalidEmail => 'Ugyldig e-postadresse';

  @override
  String get snackInvalidCredentials => 'Feil e-post eller passord';

  @override
  String get snackPasswordMin8 => 'Passordet må være på minst 8 tegn';

  @override
  String get snackPasswordMismatch => 'Passord stemmer ikke.';

  @override
  String get snackAccountExists => 'Kontoen eksisterer allerede. Logg på.';

  @override
  String get snackSignupFailed => 'Kunne ikke opprette konto. Prøv igjen.';

  @override
  String get snackEnterOtp => 'Vennligst skriv inn den 6-sifrede koden';

  @override
  String get snackOtpExpired => 'Koden er utløpt';

  @override
  String get snackOtpExpiredBody => 'Vennligst be om en ny kode.';

  @override
  String get snackInvalidCode => 'Ugyldig kode';

  @override
  String get snackInvalidCodeBody => 'Koden er feil. Vennligst prøv igjen.';

  @override
  String get snackSendCodeFailed =>
      'Kunne ikke sende koden. Sjekk tilkoblingen og prøv igjen.';

  @override
  String get snackEmptyFolder => 'Tom mappe';

  @override
  String get snackEmptyFolderBody => 'Ingen filer funnet i den valgte mappen.';

  @override
  String get snackFolderUnsupported => 'Støttes ikke';

  @override
  String get snackFolderUnsupportedBody =>
      'Mappeopplasting er ikke tilgjengelig på denne plattformen.';

  @override
  String get snackFolderReadError => 'Kunne ikke lese den valgte mappen.';

  @override
  String get snackLimitReached => 'Grensen nådd';

  @override
  String get snackLimitFilesBody =>
      'Noen filer ble ikke lagt til på grunn av størrelses- eller filantallsgrenser.';

  @override
  String get snackFreePlanLimit =>
      'Gratis plan tillater opptil 5 GB per overføring. Vennligst fjern noen filer eller oppgrader.';

  @override
  String get snackSignInEmail => 'Logg på for å sende via e-post.';

  @override
  String get snackUploadStartFailed => 'Kunne ikke starte opplastingen.';

  @override
  String get snackVerifyEnterCode =>
      'Skriv inn den 4-sifrede koden fra e-posten din.';

  @override
  String get snackVerifyInvalid =>
      'Ugyldig eller utløpt kode. Sjekk e-posten og prøv igjen.';

  @override
  String get snackVerifyResendFailed =>
      'Kunne ikke sende koden på nytt. Prøv igjen.';

  @override
  String get snackDownloadComplete => 'Nedlasting fullført';

  @override
  String snackDownloadSaved(String filename) {
    return '«$filename» lagret i Nedlastinger';
  }

  @override
  String get snackDownloadFailed => 'Nedlasting mislyktes';

  @override
  String get snackSaved => 'Lagret';

  @override
  String get snackServerUrlUpdated =>
      'Server URL oppdatert. Start appen på nytt for å søke.';

  @override
  String get snackStoreError => 'Butikkfeil';

  @override
  String get snackMissingProducts => 'Mangler produkter';

  @override
  String get snackStoreUnavailable => 'Butikken er utilgjengelig';

  @override
  String get snackStoreUnavailableBody =>
      'Kjøp i appen er ikke tilgjengelig på denne enheten.';

  @override
  String get snackProductNotLoaded => 'Produktet er ikke lastet inn ennå.';

  @override
  String get snackRestoreStarted => 'Gjenoppretting startet';

  @override
  String get snackRestoreStartedBody => 'Vi sjekker kjøpene dine.';

  @override
  String get snackRestoreFailed => 'Gjenoppretting mislyktes';

  @override
  String get snackProcessing => 'Behandling';

  @override
  String get snackPleaseWait => 'Vennligst vent...';

  @override
  String get snackSuccess => 'Suksess';

  @override
  String get snackPurchaseCompleted => 'Kjøp fullført.';

  @override
  String get snackPurchaseError => 'Kjøpsfeil';

  @override
  String get snackPurchaseFailed => 'Kjøpet mislyktes.';

  @override
  String get snackCanceled => 'Kansellert';

  @override
  String get snackPurchaseCanceled => 'Kjøp kansellert.';

  @override
  String get snackUpload => 'Last opp';

  @override
  String get snackVerify => 'Verifisere';

  @override
  String get doNotExpire => 'Ikke utløp';

  @override
  String get hourSingular => 'time';

  @override
  String get hourPlural => 'timer';

  @override
  String get daySingular => 'dag';

  @override
  String get dayPlural => 'dager';

  @override
  String get emailAddressLabel => 'EMAILADRESSE';

  @override
  String get passwordLabelCaps => 'PASSORD';

  @override
  String get confirmPasswordLabelCaps => 'BEKREFT PASSORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'OVERFØRSELENKE ELLER ID';

  @override
  String get howToReceive => 'HVORDAN MOTTA';

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
  String get planAdsTitle => 'Annonseplan';

  @override
  String get planAdsBullet1 => 'Tilgang til annonsefri app';

  @override
  String get planAdsBullet2 => 'Fjern alle annonser';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Send filer på opptil 20 GB';

  @override
  String get planProBullet2 => 'Rask opplasting';

  @override
  String get planPremiumTitle => 'Premium-plan';

  @override
  String get planPremiumBullet1 => 'Send filer på opptil 100 GB';

  @override
  String get planPremiumBullet2 => 'Superrask opplasting';

  @override
  String get planSubscriptionDisclaimer =>
      'Ingen prøveperiode – abonnement kreves for å bruke tilleggsfunksjonaliteten i appen. Du vil bli belastet umiddelbart. Du kan avbryte når som helst.';

  @override
  String get perMonth => '/ måned';

  @override
  String get perYear => '/ år';

  @override
  String get snackConnectionProblem =>
      'Tilkoblingsproblem. Vennligst prøv igjen.';

  @override
  String get networkTitle => 'Nettverk';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Filer: $count · $size byte';
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
  String get loadingShort => 'Laster inn …';

  @override
  String get colorPaletteTitle => 'Fargepalett';

  @override
  String get colorPaletteSectionBackgrounds => 'Bakgrunner (blekkskala)';

  @override
  String get colorPaletteSectionAccent => 'Aksent / Primær';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Border & Glass';

  @override
  String get colorPaletteSectionSemantic => 'Semantisk';

  @override
  String get colorPaletteSectionLive => 'Live-tema (nåværende)';

  @override
  String get colorPaletteActiveHint => '★ = brukes aktivt i skjermer';

  @override
  String get colorPaletteCopyHint =>
      'Trykk lenge på hvilken som helst fargeprøve for å kopiere hex-verdien.';

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
  String get settingsAppBrand => 'Del Large\nVideofiler';

  @override
  String get loginEmailPasswordPrompt =>
      'Skriv inn e-post og passord for å logge på.';

  @override
  String get forgotPassword => 'Glemt passord?';

  @override
  String get forgotPasswordTitle => 'Tilbakestill passord';

  @override
  String get forgotPasswordBody =>
      'Skriv inn e-postadressen for kontoen din, så sender vi en tilbakestillingskode.';

  @override
  String get forgotPasswordSubmit => 'Send tilbakestillingskode';

  @override
  String get resetPasswordTitle => 'Opprett nytt passord';

  @override
  String get resetPasswordBody =>
      'Skriv inn den 6-sifrede koden fra e-posten din og velg et nytt passord.';

  @override
  String get resetPasswordSubmit => 'Oppdater passord';

  @override
  String get snackPasswordResetSent => 'Tilbakestill kode sendt';

  @override
  String get snackPasswordResetSentBody =>
      'Sjekk e-posten din for en 6-sifret tilbakestillingskode.';

  @override
  String get snackPasswordResetFailed =>
      'Kunne ikke sende tilbakestillingskode. Prøv igjen.';

  @override
  String get snackPasswordUpdated => 'Passord oppdatert';

  @override
  String get snackPasswordUpdatedBody => 'Logg på med ditt nye passord.';

  @override
  String get snackPasswordResetInvalid =>
      'Ugyldig eller utløpt tilbakestillingskode.';

  @override
  String get otpDigitLabel => '6-SIFFERT KODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count flere filer';
  }
}
