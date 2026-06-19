// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Deel grote videobestanden';

  @override
  String get heroAccent => 'onmiddellijk.';

  @override
  String get heroTitle => 'Verzend zware bestanden';

  @override
  String get splashLoading => 'Laden...';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Thuis';

  @override
  String get navHistory => 'Geschiedenis';

  @override
  String get navReceive => 'Ontvangen';

  @override
  String get navPlans => 'Plannen';

  @override
  String get navDownload => 'Downloaden';

  @override
  String get navSettings => 'Instellingen';

  @override
  String get modeLink => 'Ontvang een link';

  @override
  String get modeEmail => 'Verzenden per e-mail';

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
  String get pickFiles => 'Kies bestanden';

  @override
  String get pickFolder => 'Kies map';

  @override
  String get emailFrom => 'Uw e-mail';

  @override
  String get mailFromUsesAccount =>
      'Maakt gebruik van uw ingelogde e-mailadres.';

  @override
  String get recipientEmailsHelper =>
      'Meerdere ontvangers: gescheiden door komma\'s, puntkomma\'s of spaties.';

  @override
  String get emailTo => 'E-mailadres van ontvanger';

  @override
  String get messageOptional => 'Bericht (optioneel)';

  @override
  String get passwordOptional => 'Wachtwoord (optioneel)';

  @override
  String get destructAfterDownload => 'Verwijderen na downloaden';

  @override
  String get destructNo => 'Beschikbaar houden';

  @override
  String get sendButton => 'Versturen';

  @override
  String get uploading => 'Uploaden…';

  @override
  String get uploadComplete => 'Klaar';

  @override
  String get shareLinkTitle => 'Jouw link';

  @override
  String get copyLink => 'Kopieer link';

  @override
  String get share => 'Deel';

  @override
  String get shareQrCode => 'Deel QR-code';

  @override
  String get uploadMore => 'Stuur er nog een';

  @override
  String get emailSentTitle => 'E-mails verzonden';

  @override
  String get verifyEmailTitle => 'Controleer uw e-mailadres';

  @override
  String get verifyCodeHint => 'Voer de code uit uw e-mail in';

  @override
  String get verifySubmit => 'Verifiëren';

  @override
  String get verifyResendCode => 'Code opnieuw verzenden';

  @override
  String get verifyCodeSent =>
      'Er is een nieuwe verificatiecode naar uw e-mailadres verzonden.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Er is mogelijk geen verificatie-e-mail verzonden';

  @override
  String get verifyEmailSmtpWarningBody =>
      'De server kon de bezorging niet bevestigen (SMTP is vaak verkeerd geconfigureerd). Vraag uw sitebeheerder om de e-mailinstellingen in het beheerderspaneel te controleren en tik vervolgens op Code opnieuw verzenden.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Als het niet aankomt: controleer Junk/Spam en Promoties, wacht een minuut, controleer of $email geen typefouten bevat en tik vervolgens op Opnieuw verzenden.';
  }

  @override
  String get loginTitle => 'Log in';

  @override
  String get signupHint =>
      'Gebruik het e-mailadres en wachtwoord van uw siteaccount.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Wachtwoord';

  @override
  String get cancel => 'Annuleren';

  @override
  String get signIn => 'Log in';

  @override
  String get downloadIdHint => 'Overdrachts-ID';

  @override
  String get privateIdHint => 'Privé-ID (optioneel)';

  @override
  String get fetchTransfer => 'Openstaande overdracht';

  @override
  String get downloadFile => 'Downloaden';

  @override
  String get unlockDownload => 'Ontgrendel het downloaden';

  @override
  String get downloadSaved => 'Opgeslagen in Downloads';

  @override
  String get errorGeneric => 'Er is iets misgegaan';

  @override
  String get errorNetwork => 'Netwerkfout';

  @override
  String get errorBadResponse => 'Onverwachte serverreactie';

  @override
  String get termsAccept => 'Ik ga akkoord met de voorwaarden';

  @override
  String get settingsApiUrl => 'URL van openbare site';

  @override
  String get settingsAccount => 'Rekening';

  @override
  String get settingsAppearance => 'Verschijning';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get themeSystem => 'Systeem';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get settingsSignedIn => 'U bent aangemeld.';

  @override
  String get settingsSignedOut => 'U bent niet aangemeld.';

  @override
  String get settingsOpenWebsite => 'Website openen';

  @override
  String get signUp => 'Schrijf je in';

  @override
  String get settingsLinks => 'Koppelingen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get termsOfService => 'Servicevoorwaarden';

  @override
  String get about => 'Over';

  @override
  String get moreApps => 'Meer apps';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get languageEnglish => 'Engels';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Uitloggen';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get deleteAccountConfirmTitle => 'Uw account verwijderen?';

  @override
  String get deleteAccountConfirmBody =>
      'Hierdoor wordt uw account definitief verwijderd en wordt u afgemeld. Uw overdrachtslinks blijven werken, maar verschijnen niet meer in uw geschiedenis.';

  @override
  String get deleteAccountSuccess => 'Account verwijderd';

  @override
  String get deleteAccountSuccessBody => 'Uw account is verwijderd.';

  @override
  String get deleteAccountFailed => 'Kan account niet verwijderen';

  @override
  String get deleteAccountFailedBody =>
      'Probeer het opnieuw of neem contact op met de ondersteuning.';

  @override
  String get maxFilesReached => 'Te veel bestanden';

  @override
  String get fileTooLarge => 'Bestand te groot';

  @override
  String get ipLimit => 'Te veel uploads van dit netwerk';

  @override
  String get fillFields => 'Vul de verplichte velden in';

  @override
  String get invalidEmail => 'Ongeldig e-mailadres';

  @override
  String get maxRecipientsReached => 'Te veel ontvangers';

  @override
  String get loginRequiredTitle => 'Inloggen vereist';

  @override
  String get loginRequiredBody =>
      'Voor deze server is een account vereist om te kunnen uploaden of downloaden.';

  @override
  String get settingsSubtitle => 'App-voorkeuren en account.';

  @override
  String get dropHeavyFile => 'Zet hier een zwaar bestand neer.';

  @override
  String upToTotal(String max) {
    return 'Tot $max totaal';
  }

  @override
  String get removeAll => 'Verwijder alles';

  @override
  String get addFiles => 'Bestanden toevoegen';

  @override
  String get adding => 'Toevoegen…';

  @override
  String get options => 'Opties';

  @override
  String get selfDestruct => 'Zelfvernietiging na downloaden';

  @override
  String get expiry => 'Vervaldatum';

  @override
  String get cancelUpload => 'Uploaden annuleren';

  @override
  String get transferReady => 'Overdracht klaar!';

  @override
  String get emailSentReady => 'E-mail verzonden!';

  @override
  String get shareRecipientHint => 'Deel deze link met uw ontvanger.';

  @override
  String get emailSentBody =>
      'We hebben uw ontvanger(s) op de hoogte gebracht.';

  @override
  String get scanQr => 'Scan om de overdrachtslink te openen.';

  @override
  String get shareLinkButton => 'DEEL LINK';

  @override
  String get verifyFourDigit =>
      'Voer de 4-cijferige code in die naar uw afzender-e-mail is verzonden.';

  @override
  String get starting => 'Beginnen…';

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
    return '$amount MB over';
  }

  @override
  String get fillField => 'Vul dit veld in.';

  @override
  String get enterValidEmail => 'Voer een geldig e-mailadres in.';

  @override
  String get message => 'Bericht';

  @override
  String get recipientEmail => 'E-mailadres van ontvanger';

  @override
  String get active => 'Actief';

  @override
  String get expired => 'Verlopen';

  @override
  String get historyTitle => 'Mijn overboekingen';

  @override
  String get signInToSeeTransfers => 'Log in om uw overboekingen te zien';

  @override
  String get signInTransfersBody =>
      'We gebruiken uw e-mailadres om overdrachten aan uw account te koppelen - geen wachtwoord nodig.';

  @override
  String get couldNotLoadTransfers => 'Kan overdrachten niet laden';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get noTransfersYet => 'Nog geen overdrachten';

  @override
  String get noTransfersBody =>
      'Zodra u een bestand verzendt, wordt het hier weergegeven.';

  @override
  String get transferDetails => 'Overdrachtsgegevens';

  @override
  String get filesSection => 'Bestanden';

  @override
  String get receiveTitle => 'Ontvang bestanden';

  @override
  String get receiveSubtitle =>
      'Plak een overdrachtslink om bestanden te downloaden.';

  @override
  String get pasteTooltip => 'Plakken';

  @override
  String get findTransfer => 'Vind Overdracht';

  @override
  String get receiveScanQr => 'QR scannen';

  @override
  String get receiveScanQrTitle => 'Scanoverdracht QR';

  @override
  String get receiveScanQrHint => 'Lijn de QR-code uit binnen het frame.';

  @override
  String get receiveScanQrInvalid =>
      'Deze QR-code is geen geldige overdrachtslink.';

  @override
  String get receiveScanQrCameraDenied =>
      'Cameratoegang is vereist om QR-codes te scannen.';

  @override
  String get receiveStepGetLink => 'Verkrijg de link';

  @override
  String get receiveStepGetLinkBody =>
      'Vraag de afzender om de overdrachtslink met u te delen.';

  @override
  String get receiveStepPaste => 'Plakken en zoeken';

  @override
  String get receiveStepPasteBody =>
      'Plak de bovenstaande link en tik op \'Overdracht zoeken\'.';

  @override
  String get receiveStepDownload => 'Bestanden downloaden';

  @override
  String get receiveStepDownloadBody =>
      'Bekijk bestandsdetails en download alles in één keer.';

  @override
  String get lookingUpTransfer => 'Overdracht opzoeken…';

  @override
  String get transferNotFound =>
      'Overdracht niet gevonden. Controleer de link en probeer het opnieuw.';

  @override
  String get transferExpired =>
      'Deze overdracht is verlopen en is niet langer beschikbaar.';

  @override
  String get transferLoginRequired =>
      'Om toegang te krijgen tot deze overdracht is inloggen vereist.';

  @override
  String get transferBadResponse =>
      'Onverwachte serverreactie. Controleer uw verbinding.';

  @override
  String get transferNetworkError =>
      'Netwerkfout. Controleer uw internetverbinding.';

  @override
  String transferLoadFailed(String error) {
    return 'Kan overdracht niet laden: $error';
  }

  @override
  String get passwordProtected => 'Wachtwoord beveiligd';

  @override
  String get enterPassword => 'Voer wachtwoord in';

  @override
  String get unlock => 'Ontgrendelen';

  @override
  String get downloading => 'Downloaden…';

  @override
  String get downloadAllFiles => 'Alle bestanden downloaden';

  @override
  String get downloadSingleFile => 'Bestand downloaden';

  @override
  String get receiveAnother => 'Ontvang nog een overschrijving';

  @override
  String get plansTitle => 'Plannen';

  @override
  String get plansSubtitle =>
      'Upgrade om advertenties te verwijderen en grotere bestanden te verzenden.';

  @override
  String get storeUnavailable => 'Winkel niet beschikbaar';

  @override
  String get storeUnavailableBody =>
      'In-app-aankopen zijn momenteel niet beschikbaar.';

  @override
  String get storeLoadingPrices => 'Prijzen laden vanuit de App Store…';

  @override
  String get storePricesUnavailable => 'Prijzen niet beschikbaar';

  @override
  String get storePricesPartial => 'Sommige prijzen konden niet worden geladen';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded van $total abonnementsproducten geladen.';
  }

  @override
  String get storeSetupHint =>
      'Test op een echte iPhone (geen Simulator), gebruik een Sandbox Apple ID en zorg ervoor dat alle zes de abonnementen worden aangemaakt onder de bundel-ID van deze app in App Store Connect met de ingestelde prijzen.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/maand';
  }

  @override
  String get freeVersionAds =>
      'Momenteel gebruikt u onze gratis versie met advertenties';

  @override
  String get restorePurchases => 'Aankopen herstellen';

  @override
  String get plansContinue => 'Doorgaan';

  @override
  String get planLinkRestore => 'Herstellen';

  @override
  String get termsAndConditions => 'Algemene voorwaarden';

  @override
  String get createAccountTitle => 'Account aanmaken';

  @override
  String get signUpSubtitle => 'Meld u aan met e-mailadres en wachtwoord.';

  @override
  String get confirmPassword => 'Bevestig wachtwoord';

  @override
  String get passwordMin8 => 'Wachtwoord (min. 8 tekens)';

  @override
  String get alreadyHaveAccount => 'Heeft u al een account?';

  @override
  String get checkEmailTitle => 'Controleer uw\ne-mail';

  @override
  String otpSentTo(String email) {
    return 'We hebben een 6-cijferige code gestuurd naar\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifiëren en inloggen';

  @override
  String get didntReceiveCode => 'Niet ontvangen?';

  @override
  String get tryAgain => 'Probeer het opnieuw';

  @override
  String get otpExpiresHint =>
      'Code verloopt over 5 minuten. Controleer uw spammap als u deze niet ziet.';

  @override
  String get snackError => 'Fout';

  @override
  String get snackCopied => 'Gekopieerd';

  @override
  String get snackCopiedBody => 'Link gekopieerd naar klembord';

  @override
  String get snackWelcome => 'Welkom';

  @override
  String get snackAccountCreated => 'Account aangemaakt';

  @override
  String get snackEnterEmail => 'Voer uw e-mailadres in';

  @override
  String get snackEnterPassword => 'Voer uw wachtwoord in';

  @override
  String get snackInvalidEmail => 'Ongeldig e-mailadres';

  @override
  String get snackInvalidCredentials => 'Onjuist e-mailadres of wachtwoord';

  @override
  String get snackPasswordMin8 => 'Wachtwoord moet minimaal 8 tekens lang zijn';

  @override
  String get snackPasswordMismatch => 'Wachtwoorden komen niet overeen.';

  @override
  String get snackAccountExists => 'Account bestaat al. Meld u aan.';

  @override
  String get snackSignupFailed =>
      'Kan account niet aanmaken. Probeer het opnieuw.';

  @override
  String get snackEnterOtp => 'Voer de 6-cijferige code in';

  @override
  String get snackOtpExpired => 'Code verlopen';

  @override
  String get snackOtpExpiredBody => 'Vraag een nieuwe code aan.';

  @override
  String get snackInvalidCode => 'Ongeldige code';

  @override
  String get snackInvalidCodeBody => 'De code is onjuist. Probeer het opnieuw.';

  @override
  String get snackSendCodeFailed =>
      'Kan code niet verzenden. Controleer uw verbinding en probeer het opnieuw.';

  @override
  String get snackEmptyFolder => 'Lege map';

  @override
  String get snackEmptyFolderBody =>
      'Geen bestanden gevonden in de geselecteerde map.';

  @override
  String get snackFolderUnsupported => 'Niet ondersteund';

  @override
  String get snackFolderUnsupportedBody =>
      'Het uploaden van mappen is niet beschikbaar op dit platform.';

  @override
  String get snackFolderReadError => 'Kon de geselecteerde map niet lezen.';

  @override
  String get snackLimitReached => 'Limiet bereikt';

  @override
  String get snackLimitFilesBody =>
      'Sommige bestanden zijn niet toegevoegd vanwege de limieten voor de grootte of het aantal bestanden.';

  @override
  String get snackFreePlanLimit =>
      'Met het gratis abonnement is maximaal 5 GB per overdracht mogelijk. Verwijder enkele bestanden of upgrade.';

  @override
  String get snackSignInEmail => 'Meld u aan om per e-mail te verzenden.';

  @override
  String get snackUploadStartFailed => 'Kan het uploaden niet starten.';

  @override
  String get snackVerifyEnterCode =>
      'Voer de 4-cijferige code uit uw e-mail in.';

  @override
  String get snackVerifyInvalid =>
      'Ongeldige of verlopen code. Controleer de e-mail en probeer het opnieuw.';

  @override
  String get snackVerifyResendFailed =>
      'Kan code niet opnieuw verzenden. Probeer het opnieuw.';

  @override
  String get snackDownloadComplete => 'Downloaden voltooid';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" opgeslagen in Downloads';
  }

  @override
  String get snackDownloadFailed => 'Downloaden mislukt';

  @override
  String get snackSaved => 'Opgeslagen';

  @override
  String get snackServerUrlUpdated =>
      'Server-URL bijgewerkt. Start de app opnieuw om te solliciteren.';

  @override
  String get snackStoreError => 'Winkelfout';

  @override
  String get snackMissingProducts => 'Ontbrekende producten';

  @override
  String get snackStoreUnavailable => 'Winkel niet beschikbaar';

  @override
  String get snackStoreUnavailableBody =>
      'In-app-aankopen zijn niet beschikbaar op dit apparaat.';

  @override
  String get snackProductNotLoaded => 'Product is nog niet geladen.';

  @override
  String get snackRestoreStarted => 'Herstel gestart';

  @override
  String get snackRestoreStartedBody => 'Wij controleren uw aankopen.';

  @override
  String get snackRestoreFailed => 'Herstellen mislukt';

  @override
  String get snackProcessing => 'Verwerking';

  @override
  String get snackPleaseWait => 'Even geduld a.u.b....';

  @override
  String get snackSuccess => 'Succes';

  @override
  String get snackPurchaseCompleted => 'Aankoop voltooid.';

  @override
  String get snackPurchaseError => 'Aankoopfout';

  @override
  String get snackPurchaseFailed => 'Aankoop mislukt.';

  @override
  String get snackCanceled => 'Geannuleerd';

  @override
  String get snackPurchaseCanceled => 'Aankoop geannuleerd.';

  @override
  String get snackUpload => 'Uploaden';

  @override
  String get snackVerify => 'Verifiëren';

  @override
  String get doNotExpire => 'Verlopen niet';

  @override
  String get hourSingular => 'uur';

  @override
  String get hourPlural => 'uur';

  @override
  String get daySingular => 'dag';

  @override
  String get dayPlural => 'dagen';

  @override
  String get emailAddressLabel => 'E-MAILADRES';

  @override
  String get passwordLabelCaps => 'WACHTWOORD';

  @override
  String get confirmPasswordLabelCaps => 'BEVESTIG WACHTWOORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'OVERDRACHTLINK OF ID';

  @override
  String get howToReceive => 'HOE TE ONTVANGEN';

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
  String get planAdsTitle => 'Advertentieplan';

  @override
  String get planAdsBullet1 => 'Toegang tot advertenties gratis app';

  @override
  String get planAdsBullet2 => 'Verwijder alle advertenties';

  @override
  String get planProTitle => 'Pro-plan';

  @override
  String get planProBullet1 => 'Verzend bestanden tot 20 GB';

  @override
  String get planProBullet2 => 'Snel uploaden';

  @override
  String get planPremiumTitle => 'Premium-abonnement';

  @override
  String get planPremiumBullet1 => 'Verzend bestanden tot 100 GB';

  @override
  String get planPremiumBullet2 => 'Supersnel uploaden';

  @override
  String get planSubscriptionDisclaimer =>
      'Geen proefperiode – er is een abonnement vereist om de extra app-functionaliteit te gebruiken. Er worden onmiddellijk kosten in rekening gebracht. Je kunt op elk moment opzeggen.';

  @override
  String get perMonth => '/ maand';

  @override
  String get perYear => '/ jaar';

  @override
  String get snackConnectionProblem =>
      'Verbindingsprobleem. Probeer het opnieuw.';

  @override
  String get networkTitle => 'Netwerk';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Bestanden: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Vandaag · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Gisteren · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d geleden · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '${amount}MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining links';
  }

  @override
  String get loadingShort => 'Laden...';

  @override
  String get colorPaletteTitle => 'Kleurenpalet';

  @override
  String get colorPaletteSectionBackgrounds => 'Achtergronden (inktschaal)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primair';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Randen en glas';

  @override
  String get colorPaletteSectionSemantic => 'Semantisch';

  @override
  String get colorPaletteSectionLive => 'Live-thema (huidig)';

  @override
  String get colorPaletteActiveHint => '★ = actief gebruikt in schermen';

  @override
  String get colorPaletteCopyHint =>
      'Houd een staal lang ingedrukt om de hexadecimale waarde ervan te kopiëren.';

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
  String get settingsAppBrand => 'Deel groot\nVideobestanden';

  @override
  String get loginEmailPasswordPrompt =>
      'Voer uw e-mailadres en wachtwoord in om in te loggen.';

  @override
  String get forgotPassword => 'Wachtwoord vergeten?';

  @override
  String get forgotPasswordTitle => 'Wachtwoord opnieuw instellen';

  @override
  String get forgotPasswordBody =>
      'Voer het e-mailadres van uw account in en wij sturen u een resetcode.';

  @override
  String get forgotPasswordSubmit => 'Verstuur resetcode';

  @override
  String get resetPasswordTitle => 'Maak een nieuw wachtwoord aan';

  @override
  String get resetPasswordBody =>
      'Voer de 6-cijferige code uit uw e-mail in en kies een nieuw wachtwoord.';

  @override
  String get resetPasswordSubmit => 'Wachtwoord bijwerken';

  @override
  String get snackPasswordResetSent => 'Resetcode verzonden';

  @override
  String get snackPasswordResetSentBody =>
      'Controleer uw e-mail voor een 6-cijferige resetcode.';

  @override
  String get snackPasswordResetFailed =>
      'Kan de resetcode niet verzenden. Probeer het opnieuw.';

  @override
  String get snackPasswordUpdated => 'Wachtwoord bijgewerkt';

  @override
  String get snackPasswordUpdatedBody => 'Meld u aan met uw nieuwe wachtwoord.';

  @override
  String get snackPasswordResetInvalid => 'Ongeldige of verlopen resetcode.';

  @override
  String get otpDigitLabel => '6-CIJFERIGE CODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count meer bestanden';
  }
}
