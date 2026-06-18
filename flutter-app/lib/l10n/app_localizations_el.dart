// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Μοιραστείτε μεγάλα αρχεία βίντεο';

  @override
  String get heroAccent => 'στη στιγμή.';

  @override
  String get heroTitle => 'Στείλτε βαριά αρχεία';

  @override
  String get splashLoading => 'Φόρτωση…';

  @override
  String get navSend => 'Ταμπλό';

  @override
  String get navHome => 'Σπίτι';

  @override
  String get navHistory => 'Ιστορία';

  @override
  String get navReceive => 'Λαμβάνω';

  @override
  String get navPlans => 'Σχέδια';

  @override
  String get navDownload => 'Λήψη';

  @override
  String get navSettings => 'Ρυθμίσεις';

  @override
  String get modeLink => 'Λάβετε έναν σύνδεσμο';

  @override
  String get modeEmail => 'Αποστολή με email';

  @override
  String get pickFiles => 'Επιλέξτε αρχεία';

  @override
  String get pickFolder => 'Επιλέξτε φάκελο';

  @override
  String get emailFrom => 'Το email σας';

  @override
  String get mailFromUsesAccount => 'Χρησιμοποιεί το συνδεδεμένο email σας.';

  @override
  String get recipientEmailsHelper =>
      'Πολλαπλοί παραλήπτες: διαχωρίστε με κόμματα, ερωτηματικά ή κενά.';

  @override
  String get emailTo => 'Email παραλήπτη';

  @override
  String get messageOptional => 'Μήνυμα (προαιρετικό)';

  @override
  String get passwordOptional => 'Κωδικός πρόσβασης (προαιρετικό)';

  @override
  String get destructAfterDownload => 'Διαγραφή μετά τη λήψη';

  @override
  String get destructNo => 'Διατηρήστε διαθέσιμο';

  @override
  String get sendButton => 'Στέλνω';

  @override
  String get uploading => 'Μεταφόρτωση…';

  @override
  String get uploadComplete => 'Γινώμενος';

  @override
  String get shareLinkTitle => 'Ο σύνδεσμός σας';

  @override
  String get copyLink => 'Αντιγραφή συνδέσμου';

  @override
  String get share => 'Μερίδιο';

  @override
  String get shareQrCode => 'Κοινή χρήση κωδικού QR';

  @override
  String get uploadMore => 'Στείλε άλλο';

  @override
  String get emailSentTitle => 'Αποστέλλονται email';

  @override
  String get verifyEmailTitle => 'Επαληθεύστε το email σας';

  @override
  String get verifyCodeHint => 'Εισαγάγετε τον κωδικό από το email σας';

  @override
  String get verifySubmit => 'Επαληθεύω';

  @override
  String get verifyResendCode => 'Επανάληψη αποστολής κωδικού';

  @override
  String get verifyCodeSent =>
      'Ένας νέος κωδικός επαλήθευσης στάλθηκε στο email σας.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Το email επαλήθευσης ενδέχεται να μην έχει σταλεί';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Ο διακομιστής δεν μπόρεσε να επιβεβαιώσει την παράδοση (συχνά το SMTP δεν έχει ρυθμιστεί σωστά). Ζητήστε από τον διαχειριστή του ιστότοπού σας να ελέγξει τις ρυθμίσεις αλληλογραφίας στον πίνακα διαχείρισης και, στη συνέχεια, πατήστε Επανάληψη αποστολής κώδικα.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Εάν δεν φτάσει: ελέγξτε Ανεπιθύμητα/Ανεπιθύμητα και Προσφορές, περιμένετε ένα λεπτό, επιβεβαιώστε ότι το $email δεν έχει τυπογραφικά λάθη και, στη συνέχεια, πατήστε Επανάληψη αποστολής.';
  }

  @override
  String get loginTitle => 'Συνδεθείτε';

  @override
  String get signupHint =>
      'Χρησιμοποιήστε τη διεύθυνση ηλεκτρονικού ταχυδρομείου και τον κωδικό πρόσβασης του λογαριασμού σας στον ιστότοπο.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Σύνθημα';

  @override
  String get cancel => 'Ματαίωση';

  @override
  String get signIn => 'Συνδεθείτε';

  @override
  String get downloadIdHint => 'Ταυτότητα μεταφοράς';

  @override
  String get privateIdHint => 'Ιδιωτικό αναγνωριστικό (προαιρετικό)';

  @override
  String get fetchTransfer => 'Άνοιγμα μεταφοράς';

  @override
  String get downloadFile => 'Λήψη';

  @override
  String get unlockDownload => 'Ξεκλείδωμα λήψης';

  @override
  String get downloadSaved => 'Αποθηκεύτηκε στις Λήψεις';

  @override
  String get errorGeneric => 'Κάτι πήγε στραβά';

  @override
  String get errorNetwork => 'Σφάλμα δικτύου';

  @override
  String get errorBadResponse => 'Απροσδόκητη απόκριση διακομιστή';

  @override
  String get termsAccept => 'Συμφωνώ με τους όρους';

  @override
  String get settingsApiUrl => 'Δημόσια διεύθυνση URL ιστότοπου';

  @override
  String get settingsAccount => 'Λογαριασμός';

  @override
  String get settingsAppearance => 'Εμφάνιση';

  @override
  String get settingsTheme => 'Θέμα';

  @override
  String get themeSystem => 'Σύστημα';

  @override
  String get themeLight => 'Φως';

  @override
  String get themeDark => 'Σκοτάδι';

  @override
  String get settingsSignedIn => 'Είστε συνδεδεμένοι.';

  @override
  String get settingsSignedOut => 'Δεν είστε συνδεδεμένοι.';

  @override
  String get settingsOpenWebsite => 'Άνοιγμα ιστότοπου';

  @override
  String get signUp => 'Εγγραφείτε';

  @override
  String get settingsLinks => 'Εδαφος διά παιγνίδι γκολφ';

  @override
  String get privacyPolicy => 'Πολιτική απορρήτου';

  @override
  String get termsOfService => 'Όροι παροχής υπηρεσιών';

  @override
  String get about => 'Για';

  @override
  String get moreApps => 'Περισσότερες εφαρμογές';

  @override
  String get settingsLanguage => 'Γλώσσα';

  @override
  String get languageEnglish => 'αγγλικός';

  @override
  String get languageHindi => 'Χίντι';

  @override
  String get logout => 'Αποσυνδεθείτε';

  @override
  String get deleteAccount => 'Διαγραφή λογαριασμού';

  @override
  String get deleteAccountConfirmTitle => 'Διαγραφή του λογαριασμού σας;';

  @override
  String get deleteAccountConfirmBody =>
      'Αυτό διαγράφει οριστικά τον λογαριασμό σας και σας αποσυνδέει. Οι σύνδεσμοι μεταφοράς σας θα συνεχίσουν να λειτουργούν, αλλά δεν θα εμφανίζονται πλέον στο ιστορικό σας.';

  @override
  String get deleteAccountSuccess => 'Ο λογαριασμός διαγράφηκε';

  @override
  String get deleteAccountSuccessBody => 'Ο λογαριασμός σας έχει αφαιρεθεί.';

  @override
  String get deleteAccountFailed =>
      'Δεν ήταν δυνατή η διαγραφή του λογαριασμού';

  @override
  String get deleteAccountFailedBody =>
      'Δοκιμάστε ξανά ή επικοινωνήστε με την υποστήριξη.';

  @override
  String get maxFilesReached => 'Πάρα πολλά αρχεία';

  @override
  String get fileTooLarge => 'Το αρχείο είναι πολύ μεγάλο';

  @override
  String get ipLimit => 'Πάρα πολλές μεταφορτώσεις από αυτό το δίκτυο';

  @override
  String get fillFields => 'Συμπληρώστε τα υποχρεωτικά πεδία';

  @override
  String get invalidEmail => 'Μη έγκυρο email';

  @override
  String get maxRecipientsReached => 'Πάρα πολλοί παραλήπτες';

  @override
  String get loginRequiredTitle => 'Απαιτείται σύνδεση';

  @override
  String get loginRequiredBody =>
      'Αυτός ο διακομιστής απαιτεί λογαριασμό για μεταφόρτωση ή λήψη.';

  @override
  String get settingsSubtitle => 'Προτιμήσεις εφαρμογής και λογαριασμός.';

  @override
  String get dropHeavyFile => 'Ρίξτε ένα βαρύ αρχείο εδώ.';

  @override
  String upToTotal(String max) {
    return 'Έως $max σύνολο';
  }

  @override
  String get removeAll => 'Κατάργηση όλων';

  @override
  String get addFiles => 'Προσθήκη αρχείων';

  @override
  String get adding => 'Αθροιση…';

  @override
  String get options => 'Επιλογές';

  @override
  String get selfDestruct => 'Αυτοκαταστροφή μετά τη λήψη';

  @override
  String get expiry => 'Λήξη';

  @override
  String get cancelUpload => 'Ακύρωση μεταφόρτωσης';

  @override
  String get transferReady => 'Έτοιμη η μεταφορά!';

  @override
  String get emailSentReady => 'Το email στάλθηκε!';

  @override
  String get shareRecipientHint =>
      'Μοιραστείτε αυτόν τον σύνδεσμο με τον παραλήπτη σας.';

  @override
  String get emailSentBody => 'Έχουμε ειδοποιήσει τους παραλήπτες σας.';

  @override
  String get scanQr => 'Σάρωση για να ανοίξει ο σύνδεσμος μεταφοράς.';

  @override
  String get shareLinkButton => 'ΚΟΙΝΟΠΟΙΗΣΗ ΣΥΝΔΕΣΜΟΥ';

  @override
  String get verifyFourDigit =>
      'Εισαγάγετε τον 4ψήφιο κωδικό που στάλθηκε στο email του αποστολέα σας.';

  @override
  String get starting => 'Εκκίνηση…';

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
    return '$amount MB απομένουν';
  }

  @override
  String get fillField => 'Παρακαλούμε συμπληρώστε αυτό το πεδίο.';

  @override
  String get enterValidEmail => 'Εισαγάγετε ένα έγκυρο email.';

  @override
  String get message => 'Μήνυμα';

  @override
  String get recipientEmail => 'Email παραλήπτη';

  @override
  String get active => 'Ενεργός';

  @override
  String get expired => 'Λήξη';

  @override
  String get historyTitle => 'Οι μεταγραφές μου';

  @override
  String get signInToSeeTransfers =>
      'Συνδεθείτε για να δείτε τις μεταφορές σας';

  @override
  String get signInTransfersBody =>
      'Χρησιμοποιούμε το email σας για να συνδέσουμε μεταφορές με τον λογαριασμό σας — δεν απαιτείται κωδικός πρόσβασης.';

  @override
  String get couldNotLoadTransfers => 'Δεν ήταν δυνατή η φόρτωση των μεταφορών';

  @override
  String get retry => 'Δοκιμάζω πάλι';

  @override
  String get noTransfersYet => 'Δεν υπάρχουν ακόμη μεταγραφές';

  @override
  String get noTransfersBody => 'Μόλις στείλετε ένα αρχείο, θα εμφανιστεί εδώ.';

  @override
  String get transferDetails => 'Στοιχεία μεταφοράς';

  @override
  String get filesSection => 'Αρχεία';

  @override
  String get receiveTitle => 'Λήψη Αρχείων';

  @override
  String get receiveSubtitle =>
      'Επικολλήστε έναν σύνδεσμο μεταφοράς για λήψη αρχείων.';

  @override
  String get pasteTooltip => 'Πάστα';

  @override
  String get findTransfer => 'Εύρεση Μεταφοράς';

  @override
  String get receiveScanQr => 'Σάρωση QR';

  @override
  String get receiveScanQrTitle => 'Σάρωση QR μεταφοράς';

  @override
  String get receiveScanQrHint =>
      'Ευθυγραμμίστε τον κωδικό QR μέσα στο πλαίσιο.';

  @override
  String get receiveScanQrInvalid =>
      'Αυτός ο κωδικός QR δεν είναι έγκυρος σύνδεσμος μεταφοράς.';

  @override
  String get receiveScanQrCameraDenied =>
      'Απαιτείται πρόσβαση στην κάμερα για τη σάρωση κωδικών QR.';

  @override
  String get receiveStepGetLink => 'Λάβετε το σύνδεσμο';

  @override
  String get receiveStepGetLinkBody =>
      'Ζητήστε από τον αποστολέα να μοιραστεί τον σύνδεσμο μεταφοράς μαζί σας.';

  @override
  String get receiveStepPaste => 'Επικόλληση και εύρεση';

  @override
  String get receiveStepPasteBody =>
      'Επικολλήστε τον παραπάνω σύνδεσμο και πατήστε \"Εύρεση μεταφοράς\".';

  @override
  String get receiveStepDownload => 'Λήψη αρχείων';

  @override
  String get receiveStepDownloadBody =>
      'Δείτε τις λεπτομέρειες του αρχείου και κατεβάστε τα πάντα ταυτόχρονα.';

  @override
  String get lookingUpTransfer => 'Αναζήτηση μεταφοράς…';

  @override
  String get transferNotFound =>
      'Η μεταφορά δεν βρέθηκε. Ελέγξτε τον σύνδεσμο και δοκιμάστε ξανά.';

  @override
  String get transferExpired =>
      'Αυτή η μεταφορά έχει λήξει και δεν είναι πλέον διαθέσιμη.';

  @override
  String get transferLoginRequired =>
      'Απαιτείται σύνδεση για πρόσβαση σε αυτήν τη μεταφορά.';

  @override
  String get transferBadResponse =>
      'Απροσδόκητη απόκριση διακομιστή. Ελέγξτε τη σύνδεσή σας.';

  @override
  String get transferNetworkError =>
      'Σφάλμα δικτύου. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';

  @override
  String transferLoadFailed(String error) {
    return 'Δεν ήταν δυνατή η φόρτωση της μεταφοράς: $error';
  }

  @override
  String get passwordProtected => 'Προστατεύεται με κωδικό πρόσβασης';

  @override
  String get enterPassword => 'Εισαγάγετε κωδικό πρόσβασης';

  @override
  String get unlock => 'Ξεκλειδώνω';

  @override
  String get downloading => 'Λήψη…';

  @override
  String get downloadAllFiles => 'Λήψη όλων των αρχείων';

  @override
  String get downloadSingleFile => 'Λήψη αρχείου';

  @override
  String get receiveAnother => 'Λάβετε άλλη μεταφορά';

  @override
  String get plansTitle => 'Σχέδια';

  @override
  String get plansSubtitle =>
      'Κάντε αναβάθμιση για να αφαιρέσετε διαφημίσεις και να στείλετε μεγαλύτερα αρχεία.';

  @override
  String get storeUnavailable => 'Το κατάστημα δεν είναι διαθέσιμο';

  @override
  String get storeUnavailableBody =>
      'Οι αγορές εντός εφαρμογής δεν είναι διαθέσιμες αυτήν τη στιγμή.';

  @override
  String get storeLoadingPrices => 'Φόρτωση τιμών από το App Store…';

  @override
  String get storePricesUnavailable => 'Οι τιμές δεν είναι διαθέσιμες';

  @override
  String get storePricesPartial => 'Δεν ήταν δυνατή η φόρτωση ορισμένων τιμών';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Φορτώθηκαν $loaded από $total συνδρομητικά προϊόντα.';
  }

  @override
  String get storeSetupHint =>
      'Δοκιμάστε σε πραγματικό iPhone (όχι Simulator), χρησιμοποιήστε ένα Sandbox Apple ID και βεβαιωθείτε ότι και οι 6 συνδρομές έχουν δημιουργηθεί με το αναγνωριστικό πακέτου αυτής της εφαρμογής στο App Store Connect με σύνολο τιμών.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/μήνα';
  }

  @override
  String get freeVersionAds =>
      'Αυτήν τη στιγμή χρησιμοποιείτε τη δωρεάν έκδοση μας με διαφημίσεις';

  @override
  String get restorePurchases => 'Επαναφορά αγορών';

  @override
  String get plansContinue => 'Συνεχίζω';

  @override
  String get planLinkRestore => 'Επαναφέρω';

  @override
  String get termsAndConditions => 'Όροι και προϋποθέσεις';

  @override
  String get createAccountTitle => 'Δημιουργία λογαριασμού';

  @override
  String get signUpSubtitle => 'Εγγραφείτε με email και κωδικό πρόσβασης.';

  @override
  String get confirmPassword => 'Επιβεβαίωση κωδικού πρόσβασης';

  @override
  String get passwordMin8 => 'Κωδικός πρόσβασης (ελάχ. 8 χαρακτήρες)';

  @override
  String get alreadyHaveAccount => 'Έχετε ήδη λογαριασμό;';

  @override
  String get checkEmailTitle => 'Ελέγξτε το δικό σας\nemail';

  @override
  String otpSentTo(String email) {
    return 'Στείλαμε έναν 6ψήφιο κωδικό στο\n$email';
  }

  @override
  String get verifyAndSignIn => 'Επαλήθευση και είσοδος';

  @override
  String get didntReceiveCode => 'Δεν το έλαβες;';

  @override
  String get tryAgain => 'Προσπαθήστε ξανά';

  @override
  String get otpExpiresHint =>
      'Ο κωδικός λήγει σε 5 λεπτά. Ελέγξτε το φάκελο ανεπιθύμητης αλληλογραφίας σας εάν δεν τον βλέπετε.';

  @override
  String get snackError => 'Σφάλμα';

  @override
  String get snackCopied => 'Αντιγράφηκε';

  @override
  String get snackCopiedBody => 'Ο σύνδεσμος αντιγράφηκε στο πρόχειρο';

  @override
  String get snackWelcome => 'Καλωσόρισμα';

  @override
  String get snackAccountCreated => 'Ο λογαριασμός δημιουργήθηκε';

  @override
  String get snackEnterEmail => 'Παρακαλώ εισάγετε το email σας';

  @override
  String get snackEnterPassword => 'Εισαγάγετε τον κωδικό πρόσβασής σας';

  @override
  String get snackInvalidEmail => 'Μη έγκυρη διεύθυνση email';

  @override
  String get snackInvalidCredentials => 'Λάθος email ή κωδικός πρόσβασης';

  @override
  String get snackPasswordMin8 =>
      'Ο κωδικός πρόσβασης πρέπει να αποτελείται από τουλάχιστον 8 χαρακτήρες';

  @override
  String get snackPasswordMismatch => 'Οι κωδικοί πρόσβασης δεν ταιριάζουν.';

  @override
  String get snackAccountExists =>
      'Ο λογαριασμός υπάρχει ήδη. Παρακαλώ συνδεθείτε.';

  @override
  String get snackSignupFailed =>
      'Δεν ήταν δυνατή η δημιουργία λογαριασμού. Προσπαθήστε ξανά.';

  @override
  String get snackEnterOtp => 'Εισαγάγετε τον 6ψήφιο κωδικό';

  @override
  String get snackOtpExpired => 'Ο κωδικός έληξε';

  @override
  String get snackOtpExpiredBody => 'Ζητήστε νέο κωδικό.';

  @override
  String get snackInvalidCode => 'Μη έγκυρος κωδικός';

  @override
  String get snackInvalidCodeBody => 'Ο κωδικός είναι λάθος. Δοκιμάστε ξανά.';

  @override
  String get snackSendCodeFailed =>
      'Δεν ήταν δυνατή η αποστολή κωδικού. Ελέγξτε τη σύνδεσή σας και δοκιμάστε ξανά.';

  @override
  String get snackEmptyFolder => 'Κενός φάκελος';

  @override
  String get snackEmptyFolderBody =>
      'Δεν βρέθηκαν αρχεία στον επιλεγμένο φάκελο.';

  @override
  String get snackFolderUnsupported => 'Δεν υποστηρίζεται';

  @override
  String get snackFolderUnsupportedBody =>
      'Η μεταφόρτωση φακέλου δεν είναι διαθέσιμη σε αυτήν την πλατφόρμα.';

  @override
  String get snackFolderReadError =>
      'Δεν ήταν δυνατή η ανάγνωση του επιλεγμένου φακέλου.';

  @override
  String get snackLimitReached => 'Συμπληρώθηκε το όριο';

  @override
  String get snackLimitFilesBody =>
      'Ορισμένα αρχεία δεν προστέθηκαν λόγω περιορισμών μεγέθους ή αριθμού αρχείων.';

  @override
  String get snackFreePlanLimit =>
      'Το δωρεάν πρόγραμμα επιτρέπει έως και 5 GB ανά μεταφορά. Αφαιρέστε ορισμένα αρχεία ή αναβαθμίστε.';

  @override
  String get snackSignInEmail =>
      'Παρακαλούμε συνδεθείτε για αποστολή μέσω email.';

  @override
  String get snackUploadStartFailed =>
      'Δεν ήταν δυνατή η έναρξη της μεταφόρτωσης.';

  @override
  String get snackVerifyEnterCode =>
      'Εισαγάγετε τον 4ψήφιο κωδικό από το email σας.';

  @override
  String get snackVerifyInvalid =>
      'Μη έγκυρος ή ληγμένος κωδικός. Ελέγξτε το email και δοκιμάστε ξανά.';

  @override
  String get snackVerifyResendFailed =>
      'Δεν ήταν δυνατή η εκ νέου αποστολή του κωδικού. Προσπαθήστε ξανά.';

  @override
  String get snackDownloadComplete => 'Η λήψη ολοκληρώθηκε';

  @override
  String snackDownloadSaved(String filename) {
    return 'Το \"$filename\" αποθηκεύτηκε στις Λήψεις';
  }

  @override
  String get snackDownloadFailed => 'Η λήψη απέτυχε';

  @override
  String get snackSaved => 'Αποθηκεύτηκε';

  @override
  String get snackServerUrlUpdated =>
      'Η διεύθυνση URL του διακομιστή ενημερώθηκε. Επανεκκινήστε την εφαρμογή για εφαρμογή.';

  @override
  String get snackStoreError => 'Σφάλμα αποθήκευσης';

  @override
  String get snackMissingProducts => 'Λείπουν προϊόντα';

  @override
  String get snackStoreUnavailable => 'Το κατάστημα δεν είναι διαθέσιμο';

  @override
  String get snackStoreUnavailableBody =>
      'Οι αγορές εντός εφαρμογής δεν είναι διαθέσιμες σε αυτήν τη συσκευή.';

  @override
  String get snackProductNotLoaded => 'Το προϊόν δεν έχει φορτωθεί ακόμα.';

  @override
  String get snackRestoreStarted => 'Η επαναφορά ξεκίνησε';

  @override
  String get snackRestoreStartedBody => 'Ελέγχουμε τις αγορές σας.';

  @override
  String get snackRestoreFailed => 'Η επαναφορά απέτυχε';

  @override
  String get snackProcessing => 'Επεξεργασία';

  @override
  String get snackPleaseWait => 'Παρακαλώ περιμένετε…';

  @override
  String get snackSuccess => 'Επιτυχία';

  @override
  String get snackPurchaseCompleted => 'Η αγορά ολοκληρώθηκε.';

  @override
  String get snackPurchaseError => 'Σφάλμα αγοράς';

  @override
  String get snackPurchaseFailed => 'Η αγορά απέτυχε.';

  @override
  String get snackCanceled => 'Ακυρώθηκε';

  @override
  String get snackPurchaseCanceled => 'Η αγορά ακυρώθηκε.';

  @override
  String get snackUpload => 'Μεταφόρτωση';

  @override
  String get snackVerify => 'Επαληθεύω';

  @override
  String get doNotExpire => 'Να μην λήξει';

  @override
  String get hourSingular => 'ώρα';

  @override
  String get hourPlural => 'ώρες';

  @override
  String get daySingular => 'ημέρα';

  @override
  String get dayPlural => 'ημέρες';

  @override
  String get emailAddressLabel => 'ΔΙΕΥΘΥΝΣΗ EMAIL';

  @override
  String get passwordLabelCaps => 'ΣΥΝΘΗΜΑ';

  @override
  String get confirmPasswordLabelCaps => 'ΕΠΙΒΕΒΑΙΩΣΗ ΚΩΔΙΚΟΥ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ΣΥΝΔΕΣΜΟΣ Ή ΤΑΥΤΟΤΗΤΑ ΜΕΤΑΦΟΡΑΣ';

  @override
  String get howToReceive => 'ΠΩΣ ΝΑ ΛΑΒΕΤΕ';

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
  String get planAdsTitle => 'Σχέδιο διαφημίσεων';

  @override
  String get planAdsBullet1 => 'Πρόσβαση στην εφαρμογή χωρίς διαφημίσεις';

  @override
  String get planAdsBullet2 => 'Καταργήστε όλες τις διαφημίσεις';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Αποστολή αρχείων έως 20 GB';

  @override
  String get planProBullet2 => 'Γρήγορη μεταφόρτωση';

  @override
  String get planPremiumTitle => 'Πρόγραμμα Premium';

  @override
  String get planPremiumBullet1 => 'Αποστολή αρχείων έως 100 GB';

  @override
  String get planPremiumBullet2 => 'Σούπερ γρήγορη μεταφόρτωση';

  @override
  String get planSubscriptionDisclaimer =>
      'Δεν υπάρχει δοκιμαστική περίοδος — απαιτείται συνδρομή για τη χρήση της πρόσθετης λειτουργικότητας της εφαρμογής. Θα χρεωθείτε αμέσως. Μπορείτε να ακυρώσετε οποιαδήποτε στιγμή.';

  @override
  String get perMonth => '/ μήνα';

  @override
  String get perYear => '/ έτος';

  @override
  String get snackConnectionProblem => 'Πρόβλημα σύνδεσης. Δοκιμάστε ξανά.';

  @override
  String get networkTitle => 'Δίκτυο';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Αρχεία: $count · $size byte';
  }

  @override
  String todayAt(String time) {
    return 'Σήμερα · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Χθες · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d πριν · $time';
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
    return '$sent / $total • $remaining αριστερά';
  }

  @override
  String get loadingShort => 'Φόρτωση…';

  @override
  String get colorPaletteTitle => 'Παλέτα χρωμάτων';

  @override
  String get colorPaletteSectionBackgrounds => 'Φόντο (κλίμακα μελανιού)';

  @override
  String get colorPaletteSectionAccent => 'Προφορά / Δημοτικό';

  @override
  String get colorPaletteSectionText => 'Κείμενο';

  @override
  String get colorPaletteSectionBorders => 'Borders & Glass';

  @override
  String get colorPaletteSectionSemantic => 'Σημασιολογικός';

  @override
  String get colorPaletteSectionLive => 'Ζωντανό θέμα (τρέχον)';

  @override
  String get colorPaletteActiveHint => '★ = χρησιμοποιείται ενεργά σε οθόνες';

  @override
  String get colorPaletteCopyHint =>
      'Πατήστε παρατεταμένα οποιοδήποτε δείγμα για να αντιγράψετε την εξαγωνική του τιμή.';

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
  String get settingsAppBrand => 'Μοιραστείτε το μεγάλο\nΑρχεία βίντεο';

  @override
  String get loginEmailPasswordPrompt =>
      'Εισαγάγετε το email και τον κωδικό πρόσβασής σας για να συνδεθείτε.';

  @override
  String get forgotPassword => 'Ξεχάσατε τον κωδικό πρόσβασης;';

  @override
  String get forgotPasswordTitle => 'Επαναφορά κωδικού πρόσβασης';

  @override
  String get forgotPasswordBody =>
      'Εισαγάγετε το email του λογαριασμού σας και θα σας στείλουμε έναν κωδικό επαναφοράς.';

  @override
  String get forgotPasswordSubmit => 'Αποστολή κωδικού επαναφοράς';

  @override
  String get resetPasswordTitle => 'Δημιουργία νέου κωδικού πρόσβασης';

  @override
  String get resetPasswordBody =>
      'Εισαγάγετε τον 6ψήφιο κωδικό από το email σας και επιλέξτε νέο κωδικό πρόσβασης.';

  @override
  String get resetPasswordSubmit => 'Ενημέρωση κωδικού πρόσβασης';

  @override
  String get snackPasswordResetSent => 'Ο κωδικός επαναφοράς στάλθηκε';

  @override
  String get snackPasswordResetSentBody =>
      'Ελέγξτε το email σας για έναν 6ψήφιο κωδικό επαναφοράς.';

  @override
  String get snackPasswordResetFailed =>
      'Δεν ήταν δυνατή η αποστολή του κωδικού επαναφοράς. Προσπαθήστε ξανά.';

  @override
  String get snackPasswordUpdated => 'Ο κωδικός ενημερώθηκε';

  @override
  String get snackPasswordUpdatedBody =>
      'Συνδεθείτε με τον νέο σας κωδικό πρόσβασης.';

  @override
  String get snackPasswordResetInvalid =>
      'Μη έγκυρος ή ληγμένος κωδικός επαναφοράς.';

  @override
  String get otpDigitLabel => '6-ΨΗΦΙΟΣ ΚΩΔ';

  @override
  String receiveMoreFiles(int count) {
    return '+$count περισσότερα αρχεία';
  }
}
