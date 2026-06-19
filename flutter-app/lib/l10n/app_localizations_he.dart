// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'שתף קבצי וידאו גדולים';

  @override
  String get heroAccent => 'מִיָד.';

  @override
  String get heroTitle => 'שלח קבצים כבדים';

  @override
  String get splashLoading => 'טְעִינָה…';

  @override
  String get navSend => 'לוּחַ מַחווָנִים';

  @override
  String get navHome => 'בַּיִת';

  @override
  String get navHistory => 'הִיסטוֹרִיָה';

  @override
  String get navReceive => 'לְקַבֵּל';

  @override
  String get navPlans => 'תוכניות';

  @override
  String get navDownload => 'הורד';

  @override
  String get navSettings => 'הגדרות';

  @override
  String get modeLink => 'קבל קישור';

  @override
  String get modeEmail => 'שלח במייל';

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
  String get pickFiles => 'בחר קבצים';

  @override
  String get pickFolder => 'בחר תיקיה';

  @override
  String get emailFrom => 'המייל שלך';

  @override
  String get mailFromUsesAccount => 'משתמש באימייל המחובר שלך.';

  @override
  String get recipientEmailsHelper =>
      'נמענים מרובים: נפרדים באמצעות פסיקים, נקודות פסיק או רווחים.';

  @override
  String get emailTo => 'אימייל של הנמען';

  @override
  String get messageOptional => 'הודעה (אופציונלי)';

  @override
  String get passwordOptional => 'סיסמא (אופציונלי)';

  @override
  String get destructAfterDownload => 'מחק לאחר ההורדה';

  @override
  String get destructNo => 'שמור זמין';

  @override
  String get sendButton => 'לִשְׁלוֹחַ';

  @override
  String get uploading => 'מעלה...';

  @override
  String get uploadComplete => 'נַעֲשָׂה';

  @override
  String get shareLinkTitle => 'הקישור שלך';

  @override
  String get copyLink => 'העתק קישור';

  @override
  String get share => 'לַחֲלוֹק';

  @override
  String get shareQrCode => 'שתף קוד QR';

  @override
  String get uploadMore => 'שלח אחר';

  @override
  String get emailSentTitle => 'מיילים נשלחו';

  @override
  String get verifyEmailTitle => 'אמת את האימייל שלך';

  @override
  String get verifyCodeHint => 'הזן את הקוד מהמייל שלך';

  @override
  String get verifySubmit => 'לְאַמֵת';

  @override
  String get verifyResendCode => 'שלח שוב קוד';

  @override
  String get verifyCodeSent => 'קוד אימות חדש נשלח לאימייל שלך.';

  @override
  String get verifyEmailSmtpWarningTitle => 'ייתכן שלא נשלח אימייל אימות';

  @override
  String get verifyEmailSmtpWarningBody =>
      'השרת לא הצליח לאשר מסירה (לעתים קרובות SMTP מוגדר בצורה שגויה). בקש ממנהל האתר שלך לבדוק את הגדרות הדואר בלוח הניהול ולאחר מכן הקש על שלח שוב קוד.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'אם הוא לא מגיע: בדוק את זבל/דואר זבל ומבצעים, המתן דקה, ודא של<PH1>> אין שגיאות הקלדה ולאחר מכן הקש על שלח מחדש.';
  }

  @override
  String get loginTitle => 'היכנס';

  @override
  String get signupHint => 'השתמש באימייל ובסיסמה של חשבון האתר שלך.';

  @override
  String get emailHint => 'אֶלֶקטרוֹנִי';

  @override
  String get passwordHint => 'סִיסמָה';

  @override
  String get cancel => 'לְבַטֵל';

  @override
  String get signIn => 'היכנס';

  @override
  String get downloadIdHint => 'זיהוי העברה';

  @override
  String get privateIdHint => 'זיהוי פרטי (אופציונלי)';

  @override
  String get fetchTransfer => 'העברה פתוחה';

  @override
  String get downloadFile => 'הורד';

  @override
  String get unlockDownload => 'בטל נעילת הורדה';

  @override
  String get downloadSaved => 'נשמר להורדות';

  @override
  String get errorGeneric => 'משהו השתבש';

  @override
  String get errorNetwork => 'שגיאת רשת';

  @override
  String get errorBadResponse => 'תגובת שרת לא צפויה';

  @override
  String get termsAccept => 'אני מסכים לתנאים';

  @override
  String get settingsApiUrl => 'כתובת אתר ציבורית';

  @override
  String get settingsAccount => 'חֶשְׁבּוֹן';

  @override
  String get settingsAppearance => 'הוֹפָעָה';

  @override
  String get settingsTheme => 'נוֹשֵׂא';

  @override
  String get themeSystem => 'מַעֲרֶכֶת';

  @override
  String get themeLight => 'אוֹר';

  @override
  String get themeDark => 'כֵּהֶה';

  @override
  String get settingsSignedIn => 'אתה מחובר.';

  @override
  String get settingsSignedOut => 'אתה לא מחובר.';

  @override
  String get settingsOpenWebsite => 'פתח אתר';

  @override
  String get signUp => 'הירשם';

  @override
  String get settingsLinks => 'קישורים';

  @override
  String get privacyPolicy => 'מדיניות הפרטיות';

  @override
  String get termsOfService => 'תנאי שירות';

  @override
  String get about => 'אוֹדוֹת';

  @override
  String get moreApps => 'עוד אפליקציות';

  @override
  String get settingsLanguage => 'שָׂפָה';

  @override
  String get languageEnglish => 'אַנגְלִית';

  @override
  String get languageHindi => 'הינדי';

  @override
  String get logout => 'התנתק';

  @override
  String get deleteAccount => 'מחק חשבון';

  @override
  String get deleteAccountConfirmTitle => 'למחוק את החשבון שלך?';

  @override
  String get deleteAccountConfirmBody =>
      'זה מוחק לצמיתות את חשבונך ומוציא אותך מהחשבון. קישורי ההעברה שלך ימשיכו לעבוד, אך הם לא יופיעו עוד בהיסטוריה שלך.';

  @override
  String get deleteAccountSuccess => 'החשבון נמחק';

  @override
  String get deleteAccountSuccessBody => 'החשבון שלך הוסר.';

  @override
  String get deleteAccountFailed => 'לא ניתן למחוק את החשבון';

  @override
  String get deleteAccountFailedBody => 'אנא נסה שוב או פנה לתמיכה.';

  @override
  String get maxFilesReached => 'יותר מדי קבצים';

  @override
  String get fileTooLarge => 'הקובץ גדול מדי';

  @override
  String get ipLimit => 'יותר מדי העלאות מהרשת הזו';

  @override
  String get fillFields => 'אנא מלא שדות חובה';

  @override
  String get invalidEmail => 'אימייל לא חוקי';

  @override
  String get maxRecipientsReached => 'יותר מדי נמענים';

  @override
  String get loginRequiredTitle => 'נדרשת כניסה';

  @override
  String get loginRequiredBody => 'שרת זה דורש חשבון כדי להעלות או להוריד.';

  @override
  String get settingsSubtitle => 'העדפות אפליקציה וחשבון.';

  @override
  String get dropHeavyFile => 'זרוק כאן קובץ כבד.';

  @override
  String upToTotal(String max) {
    return 'עד $max סך הכל';
  }

  @override
  String get removeAll => 'הסר הכל';

  @override
  String get addFiles => 'הוסף קבצים';

  @override
  String get adding => 'מוֹסִיף…';

  @override
  String get options => 'אפשרויות';

  @override
  String get selfDestruct => 'השמדה עצמית לאחר ההורדה';

  @override
  String get expiry => 'תְפוּגָה';

  @override
  String get cancelUpload => 'בטל העלאה';

  @override
  String get transferReady => 'העברה מוכנה!';

  @override
  String get emailSentReady => 'מייל נשלח!';

  @override
  String get shareRecipientHint => 'שתף את הקישור הזה עם הנמען שלך.';

  @override
  String get emailSentBody => 'הודענו לנמענים שלך.';

  @override
  String get scanQr => 'סרוק כדי לפתוח את קישור ההעברה.';

  @override
  String get shareLinkButton => 'שתף את הקישור';

  @override
  String get verifyFourDigit =>
      'הזן את הקוד בן 4 הספרות שנשלח לאימייל השולח שלך.';

  @override
  String get starting => 'מתחיל...';

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
    return '$amount נותרו MB';
  }

  @override
  String get fillField => 'נא למלא שדה זה.';

  @override
  String get enterValidEmail => 'הזן אימייל חוקי.';

  @override
  String get message => 'הוֹדָעָה';

  @override
  String get recipientEmail => 'אימייל של הנמען';

  @override
  String get active => 'פָּעִיל';

  @override
  String get expired => 'פג תוקף';

  @override
  String get historyTitle => 'ההעברות שלי';

  @override
  String get signInToSeeTransfers => 'היכנס כדי לראות את ההעברות שלך';

  @override
  String get signInTransfersBody =>
      'אנו משתמשים בדוא\"ל שלך כדי לקשר העברות לחשבון שלך - אין צורך בסיסמה.';

  @override
  String get couldNotLoadTransfers => 'לא ניתן לטעון העברות';

  @override
  String get retry => 'נסה שוב';

  @override
  String get noTransfersYet => 'עדיין אין העברות';

  @override
  String get noTransfersBody => 'לאחר שתשלח קובץ, הוא יופיע כאן.';

  @override
  String get transferDetails => 'פרטי העברה';

  @override
  String get filesSection => 'קבצים';

  @override
  String get receiveTitle => 'קבלת קבצים';

  @override
  String get receiveSubtitle => 'הדבק קישור העברה להורדת קבצים.';

  @override
  String get pasteTooltip => 'לְהַדבִּיק';

  @override
  String get findTransfer => 'מצא העברה';

  @override
  String get receiveScanQr => 'סרוק QR';

  @override
  String get receiveScanQrTitle => 'העברת QR לסריקה';

  @override
  String get receiveScanQrHint => 'יישר את קוד ה-QR בתוך המסגרת.';

  @override
  String get receiveScanQrInvalid => 'קוד QR זה אינו קישור העברה חוקי.';

  @override
  String get receiveScanQrCameraDenied =>
      'נדרשת גישה למצלמה כדי לסרוק קודי QR.';

  @override
  String get receiveStepGetLink => 'קבל את הקישור';

  @override
  String get receiveStepGetLinkBody => 'בקש מהשולח לשתף איתך את קישור ההעברה.';

  @override
  String get receiveStepPaste => 'הדבק ומצא';

  @override
  String get receiveStepPasteBody =>
      'הדבק את הקישור למעלה והקש על \"מצא העברה\".';

  @override
  String get receiveStepDownload => 'הורד קבצים';

  @override
  String get receiveStepDownloadBody => 'ראה פרטי קובץ והורד הכל בבת אחת.';

  @override
  String get lookingUpTransfer => 'מחפש העברה...';

  @override
  String get transferNotFound => 'ההעברה לא נמצאה. בדוק את הקישור ונסה שוב.';

  @override
  String get transferExpired => 'פג תוקף ההעברה הזו ואינה זמינה עוד.';

  @override
  String get transferLoginRequired => 'נדרשת כניסה כדי לגשת להעברה זו.';

  @override
  String get transferBadResponse => 'תגובת שרת לא צפויה. בדוק את החיבור שלך.';

  @override
  String get transferNetworkError => 'שגיאת רשת. בדוק את חיבור האינטרנט שלך.';

  @override
  String transferLoadFailed(String error) {
    return 'לא ניתן היה לטעון את ההעברה: $error';
  }

  @override
  String get passwordProtected => 'מוגן באמצעות סיסמה';

  @override
  String get enterPassword => 'הזן סיסמה';

  @override
  String get unlock => 'לִפְתוֹחַ';

  @override
  String get downloading => 'מוריד...';

  @override
  String get downloadAllFiles => 'הורד את כל הקבצים';

  @override
  String get downloadSingleFile => 'הורד קובץ';

  @override
  String get receiveAnother => 'קבל העברה נוספת';

  @override
  String get plansTitle => 'תוכניות';

  @override
  String get plansSubtitle => 'שדרג כדי להסיר מודעות ולשלוח קבצים גדולים יותר.';

  @override
  String get storeUnavailable => 'החנות לא זמינה';

  @override
  String get storeUnavailableBody => 'רכישות מתוך האפליקציה אינן זמינות כעת.';

  @override
  String get storeLoadingPrices => 'טוען מחירים מ-App Store...';

  @override
  String get storePricesUnavailable => 'המחירים לא זמינים';

  @override
  String get storePricesPartial => 'לא ניתן היה לטעון חלק מהמחירים';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded מתוך $total מוצרי מנוי נטענו.';
  }

  @override
  String get storeSetupHint =>
      'בדוק באייפון אמיתי (לא בסימולטור), השתמש ב-Sandbox Apple ID, וודא שכל 6 המינויים נוצרו תחת מזהה החבילה של האפליקציה הזו ב-App Store Connect with ערכת תמחור.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/חודש';
  }

  @override
  String get freeVersionAds => 'כרגע אתה משתמש בגרסה החינמית שלנו עם מודעות';

  @override
  String get restorePurchases => 'שחזור רכישות';

  @override
  String get plansContinue => 'לְהַמשִׁיך';

  @override
  String get planLinkRestore => 'לְשַׁחְזֵר';

  @override
  String get termsAndConditions => 'תנאים והגבלות';

  @override
  String get createAccountTitle => 'צור חשבון';

  @override
  String get signUpSubtitle => 'הירשם עם מייל וסיסמה.';

  @override
  String get confirmPassword => 'אשר את הסיסמה';

  @override
  String get passwordMin8 => 'סיסמה (מינימום 8 תווים)';

  @override
  String get alreadyHaveAccount => 'כבר יש לך חשבון?';

  @override
  String get checkEmailTitle => 'בדוק את שלך\nדוא\"ל';

  @override
  String otpSentTo(String email) {
    return 'שלחנו קוד בן 6 ספרות ל\n$email';
  }

  @override
  String get verifyAndSignIn => 'אמת והיכנס';

  @override
  String get didntReceiveCode => 'לא קיבלת?';

  @override
  String get tryAgain => 'נסה שוב';

  @override
  String get otpExpiresHint =>
      'הקוד יפוג בעוד 5 דקות. בדוק את תיקיית הספאם שלך אם אינך רואה אותה.';

  @override
  String get snackError => 'שְׁגִיאָה';

  @override
  String get snackCopied => 'מוּעֲתָק';

  @override
  String get snackCopiedBody => 'הקישור הועתק ללוח';

  @override
  String get snackWelcome => 'קַבָּלַת פָּנִים';

  @override
  String get snackAccountCreated => 'חשבון נוצר';

  @override
  String get snackEnterEmail => 'נא להזין את המייל שלך';

  @override
  String get snackEnterPassword => 'נא להזין את הסיסמה שלך';

  @override
  String get snackInvalidEmail => 'כתובת אימייל לא חוקית';

  @override
  String get snackInvalidCredentials => 'אימייל או סיסמה שגויים';

  @override
  String get snackPasswordMin8 => 'הסיסמה חייבת להיות לפחות 8 תווים';

  @override
  String get snackPasswordMismatch => 'הסיסמאות אינן תואמות.';

  @override
  String get snackAccountExists => 'החשבון כבר קיים. נא להיכנס.';

  @override
  String get snackSignupFailed => 'לא ניתן ליצור חשבון. נסה שוב.';

  @override
  String get snackEnterOtp => 'נא להזין את הקוד בן 6 הספרות';

  @override
  String get snackOtpExpired => 'פג תוקף הקוד';

  @override
  String get snackOtpExpiredBody => 'בבקשה בקש קוד חדש.';

  @override
  String get snackInvalidCode => 'קוד לא חוקי';

  @override
  String get snackInvalidCodeBody => 'הקוד שגוי. אנא נסה שוב.';

  @override
  String get snackSendCodeFailed =>
      'לא ניתן לשלוח קוד. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get snackEmptyFolder => 'תיקיה ריקה';

  @override
  String get snackEmptyFolderBody => 'לא נמצאו קבצים בתיקייה שנבחרה.';

  @override
  String get snackFolderUnsupported => 'לא נתמך';

  @override
  String get snackFolderUnsupportedBody =>
      'העלאת תיקיות אינה זמינה בפלטפורמה זו.';

  @override
  String get snackFolderReadError => 'לא ניתן היה לקרוא את התיקיה שנבחרה.';

  @override
  String get snackLimitReached => 'הגבול הגיע';

  @override
  String get snackLimitFilesBody =>
      'חלק מהקבצים לא נוספו בגלל מגבלות גודל או ספירת קבצים.';

  @override
  String get snackFreePlanLimit =>
      'תוכנית חינם מאפשרת עד 5GB לכל העברה. אנא הסר כמה קבצים או שדרג.';

  @override
  String get snackSignInEmail => 'נא להיכנס כדי לשלוח בדוא\"ל.';

  @override
  String get snackUploadStartFailed => 'לא ניתן היה להתחיל להעלות.';

  @override
  String get snackVerifyEnterCode => 'הזן את הקוד בן 4 הספרות מהמייל שלך.';

  @override
  String get snackVerifyInvalid =>
      'קוד לא חוקי או שפג תוקפו. בדוק את המייל ונסה שוב.';

  @override
  String get snackVerifyResendFailed => 'לא ניתן לשלוח שוב את הקוד. נסה שוב.';

  @override
  String get snackDownloadComplete => 'ההורדה הושלמה';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" נשמר בהורדות';
  }

  @override
  String get snackDownloadFailed => 'ההורדה נכשלה';

  @override
  String get snackSaved => 'נשמר';

  @override
  String get snackServerUrlUpdated =>
      'כתובת האתר של השרת עודכנה. הפעל מחדש את האפליקציה כדי להגיש בקשה.';

  @override
  String get snackStoreError => 'שגיאת חנות';

  @override
  String get snackMissingProducts => 'חסרים מוצרים';

  @override
  String get snackStoreUnavailable => 'החנות לא זמינה';

  @override
  String get snackStoreUnavailableBody =>
      'רכישות מתוך האפליקציה אינן זמינות במכשיר זה.';

  @override
  String get snackProductNotLoaded => 'המוצר עדיין לא נטען.';

  @override
  String get snackRestoreStarted => 'השחזור התחיל';

  @override
  String get snackRestoreStartedBody => 'אנחנו בודקים את הרכישות שלך.';

  @override
  String get snackRestoreFailed => 'השחזור נכשל';

  @override
  String get snackProcessing => 'עיבוד';

  @override
  String get snackPleaseWait => 'אנא המתן...';

  @override
  String get snackSuccess => 'הַצלָחָה';

  @override
  String get snackPurchaseCompleted => 'הרכישה הושלמה.';

  @override
  String get snackPurchaseError => 'טעות ברכישה';

  @override
  String get snackPurchaseFailed => 'הרכישה נכשלה.';

  @override
  String get snackCanceled => 'בּוּטלָה';

  @override
  String get snackPurchaseCanceled => 'הרכישה בוטלה.';

  @override
  String get snackUpload => 'העלה';

  @override
  String get snackVerify => 'לְאַמֵת';

  @override
  String get doNotExpire => 'אין לפוג';

  @override
  String get hourSingular => 'שָׁעָה';

  @override
  String get hourPlural => 'שעות';

  @override
  String get daySingular => 'יְוֹם';

  @override
  String get dayPlural => 'ימים';

  @override
  String get emailAddressLabel => 'כתובת דוא\"ל';

  @override
  String get passwordLabelCaps => 'סִיסמָה';

  @override
  String get confirmPasswordLabelCaps => 'אשר את הסיסמה';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'קישור העברה או תעודה מזהה';

  @override
  String get howToReceive => 'איך לקבל';

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
  String get planAdsTitle => 'תוכנית מודעות';

  @override
  String get planAdsBullet1 => 'גישה לאפליקציה ללא פרסומות';

  @override
  String get planAdsBullet2 => 'הסר את כל המודעות';

  @override
  String get planProTitle => 'תוכנית פרו';

  @override
  String get planProBullet1 => 'שלח קבצים עד 20GB';

  @override
  String get planProBullet2 => 'העלאה מהירה';

  @override
  String get planPremiumTitle => 'תוכנית פרימיום';

  @override
  String get planPremiumBullet1 => 'שלח קבצים עד 100GB';

  @override
  String get planPremiumBullet2 => 'העלאה מהירה במיוחד';

  @override
  String get planSubscriptionDisclaimer =>
      'אין תקופת ניסיון - נדרש מנוי כדי להשתמש בפונקציונליות האפליקציה הנוספת. תחויב מיד. אתה יכול לבטל בכל עת.';

  @override
  String get perMonth => '/ חודש';

  @override
  String get perYear => '/ שנה';

  @override
  String get snackConnectionProblem => 'בעיית חיבור. אנא נסה שוב.';

  @override
  String get networkTitle => 'רֶשֶׁת';

  @override
  String transferIdLabel(String id) {
    return 'מזהה: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'קבצים: $count · $size בתים';
  }

  @override
  String todayAt(String time) {
    return 'היום · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'אתמול · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysלפני יום · $time';
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
    return '$sent / $total • $remaining שמאל';
  }

  @override
  String get loadingShort => 'טְעִינָה…';

  @override
  String get colorPaletteTitle => 'פלטת צבעים';

  @override
  String get colorPaletteSectionBackgrounds => 'רקעים (סולם דיו)';

  @override
  String get colorPaletteSectionAccent => 'מבטא / ראשוני';

  @override
  String get colorPaletteSectionText => 'טֶקסט';

  @override
  String get colorPaletteSectionBorders => 'גבולות וזכוכית';

  @override
  String get colorPaletteSectionSemantic => 'סֵמַנטִי';

  @override
  String get colorPaletteSectionLive => 'נושא חי (נוכחי)';

  @override
  String get colorPaletteActiveHint => '★ = בשימוש פעיל במסכים';

  @override
  String get colorPaletteCopyHint =>
      'לחץ לחיצה ארוכה על כל דוגמית כדי להעתיק את הערך הקבוע שלה.';

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
  String get settingsAppBrand => 'שתף בגדול\nקבצי וידאו';

  @override
  String get loginEmailPasswordPrompt =>
      'הזן את האימייל והסיסמה שלך כדי להיכנס.';

  @override
  String get forgotPassword => 'שכחת סיסמה?';

  @override
  String get forgotPasswordTitle => 'אפס סיסמה';

  @override
  String get forgotPasswordBody =>
      'הזן את כתובת הדוא\"ל של החשבון שלך ואנו נשלח קוד איפוס.';

  @override
  String get forgotPasswordSubmit => 'שלח קוד איפוס';

  @override
  String get resetPasswordTitle => 'צור סיסמה חדשה';

  @override
  String get resetPasswordBody =>
      'הזן את הקוד בן 6 הספרות מהמייל שלך ובחר סיסמה חדשה.';

  @override
  String get resetPasswordSubmit => 'עדכן סיסמה';

  @override
  String get snackPasswordResetSent => 'קוד איפוס נשלח';

  @override
  String get snackPasswordResetSentBody =>
      'בדוק באימייל שלך קוד איפוס בן 6 ספרות.';

  @override
  String get snackPasswordResetFailed => 'לא ניתן לשלוח קוד איפוס. נסה שוב.';

  @override
  String get snackPasswordUpdated => 'הסיסמה עודכנה';

  @override
  String get snackPasswordUpdatedBody => 'היכנס עם הסיסמה החדשה שלך.';

  @override
  String get snackPasswordResetInvalid => 'קוד איפוס לא חוקי או שפג תוקפו.';

  @override
  String get otpDigitLabel => 'קוד בן 6 ספרות';

  @override
  String receiveMoreFiles(int count) {
    return '+$count קבצים נוספים';
  }
}
