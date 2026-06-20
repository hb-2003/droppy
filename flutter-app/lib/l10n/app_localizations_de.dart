// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Teilen Sie große Videodateien';

  @override
  String get heroAccent => 'sofort.';

  @override
  String get heroTitle => 'Senden Sie umfangreiche Dateien';

  @override
  String get splashLoading => 'Laden…';

  @override
  String get navSend => 'Armaturenbrett';

  @override
  String get navHome => 'Heim';

  @override
  String get navHistory => 'Geschichte';

  @override
  String get navReceive => 'Erhalten';

  @override
  String get navPlans => 'Pläne';

  @override
  String get navDownload => 'Herunterladen';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get modeLink => 'Holen Sie sich einen Link';

  @override
  String get modeEmail => 'Per E-Mail versenden';

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
  String get pickFiles => 'Wählen Sie Dateien aus';

  @override
  String get pickFolder => 'Ordner auswählen';

  @override
  String get emailFrom => 'Ihre E-Mail';

  @override
  String get mailFromUsesAccount =>
      'Verwendet Ihre angemeldete E-Mail-Adresse.';

  @override
  String get recipientEmailsHelper =>
      'Mehrere Empfänger: durch Kommas, Semikolons oder Leerzeichen trennen.';

  @override
  String get emailTo => 'Empfänger-E-Mail';

  @override
  String get messageOptional => 'Nachricht (optional)';

  @override
  String get passwordOptional => 'Passwort (optional)';

  @override
  String get destructAfterDownload => 'Nach dem Download löschen';

  @override
  String get destructNo => 'Verfügbar halten';

  @override
  String get sendButton => 'Schicken';

  @override
  String get uploading => 'Hochladen…';

  @override
  String get uploadComplete => 'Erledigt';

  @override
  String get shareLinkTitle => 'Dein Link';

  @override
  String get copyLink => 'Link kopieren';

  @override
  String get share => 'Aktie';

  @override
  String get shareQrCode => 'Teilen Sie den QR-Code';

  @override
  String get uploadMore => 'Schicken Sie noch einen';

  @override
  String get emailSentTitle => 'E-Mails gesendet';

  @override
  String get verifyEmailTitle => 'Bestätigen Sie Ihre E-Mail';

  @override
  String get verifyCodeHint => 'Geben Sie den Code aus Ihrer E-Mail ein';

  @override
  String get verifySubmit => 'Verifizieren';

  @override
  String get verifyResendCode => 'Code erneut senden';

  @override
  String get verifyCodeSent =>
      'Ein neuer Bestätigungscode wurde an Ihre E-Mail-Adresse gesendet.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Möglicherweise wurde keine Bestätigungs-E-Mail gesendet';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Der Server konnte die Zustellung nicht bestätigen (häufig ist SMTP falsch konfiguriert). Bitten Sie Ihren Site-Administrator, die E-Mail-Einstellungen im Admin-Bereich zu überprüfen und dann auf Code erneut senden zu tippen.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Wenn es nicht ankommt: Überprüfen Sie Junk/Spam und Werbung, warten Sie eine Minute, stellen Sie sicher, dass $email keine Tippfehler enthält, und tippen Sie dann auf Erneut senden.';
  }

  @override
  String get loginTitle => 'anmelden';

  @override
  String get signupHint =>
      'Verwenden Sie die E-Mail-Adresse und das Passwort Ihres Site-Kontos.';

  @override
  String get emailHint => 'E-Mail';

  @override
  String get passwordHint => 'Passwort';

  @override
  String get cancel => 'Stornieren';

  @override
  String get signIn => 'anmelden';

  @override
  String get downloadIdHint => 'Transfer-ID';

  @override
  String get privateIdHint => 'Privater Ausweis (optional)';

  @override
  String get fetchTransfer => 'Offene Übertragung';

  @override
  String get downloadFile => 'Herunterladen';

  @override
  String get unlockDownload => 'Download freischalten';

  @override
  String get downloadSaved => 'Unter „Downloads“ gespeichert';

  @override
  String get errorGeneric => 'Etwas ist schief gelaufen';

  @override
  String get errorNetwork => 'Netzwerkfehler';

  @override
  String get errorBadResponse => 'Unerwartete Serverantwort';

  @override
  String get termsAccept => 'Ich stimme den Bedingungen zu';

  @override
  String get settingsApiUrl => 'URL der öffentlichen Website';

  @override
  String get settingsAccount => 'Konto';

  @override
  String get settingsAppearance => 'Aussehen';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get settingsSignedIn => 'Sie sind angemeldet.';

  @override
  String get settingsSignedOut => 'Sie sind nicht angemeldet.';

  @override
  String get settingsOpenWebsite => 'Website öffnen';

  @override
  String get signUp => 'Melden Sie sich an';

  @override
  String get settingsLinks => 'Links';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get about => 'Um';

  @override
  String get moreApps => 'Weitere Apps';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get languageEnglish => 'Englisch';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Abmelden';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get deleteAccountConfirmTitle => 'Konto löschen?';

  @override
  String get deleteAccountConfirmBody =>
      'Dadurch wird Ihr Konto dauerhaft gelöscht und Sie werden abgemeldet. Ihre Übertragungslinks funktionieren weiterhin, werden jedoch nicht mehr in Ihrem Verlauf angezeigt.';

  @override
  String get deleteAccountSuccess => 'Konto gelöscht';

  @override
  String get deleteAccountSuccessBody => 'Ihr Konto wurde entfernt.';

  @override
  String get deleteAccountFailed => 'Konto konnte nicht gelöscht werden';

  @override
  String get deleteAccountFailedBody =>
      'Bitte versuchen Sie es erneut oder wenden Sie sich an den Support.';

  @override
  String get maxFilesReached => 'Zu viele Dateien';

  @override
  String get fileTooLarge => 'Datei zu groß';

  @override
  String get ipLimit => 'Zu viele Uploads aus diesem Netzwerk';

  @override
  String get fillFields => 'Bitte füllen Sie die Pflichtfelder aus';

  @override
  String get invalidEmail => 'Ungültige E-Mail';

  @override
  String get maxRecipientsReached => 'Zu viele Empfänger';

  @override
  String get loginRequiredTitle => 'Anmeldung erforderlich';

  @override
  String get loginRequiredBody =>
      'Zum Hochladen oder Herunterladen dieses Servers ist ein Konto erforderlich.';

  @override
  String get settingsSubtitle => 'App-Einstellungen und Konto.';

  @override
  String get dropHeavyFile => 'Legen Sie hier eine umfangreiche Datei ab.';

  @override
  String upToTotal(String max) {
    return 'Bis zu $max insgesamt';
  }

  @override
  String get removeAll => 'Alles entfernen';

  @override
  String get addFiles => 'Dateien hinzufügen';

  @override
  String get adding => 'Hinzufügen…';

  @override
  String get options => 'Optionen';

  @override
  String get selfDestruct => 'Selbstzerstörung nach dem Download';

  @override
  String get expiry => 'Ablauf';

  @override
  String get cancelUpload => 'Hochladen abbrechen';

  @override
  String get transferReady => 'Transfer bereit!';

  @override
  String get emailSentReady => 'E-Mail gesendet!';

  @override
  String get shareRecipientHint =>
      'Teilen Sie diesen Link mit Ihrem Empfänger.';

  @override
  String get emailSentBody =>
      'Wir haben Ihren/Ihre(n) Empfänger benachrichtigt.';

  @override
  String get scanQr => 'Scannen Sie, um den Übertragungslink zu öffnen.';

  @override
  String get shareLinkButton => 'LINK TEILEN';

  @override
  String get verifyFourDigit =>
      'Geben Sie den 4-stelligen Code ein, der an die E-Mail-Adresse Ihres Absenders gesendet wurde.';

  @override
  String get starting => 'Beginnend mit …';

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
    return '$amount MB übrig';
  }

  @override
  String get fillField => 'Bitte füllen Sie dieses Feld aus.';

  @override
  String get enterValidEmail => 'Geben Sie eine gültige E-Mail-Adresse ein.';

  @override
  String get message => 'Nachricht';

  @override
  String get recipientEmail => 'Empfänger-E-Mail';

  @override
  String get active => 'Aktiv';

  @override
  String get expired => 'Abgelaufen';

  @override
  String get historyTitle => 'Meine Überweisungen';

  @override
  String get signInToSeeTransfers =>
      'Melden Sie sich an, um Ihre Überweisungen anzuzeigen';

  @override
  String get signInTransfersBody =>
      'Wir verwenden Ihre E-Mail-Adresse, um Überweisungen mit Ihrem Konto zu verknüpfen – kein Passwort erforderlich.';

  @override
  String get couldNotLoadTransfers =>
      'Übertragungen konnten nicht geladen werden';

  @override
  String get retry => 'Wiederholen';

  @override
  String get noTransfersYet => 'Noch keine Überweisungen';

  @override
  String get noTransfersBody =>
      'Sobald Sie eine Datei gesendet haben, wird sie hier angezeigt.';

  @override
  String get transferDetails => 'Übertragungsdetails';

  @override
  String get filesSection => 'Dateien';

  @override
  String get receiveTitle => 'Dateien empfangen';

  @override
  String get receiveSubtitle =>
      'Fügen Sie einen Übertragungslink ein, um Dateien herunterzuladen.';

  @override
  String get pasteTooltip => 'Paste';

  @override
  String get findTransfer => 'Finden Sie Transfer';

  @override
  String get receiveScanQr => 'QR scannen';

  @override
  String get receiveScanQrTitle => 'Scannen Sie den Übertragungs-QR';

  @override
  String get receiveScanQrHint =>
      'Richten Sie den QR-Code innerhalb des Rahmens aus.';

  @override
  String get receiveScanQrInvalid =>
      'Dieser QR-Code ist kein gültiger Übertragungslink.';

  @override
  String get receiveScanQrCameraDenied =>
      'Zum Scannen von QR-Codes ist ein Zugriff auf die Kamera erforderlich.';

  @override
  String get receiveStepGetLink => 'Holen Sie sich den Link';

  @override
  String get receiveStepGetLinkBody =>
      'Bitten Sie den Absender, den Übertragungslink mit Ihnen zu teilen.';

  @override
  String get receiveStepPaste => 'Einfügen und finden';

  @override
  String get receiveStepPasteBody =>
      'Fügen Sie den obigen Link ein und tippen Sie auf „Übertragung suchen“.';

  @override
  String get receiveStepDownload => 'Dateien herunterladen';

  @override
  String get receiveStepDownloadBody =>
      'Sehen Sie sich Dateidetails an und laden Sie alles auf einmal herunter.';

  @override
  String get lookingUpTransfer => 'Suche nach Transfer…';

  @override
  String get transferNotFound =>
      'Übertragung nicht gefunden. Überprüfen Sie den Link und versuchen Sie es erneut.';

  @override
  String get transferExpired =>
      'Diese Übertragung ist abgelaufen und nicht mehr verfügbar.';

  @override
  String get transferLoginRequired =>
      'Für den Zugriff auf diese Übertragung ist eine Anmeldung erforderlich.';

  @override
  String get transferBadResponse =>
      'Unerwartete Serverantwort. Überprüfen Sie Ihre Verbindung.';

  @override
  String get transferNetworkError =>
      'Netzwerkfehler. Überprüfen Sie Ihre Internetverbindung.';

  @override
  String transferLoadFailed(String error) {
    return 'Übertragung konnte nicht geladen werden: $error';
  }

  @override
  String get passwordProtected => 'Passwortgeschützt';

  @override
  String get enterPassword => 'Passwort eingeben';

  @override
  String get unlock => 'Entsperren';

  @override
  String get downloading => 'Herunterladen…';

  @override
  String get downloadAllFiles => 'Laden Sie alle Dateien herunter';

  @override
  String get downloadSingleFile => 'Datei herunterladen';

  @override
  String get receiveAnother => 'Erhalten Sie eine weitere Überweisung';

  @override
  String get plansTitle => 'Pläne';

  @override
  String get plansSubtitle =>
      'Führen Sie ein Upgrade durch, um Werbung zu entfernen und größere Dateien zu senden.';

  @override
  String get storeUnavailable => 'Shop nicht verfügbar';

  @override
  String get storeUnavailableBody =>
      'In-App-Käufe sind derzeit nicht verfügbar.';

  @override
  String get storeLoadingPrices => 'Preise aus dem App Store werden geladen…';

  @override
  String get storePricesUnavailable => 'Preise nicht verfügbar';

  @override
  String get storePricesPartial => 'Einige Preise konnten nicht geladen werden';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded von $total Abonnementprodukten geladen.';
  }

  @override
  String get storeSetupHint =>
      'Testen Sie auf einem echten iPhone (nicht auf dem Simulator), verwenden Sie eine Sandbox-Apple-ID und stellen Sie sicher, dass alle 6 Abonnements unter der Bundle-ID dieser App im App Store Connect mit festgelegten Preisen erstellt werden.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/Monat';
  }

  @override
  String get freeVersionAds =>
      'Derzeit nutzen Sie unsere kostenlose Version mit Werbung';

  @override
  String get restorePurchases => 'Einkäufe wiederherstellen';

  @override
  String get plansContinue => 'Weitermachen';

  @override
  String get planLinkRestore => 'Wiederherstellen';

  @override
  String get termsAndConditions => 'Geschäftsbedingungen';

  @override
  String get createAccountTitle => 'Benutzerkonto erstellen';

  @override
  String get signUpSubtitle => 'Melden Sie sich mit E-Mail und Passwort an.';

  @override
  String get confirmPassword => 'Passwort bestätigen';

  @override
  String get passwordMin8 => 'Passwort (mindestens 8 Zeichen)';

  @override
  String get alreadyHaveAccount => 'Sie haben bereits ein Konto?';

  @override
  String get checkEmailTitle => 'Überprüfen Sie Ihre\nE-Mail';

  @override
  String otpSentTo(String email) {
    return 'Wir haben einen 6-stelligen Code an gesendet\n$email';
  }

  @override
  String get verifyAndSignIn => 'Bestätigen und anmelden';

  @override
  String get didntReceiveCode => 'Sie haben es nicht erhalten?';

  @override
  String get tryAgain => 'Versuchen Sie es erneut';

  @override
  String get otpExpiresHint =>
      'Der Code läuft in 5 Minuten ab. Überprüfen Sie Ihren Spam-Ordner, wenn Sie ihn nicht sehen.';

  @override
  String get snackError => 'Fehler';

  @override
  String get snackCopied => 'Kopiert';

  @override
  String get snackCopiedBody => 'Link in die Zwischenablage kopiert';

  @override
  String get snackWelcome => 'Willkommen';

  @override
  String get snackAccountCreated => 'Konto erstellt';

  @override
  String get snackEnterEmail => 'Bitte geben Sie Ihre E-Mail-Adresse ein';

  @override
  String get snackEnterPassword => 'Bitte geben Sie Ihr Passwort ein';

  @override
  String get snackInvalidEmail => 'Ungültige E-Mail-Adresse';

  @override
  String get snackInvalidCredentials =>
      'Falsche E-Mail-Adresse oder falsches Passwort';

  @override
  String get snackPasswordMin8 =>
      'Das Passwort muss mindestens 8 Zeichen lang sein';

  @override
  String get snackPasswordMismatch => 'Passwörter stimmen nicht überein.';

  @override
  String get snackAccountExists =>
      'Konto existiert bereits. Bitte melden Sie sich an.';

  @override
  String get snackSignupFailed =>
      'Konto konnte nicht erstellt werden. Versuchen Sie es erneut.';

  @override
  String get snackEnterOtp => 'Bitte geben Sie den 6-stelligen Code ein';

  @override
  String get snackOtpExpired => 'Code abgelaufen';

  @override
  String get snackOtpExpiredBody => 'Bitte fordern Sie einen neuen Code an.';

  @override
  String get snackInvalidCode => 'Ungültiger Code';

  @override
  String get snackInvalidCodeBody =>
      'Der Code ist falsch. Bitte versuchen Sie es erneut.';

  @override
  String get snackSendCodeFailed =>
      'Code konnte nicht gesendet werden. Überprüfen Sie Ihre Verbindung und versuchen Sie es erneut.';

  @override
  String get snackEmptyFolder => 'Leerer Ordner';

  @override
  String get snackEmptyFolderBody =>
      'Im ausgewählten Ordner wurden keine Dateien gefunden.';

  @override
  String get snackFolderUnsupported => 'Nicht unterstützt';

  @override
  String get snackFolderUnsupportedBody =>
      'Das Hochladen von Ordnern ist auf dieser Plattform nicht verfügbar.';

  @override
  String get snackFolderReadError =>
      'Der ausgewählte Ordner konnte nicht gelesen werden.';

  @override
  String get snackLimitReached => 'Limit erreicht';

  @override
  String get snackLimitFilesBody =>
      'Einige Dateien wurden aufgrund von Größen- oder Dateianzahlbeschränkungen nicht hinzugefügt.';

  @override
  String get snackFreePlanLimit =>
      'Der kostenlose Plan ermöglicht bis zu 5 GB pro Übertragung. Bitte entfernen Sie einige Dateien oder führen Sie ein Upgrade durch.';

  @override
  String get snackSignInEmail =>
      'Bitte melden Sie sich an, um per E-Mail zu senden.';

  @override
  String get snackUploadStartFailed =>
      'Der Upload konnte nicht gestartet werden.';

  @override
  String get snackVerifyEnterCode =>
      'Geben Sie den 4-stelligen Code aus Ihrer E-Mail ein.';

  @override
  String get snackVerifyInvalid =>
      'Ungültiger oder abgelaufener Code. Überprüfen Sie die E-Mail und versuchen Sie es erneut.';

  @override
  String get snackVerifyResendFailed =>
      'Code konnte nicht erneut gesendet werden. Versuchen Sie es erneut.';

  @override
  String get snackDownloadComplete => 'Download abgeschlossen';

  @override
  String snackDownloadSaved(String filename) {
    return '„$filename“ wurde unter „Downloads“ gespeichert';
  }

  @override
  String get snackDownloadFailed => 'Der Download ist fehlgeschlagen';

  @override
  String get snackSaved => 'Gespeichert';

  @override
  String get snackServerUrlUpdated =>
      'Server-URL aktualisiert. Starten Sie die App neu, um sie anzuwenden.';

  @override
  String get snackStoreError => 'Speicherfehler';

  @override
  String get snackMissingProducts => 'Fehlende Produkte';

  @override
  String get snackStoreUnavailable => 'Shop nicht verfügbar';

  @override
  String get snackStoreUnavailableBody =>
      'In-App-Käufe sind auf diesem Gerät nicht verfügbar.';

  @override
  String get snackProductNotLoaded => 'Das Produkt ist noch nicht geladen.';

  @override
  String get snackRestoreStarted => 'Wiederherstellung gestartet';

  @override
  String get snackRestoreStartedBody => 'Wir prüfen Ihre Einkäufe.';

  @override
  String get snackRestoreFailed => 'Wiederherstellung fehlgeschlagen';

  @override
  String get snackProcessing => 'Verarbeitung';

  @override
  String get snackPleaseWait => 'Bitte warten…';

  @override
  String get snackSuccess => 'Erfolg';

  @override
  String get snackPurchaseCompleted => 'Kauf abgeschlossen.';

  @override
  String get snackPurchaseError => 'Kauffehler';

  @override
  String get snackPurchaseFailed => 'Der Kauf ist fehlgeschlagen.';

  @override
  String get snackCanceled => 'Abgesagt';

  @override
  String get snackPurchaseCanceled => 'Kauf storniert.';

  @override
  String get snackUpload => 'Hochladen';

  @override
  String get snackVerify => 'Verifizieren';

  @override
  String get doNotExpire => 'Nicht ablaufen';

  @override
  String get hourSingular => 'Stunde';

  @override
  String get hourPlural => 'Std.';

  @override
  String get daySingular => 'Tag';

  @override
  String get dayPlural => 'Tage';

  @override
  String get emailAddressLabel => 'E-MAIL-ADRESSE';

  @override
  String get passwordLabelCaps => 'PASSWORT';

  @override
  String get confirmPasswordLabelCaps => 'PASSWORT BESTÄTIGEN';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'TRANSFER LINK OR ID';

  @override
  String get howToReceive => 'SO ERHALTEN SIE';

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
  String get planAdsTitle => 'Werbeplan';

  @override
  String get planAdsBullet1 => 'Zugriff auf die werbefreie App';

  @override
  String get planAdsBullet2 => 'Entfernen Sie alle Anzeigen';

  @override
  String get planProTitle => 'Pro-Plan';

  @override
  String get planProBullet1 => 'Senden Sie Dateien bis zu 20 GB';

  @override
  String get planProBullet2 => 'Schneller Upload';

  @override
  String get planPremiumTitle => 'Premium-Plan';

  @override
  String get planPremiumBullet1 => 'Senden Sie Dateien bis zu 100 GB';

  @override
  String get planPremiumBullet2 => 'Superschneller Upload';

  @override
  String get planSubscriptionDisclaimer =>
      'Kein Testzeitraum – für die Nutzung der zusätzlichen App-Funktionalität ist ein Abonnement erforderlich. Der Betrag wird Ihnen sofort in Rechnung gestellt. Sie können jederzeit kündigen.';

  @override
  String get perMonth => '/ Monat';

  @override
  String get perYear => '/ Jahr';

  @override
  String get snackConnectionProblem =>
      'Verbindungsproblem. Bitte versuchen Sie es erneut.';

  @override
  String get networkTitle => 'Netzwerk';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Dateien: $count · $size Bytes';
  }

  @override
  String todayAt(String time) {
    return 'Heute · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Gestern · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Vor ${days}d · $time';
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
    return '$sent / $total • $remaining links';
  }

  @override
  String get loadingShort => 'Laden…';

  @override
  String get colorPaletteTitle => 'Farbpalette';

  @override
  String get colorPaletteSectionBackgrounds => 'Hintergründe (Tintenskala)';

  @override
  String get colorPaletteSectionAccent => 'Akzent / Primär';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Grenzen & Glas';

  @override
  String get colorPaletteSectionSemantic => 'Semantisch';

  @override
  String get colorPaletteSectionLive => 'Live-Thema (aktuell)';

  @override
  String get colorPaletteActiveHint => '★ = aktiv in Bildschirmen verwendet';

  @override
  String get colorPaletteCopyHint =>
      'Drücken Sie lange auf ein beliebiges Farbfeld, um seinen Hexadezimalwert zu kopieren.';

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
  String get settingsAppBrand => 'Groß teilen\nVideodateien';

  @override
  String get loginEmailPasswordPrompt =>
      'Geben Sie Ihre E-Mail-Adresse und Ihr Passwort ein, um sich anzumelden.';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get forgotPasswordTitle => 'Passwort zurücksetzen';

  @override
  String get forgotPasswordBody =>
      'Geben Sie die E-Mail-Adresse Ihres Kontos ein und wir senden Ihnen einen Reset-Code.';

  @override
  String get forgotPasswordSubmit => 'Reset-Code senden';

  @override
  String get resetPasswordTitle => 'Neues Passwort erstellen';

  @override
  String get resetPasswordBody =>
      'Geben Sie den 6-stelligen Code aus Ihrer E-Mail ein und wählen Sie ein neues Passwort.';

  @override
  String get resetPasswordSubmit => 'Passwort aktualisieren';

  @override
  String get snackPasswordResetSent => 'Reset-Code gesendet';

  @override
  String get snackPasswordResetSentBody =>
      'Überprüfen Sie Ihre E-Mails auf einen 6-stelligen Reset-Code.';

  @override
  String get snackPasswordResetFailed =>
      'Der Reset-Code konnte nicht gesendet werden. Versuchen Sie es erneut.';

  @override
  String get snackPasswordUpdated => 'Passwort aktualisiert';

  @override
  String get snackPasswordUpdatedBody =>
      'Melden Sie sich mit Ihrem neuen Passwort an.';

  @override
  String get snackPasswordResetInvalid =>
      'Ungültiger oder abgelaufener Reset-Code.';

  @override
  String get otpDigitLabel => '6-stelliger Code';

  @override
  String receiveMoreFiles(int count) {
    return '+$count weitere Dateien';
  }
}
