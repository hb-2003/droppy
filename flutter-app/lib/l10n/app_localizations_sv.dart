// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Dela stora videofiler';

  @override
  String get heroAccent => 'omedelbart.';

  @override
  String get heroTitle => 'Skicka tunga filer';

  @override
  String get splashLoading => 'Belastning…';

  @override
  String get navSend => 'Instrumentpanel';

  @override
  String get navHome => 'Hem';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Få';

  @override
  String get navPlans => 'Planer';

  @override
  String get navDownload => 'Ladda ner';

  @override
  String get navSettings => 'Inställningar';

  @override
  String get modeLink => 'Skaffa en länk';

  @override
  String get modeEmail => 'Skicka via e-post';

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
  String get pickFiles => 'Välj filer';

  @override
  String get pickFolder => 'Välj mapp';

  @override
  String get emailFrom => 'Din e-post';

  @override
  String get mailFromUsesAccount => 'Använder din inloggade e-postadress.';

  @override
  String get recipientEmailsHelper =>
      'Flera mottagare: separera med kommatecken, semikolon eller mellanslag.';

  @override
  String get emailTo => 'Mottagarens e-post';

  @override
  String get messageOptional => 'Meddelande (valfritt)';

  @override
  String get passwordOptional => 'Lösenord (valfritt)';

  @override
  String get destructAfterDownload => 'Ta bort efter nedladdning';

  @override
  String get destructNo => 'Håll tillgänglig';

  @override
  String get sendButton => 'Skicka';

  @override
  String get uploading => 'Laddar upp...';

  @override
  String get uploadComplete => 'Gjort';

  @override
  String get shareLinkTitle => 'Din länk';

  @override
  String get copyLink => 'Kopiera länk';

  @override
  String get share => 'Dela';

  @override
  String get shareQrCode => 'Dela QR-kod';

  @override
  String get uploadMore => 'Skicka en till';

  @override
  String get emailSentTitle => 'E-postmeddelanden har skickats';

  @override
  String get verifyEmailTitle => 'Verifiera din e-post';

  @override
  String get verifyCodeHint => 'Ange koden från din e-post';

  @override
  String get verifySubmit => 'Kontrollera';

  @override
  String get verifyResendCode => 'Skicka koden igen';

  @override
  String get verifyCodeSent =>
      'En ny verifieringskod skickades till din e-post.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Verifieringsmail kanske inte har skickats';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Servern kunde inte bekräfta leverans (ofta är SMTP felkonfigurerad). Be din webbplatsadministratör att kontrollera e-postinställningarna på adminpanelen och tryck sedan på Skicka kod igen.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Om det inte kommer fram: kontrollera Skräp/Spam och Kampanjer, vänta en minut, bekräfta att $email inte har några stavfel och tryck sedan på Skicka igen.';
  }

  @override
  String get loginTitle => 'Logga in';

  @override
  String get signupHint =>
      'Använd e-postadressen och lösenordet för ditt webbplatskonto.';

  @override
  String get emailHint => 'E-post';

  @override
  String get passwordHint => 'Lösenord';

  @override
  String get cancel => 'Avboka';

  @override
  String get signIn => 'Logga in';

  @override
  String get downloadIdHint => 'Överför ID';

  @override
  String get privateIdHint => 'Privat ID (valfritt)';

  @override
  String get fetchTransfer => 'Öppen överföring';

  @override
  String get downloadFile => 'Ladda ner';

  @override
  String get unlockDownload => 'Lås upp nedladdning';

  @override
  String get downloadSaved => 'Sparad i Nedladdningar';

  @override
  String get errorGeneric => 'Något gick fel';

  @override
  String get errorNetwork => 'Nätverksfel';

  @override
  String get errorBadResponse => 'Oväntat serversvar';

  @override
  String get termsAccept => 'Jag godkänner villkoren';

  @override
  String get settingsApiUrl => 'Offentlig webbadress';

  @override
  String get settingsAccount => 'Konto';

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Ljus';

  @override
  String get themeDark => 'Mörk';

  @override
  String get settingsSignedIn => 'Du är inloggad.';

  @override
  String get settingsSignedOut => 'Du är inte inloggad.';

  @override
  String get settingsOpenWebsite => 'Öppna webbplats';

  @override
  String get signUp => 'Anmäl dig';

  @override
  String get settingsLinks => 'Länkar';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get termsOfService => 'Användarvillkor';

  @override
  String get about => 'Om';

  @override
  String get moreApps => 'Fler appar';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get languageEnglish => 'engelska';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Logga ut';

  @override
  String get deleteAccount => 'Ta bort konto';

  @override
  String get deleteAccountConfirmTitle => 'Ta bort ditt konto?';

  @override
  String get deleteAccountConfirmBody =>
      'Detta raderar ditt konto permanent och loggar ut dig. Dina överföringslänkar kommer att fortsätta fungera, men de kommer inte längre att visas i din historik.';

  @override
  String get deleteAccountSuccess => 'Kontot raderat';

  @override
  String get deleteAccountSuccessBody => 'Ditt konto har tagits bort.';

  @override
  String get deleteAccountFailed => 'Det gick inte att ta bort kontot';

  @override
  String get deleteAccountFailedBody => 'Försök igen eller kontakta supporten.';

  @override
  String get maxFilesReached => 'För många filer';

  @override
  String get fileTooLarge => 'Filen är för stor';

  @override
  String get ipLimit => 'För många uppladdningar från detta nätverk';

  @override
  String get fillFields => 'Fyll i obligatoriska fält';

  @override
  String get invalidEmail => 'Ogiltig e-postadress';

  @override
  String get maxRecipientsReached => 'För många mottagare';

  @override
  String get loginRequiredTitle => 'Logga in krävs';

  @override
  String get loginRequiredBody =>
      'Denna server kräver ett konto för att ladda upp eller ladda ner.';

  @override
  String get settingsSubtitle => 'Appinställningar och konto.';

  @override
  String get dropHeavyFile => 'Släpp en tung fil här.';

  @override
  String upToTotal(String max) {
    return 'Upp till $max totalt';
  }

  @override
  String get removeAll => 'Ta bort alla';

  @override
  String get addFiles => 'Lägg till filer';

  @override
  String get adding => 'Lägger till...';

  @override
  String get options => 'Alternativ';

  @override
  String get selfDestruct => 'Självförstörelse efter nedladdning';

  @override
  String get expiry => 'Upphörande';

  @override
  String get cancelUpload => 'Avbryt uppladdningen';

  @override
  String get transferReady => 'Transfer klar!';

  @override
  String get emailSentReady => 'E-post skickat!';

  @override
  String get shareRecipientHint => 'Dela denna länk med din mottagare.';

  @override
  String get emailSentBody => 'Vi har meddelat dina mottagare.';

  @override
  String get scanQr => 'Skanna för att öppna överföringslänken.';

  @override
  String get shareLinkButton => 'DELA LÄNK';

  @override
  String get verifyFourDigit =>
      'Ange den 4-siffriga koden som skickats till din avsändarmail.';

  @override
  String get starting => 'Startande…';

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
    return '$amount MB kvar';
  }

  @override
  String get fillField => 'Vänligen fyll i detta fält.';

  @override
  String get enterValidEmail => 'Ange en giltig e-postadress.';

  @override
  String get message => 'Meddelande';

  @override
  String get recipientEmail => 'Mottagarens e-post';

  @override
  String get active => 'Aktiv';

  @override
  String get expired => 'Utgått';

  @override
  String get historyTitle => 'Mina överföringar';

  @override
  String get signInToSeeTransfers => 'Logga in för att se dina överföringar';

  @override
  String get signInTransfersBody =>
      'Vi använder din e-post för att länka överföringar till ditt konto – inget lösenord behövs.';

  @override
  String get couldNotLoadTransfers => 'Det gick inte att ladda överföringar';

  @override
  String get retry => 'Försöka igen';

  @override
  String get noTransfersYet => 'Inga överföringar ännu';

  @override
  String get noTransfersBody => 'När du skickar en fil visas den här.';

  @override
  String get transferDetails => 'Överföringsinformation';

  @override
  String get filesSection => 'Filer';

  @override
  String get receiveTitle => 'Ta emot filer';

  @override
  String get receiveSubtitle =>
      'Klistra in en överföringslänk för att ladda ner filer.';

  @override
  String get pasteTooltip => 'Klistra';

  @override
  String get findTransfer => 'Hitta Transfer';

  @override
  String get receiveScanQr => 'Skanna QR';

  @override
  String get receiveScanQrTitle => 'Skanna överföring QR';

  @override
  String get receiveScanQrHint => 'Rikta in QR-koden inuti ramen.';

  @override
  String get receiveScanQrInvalid =>
      'Denna QR-kod är inte en giltig överföringslänk.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kameraåtkomst krävs för att skanna QR-koder.';

  @override
  String get receiveStepGetLink => 'Skaffa länken';

  @override
  String get receiveStepGetLinkBody =>
      'Be avsändaren att dela överföringslänken med dig.';

  @override
  String get receiveStepPaste => 'Klistra in & hitta';

  @override
  String get receiveStepPasteBody =>
      'Klistra in länken ovan och tryck på \"Hitta överföring\".';

  @override
  String get receiveStepDownload => 'Ladda ner filer';

  @override
  String get receiveStepDownloadBody =>
      'Se filinformation och ladda ner allt på en gång.';

  @override
  String get lookingUpTransfer => 'Söker upp överföring...';

  @override
  String get transferNotFound =>
      'Överföringen hittades inte. Kontrollera länken och försök igen.';

  @override
  String get transferExpired =>
      'Denna överföring har löpt ut och är inte längre tillgänglig.';

  @override
  String get transferLoginRequired =>
      'Logga in krävs för att komma åt denna överföring.';

  @override
  String get transferBadResponse =>
      'Oväntat serversvar. Kontrollera din anslutning.';

  @override
  String get transferNetworkError =>
      'Nätverksfel. Kontrollera din internetanslutning.';

  @override
  String transferLoadFailed(String error) {
    return 'Kunde inte ladda överföring: $error';
  }

  @override
  String get passwordProtected => 'Lösenordsskyddad';

  @override
  String get enterPassword => 'Ange lösenord';

  @override
  String get unlock => 'Låsa upp';

  @override
  String get downloading => 'Laddar ned...';

  @override
  String get downloadAllFiles => 'Ladda ner alla filer';

  @override
  String get downloadSingleFile => 'Ladda ner filen';

  @override
  String get receiveAnother => 'Ta emot en annan överföring';

  @override
  String get plansTitle => 'Planer';

  @override
  String get plansSubtitle =>
      'Uppgradera för att ta bort annonser och skicka större filer.';

  @override
  String get storeUnavailable => 'Butiken är inte tillgänglig';

  @override
  String get storeUnavailableBody =>
      'Köp i appar är inte tillgängliga just nu.';

  @override
  String get storeLoadingPrices => 'Laddar priser från App Store...';

  @override
  String get storePricesUnavailable => 'Priserna är inte tillgängliga';

  @override
  String get storePricesPartial => 'Vissa priser kunde inte laddas';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded av $total prenumerationsprodukter har laddats.';
  }

  @override
  String get storeSetupHint =>
      'Testa på en riktig iPhone (inte Simulator), använd ett Sandbox Apple ID och se till att alla 6 prenumerationer skapas under den här appens paket-ID i App Store Connect med prissättning.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/månad';
  }

  @override
  String get freeVersionAds =>
      'För närvarande använder du vår gratisversion med annonser';

  @override
  String get restorePurchases => 'Återställ inköp';

  @override
  String get plansContinue => 'Fortsätta';

  @override
  String get planLinkRestore => 'Återställa';

  @override
  String get termsAndConditions => 'Villkor';

  @override
  String get createAccountTitle => 'Skapa konto';

  @override
  String get signUpSubtitle => 'Registrera dig med e-post och lösenord.';

  @override
  String get confirmPassword => 'Bekräfta lösenord';

  @override
  String get passwordMin8 => 'Lösenord (minst 8 tecken)';

  @override
  String get alreadyHaveAccount => 'Har du redan ett konto?';

  @override
  String get checkEmailTitle => 'Kontrollera din\ne-post';

  @override
  String otpSentTo(String email) {
    return 'Vi skickade en 6-siffrig kod till\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifiera och logga in';

  @override
  String get didntReceiveCode => 'Har du inte fått det?';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get otpExpiresHint =>
      'Koden går ut om 5 minuter. Kontrollera din skräppostmapp om du inte ser den.';

  @override
  String get snackError => 'Fel';

  @override
  String get snackCopied => 'Kopierade';

  @override
  String get snackCopiedBody => 'Länken har kopierats till urklipp';

  @override
  String get snackWelcome => 'Välkomna';

  @override
  String get snackAccountCreated => 'Konto skapat';

  @override
  String get snackEnterEmail => 'Vänligen ange din e-postadress';

  @override
  String get snackEnterPassword => 'Vänligen ange ditt lösenord';

  @override
  String get snackInvalidEmail => 'Ogiltig e-postadress';

  @override
  String get snackInvalidCredentials => 'Felaktig e-postadress eller lösenord';

  @override
  String get snackPasswordMin8 => 'Lösenordet måste vara minst 8 tecken';

  @override
  String get snackPasswordMismatch => 'Lösenord stämmer inte överens.';

  @override
  String get snackAccountExists => 'Kontot finns redan. Logga in.';

  @override
  String get snackSignupFailed => 'Kunde inte skapa konto. Försök igen.';

  @override
  String get snackEnterOtp => 'Ange den 6-siffriga koden';

  @override
  String get snackOtpExpired => 'Koden har löpt ut';

  @override
  String get snackOtpExpiredBody => 'Begär en ny kod.';

  @override
  String get snackInvalidCode => 'Ogiltig kod';

  @override
  String get snackInvalidCodeBody => 'Koden är felaktig. Försök igen.';

  @override
  String get snackSendCodeFailed =>
      'Det gick inte att skicka koden. Kontrollera din anslutning och försök igen.';

  @override
  String get snackEmptyFolder => 'Tom mapp';

  @override
  String get snackEmptyFolderBody => 'Inga filer hittades i den valda mappen.';

  @override
  String get snackFolderUnsupported => 'Stöds inte';

  @override
  String get snackFolderUnsupportedBody =>
      'Mappuppladdning är inte tillgänglig på den här plattformen.';

  @override
  String get snackFolderReadError => 'Det gick inte att läsa den valda mappen.';

  @override
  String get snackLimitReached => 'Gränsen nådd';

  @override
  String get snackLimitFilesBody =>
      'Vissa filer lades inte till på grund av storleks- eller filantalgränser.';

  @override
  String get snackFreePlanLimit =>
      'Gratis plan tillåter upp till 5 GB per överföring. Ta bort några filer eller uppgradera.';

  @override
  String get snackSignInEmail => 'Logga in för att skicka via e-post.';

  @override
  String get snackUploadStartFailed =>
      'Det gick inte att starta uppladdningen.';

  @override
  String get snackVerifyEnterCode =>
      'Ange den 4-siffriga koden från din e-post.';

  @override
  String get snackVerifyInvalid =>
      'Ogiltig eller utgången kod. Kontrollera e-postmeddelandet och försök igen.';

  @override
  String get snackVerifyResendFailed =>
      'Det gick inte att skicka koden igen. Försök igen.';

  @override
  String get snackDownloadComplete => 'Nedladdningen är klar';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" har sparats i Nedladdningar';
  }

  @override
  String get snackDownloadFailed => 'Nedladdningen misslyckades';

  @override
  String get snackSaved => 'Sparad';

  @override
  String get snackServerUrlUpdated =>
      'Serverns URL uppdaterad. Starta om appen för att ansöka.';

  @override
  String get snackStoreError => 'Butiksfel';

  @override
  String get snackMissingProducts => 'Saknade produkter';

  @override
  String get snackStoreUnavailable => 'Butiken är inte tillgänglig';

  @override
  String get snackStoreUnavailableBody =>
      'Köp i appar är inte tillgängliga på den här enheten.';

  @override
  String get snackProductNotLoaded => 'Produkten är inte laddad än.';

  @override
  String get snackRestoreStarted => 'Återställning startade';

  @override
  String get snackRestoreStartedBody => 'Vi kontrollerar dina inköp.';

  @override
  String get snackRestoreFailed => 'Återställningen misslyckades';

  @override
  String get snackProcessing => 'Bearbetning';

  @override
  String get snackPleaseWait => 'Vänligen vänta...';

  @override
  String get snackSuccess => 'Framgång';

  @override
  String get snackPurchaseCompleted => 'Köpet genomfört.';

  @override
  String get snackPurchaseError => 'Köpfel';

  @override
  String get snackPurchaseFailed => 'Köpet misslyckades.';

  @override
  String get snackCanceled => 'Avbruten';

  @override
  String get snackPurchaseCanceled => 'Köpet annullerats.';

  @override
  String get snackUpload => 'Ladda upp';

  @override
  String get snackVerify => 'Kontrollera';

  @override
  String get doNotExpire => 'Upphör inte att gälla';

  @override
  String get hourSingular => 'timme';

  @override
  String get hourPlural => 'timmar';

  @override
  String get daySingular => 'dag';

  @override
  String get dayPlural => 'dagar';

  @override
  String get emailAddressLabel => 'E-POSTADRESS';

  @override
  String get passwordLabelCaps => 'LÖSENORD';

  @override
  String get confirmPasswordLabelCaps => 'BEKRÄFTA LÖSENORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ÖVERFÖRINGSLÄNK ELLER ID';

  @override
  String get howToReceive => 'HUR MAN MOTTAGAR';

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
  String get planAdsTitle => 'Annonsplan';

  @override
  String get planAdsBullet1 => 'Tillgång till annonsfri app';

  @override
  String get planAdsBullet2 => 'Ta bort alla annonser';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Skicka filer upp till 20 GB';

  @override
  String get planProBullet2 => 'Snabb uppladdning';

  @override
  String get planPremiumTitle => 'Premiumplan';

  @override
  String get planPremiumBullet1 => 'Skicka filer upp till 100 GB';

  @override
  String get planPremiumBullet2 => 'Supersnabb uppladdning';

  @override
  String get planSubscriptionDisclaimer =>
      'Ingen provperiod – prenumeration krävs för att använda den extra appfunktionaliteten. Du kommer att debiteras omedelbart. Du kan avbryta när som helst.';

  @override
  String get perMonth => '/ månad';

  @override
  String get perYear => '/ år';

  @override
  String get snackConnectionProblem => 'Anslutningsproblem. Försök igen.';

  @override
  String get networkTitle => 'Nätverk';

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
    return 'Idag · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Igår · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d sedan · $time';
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
    return '$sent / $total • $remaining kvar';
  }

  @override
  String get loadingShort => 'Belastning…';

  @override
  String get colorPaletteTitle => 'Färgpalett';

  @override
  String get colorPaletteSectionBackgrounds => 'Bakgrunder (bläckskala)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primär';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Border & Glas';

  @override
  String get colorPaletteSectionSemantic => 'Semantisk';

  @override
  String get colorPaletteSectionLive => 'Live-tema (aktuellt)';

  @override
  String get colorPaletteActiveHint => '★ = används aktivt i skärmar';

  @override
  String get colorPaletteCopyHint =>
      'Tryck länge på valfri färgruta för att kopiera dess hexadecimala värde.';

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
  String get settingsAppBrand => 'Dela Large\nVideofiler';

  @override
  String get loginEmailPasswordPrompt =>
      'Ange din e-postadress och ditt lösenord för att logga in.';

  @override
  String get forgotPassword => 'Glömt lösenordet?';

  @override
  String get forgotPasswordTitle => 'Återställ lösenord';

  @override
  String get forgotPasswordBody =>
      'Ange din e-postadress för ditt konto så skickar vi en återställningskod.';

  @override
  String get forgotPasswordSubmit => 'Skicka återställningskod';

  @override
  String get resetPasswordTitle => 'Skapa nytt lösenord';

  @override
  String get resetPasswordBody =>
      'Ange den 6-siffriga koden från din e-post och välj ett nytt lösenord.';

  @override
  String get resetPasswordSubmit => 'Uppdatera lösenord';

  @override
  String get snackPasswordResetSent => 'Återställningskoden har skickats';

  @override
  String get snackPasswordResetSentBody =>
      'Kontrollera din e-post för en 6-siffrig återställningskod.';

  @override
  String get snackPasswordResetFailed =>
      'Det gick inte att skicka återställningskoden. Försök igen.';

  @override
  String get snackPasswordUpdated => 'Lösenordet uppdaterat';

  @override
  String get snackPasswordUpdatedBody => 'Logga in med ditt nya lösenord.';

  @override
  String get snackPasswordResetInvalid =>
      'Ogiltig eller utgången återställningskod.';

  @override
  String get otpDigitLabel => '6-SIFFRIG KOD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count fler filer';
  }
}
