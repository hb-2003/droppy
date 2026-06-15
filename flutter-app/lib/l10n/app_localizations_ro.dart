// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Partajați fișiere video mari';

  @override
  String get heroAccent => 'imediat.';

  @override
  String get heroTitle => 'Trimite fișiere grele';

  @override
  String get splashLoading => 'Încărcare…';

  @override
  String get navSend => 'Bord';

  @override
  String get navHome => 'Acasă';

  @override
  String get navHistory => 'Istorie';

  @override
  String get navReceive => 'Primi';

  @override
  String get navPlans => 'Planuri';

  @override
  String get navDownload => 'Descărcați';

  @override
  String get navSettings => 'Setări';

  @override
  String get modeLink => 'Obțineți un link';

  @override
  String get modeEmail => 'Trimite prin email';

  @override
  String get pickFiles => 'Alegeți fișierele';

  @override
  String get pickFolder => 'Alegeți folderul';

  @override
  String get emailFrom => 'E-mailul dvs';

  @override
  String get mailFromUsesAccount => 'Utilizează e-mailul de conectare.';

  @override
  String get recipientEmailsHelper =>
      'Destinatari multipli: separați prin virgule, punct și virgulă sau spații.';

  @override
  String get emailTo => 'E-mailul destinatarului';

  @override
  String get messageOptional => 'Mesaj (opțional)';

  @override
  String get passwordOptional => 'Parolă (opțional)';

  @override
  String get destructAfterDownload => 'Ștergeți după descărcare';

  @override
  String get destructNo => 'Păstrați la dispoziție';

  @override
  String get sendButton => 'Trimite';

  @override
  String get uploading => 'Se încarcă...';

  @override
  String get uploadComplete => 'Făcut';

  @override
  String get shareLinkTitle => 'Link-ul dvs';

  @override
  String get copyLink => 'Copiați linkul';

  @override
  String get share => 'Distribuie';

  @override
  String get shareQrCode => 'Partajați codul QR';

  @override
  String get uploadMore => 'Trimite altul';

  @override
  String get emailSentTitle => 'E-mailuri trimise';

  @override
  String get verifyEmailTitle => 'Verificați-vă adresa de e-mail';

  @override
  String get verifyCodeHint => 'Introdu codul de pe adresa ta de e-mail';

  @override
  String get verifySubmit => 'Verifica';

  @override
  String get verifyResendCode => 'Retrimiteți codul';

  @override
  String get verifyCodeSent =>
      'Un nou cod de verificare a fost trimis la adresa dvs. de e-mail.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Este posibil ca e-mailul de verificare să nu fi fost trimis';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serverul nu a putut confirma livrarea (de multe ori SMTP este configurat greșit). Solicitați administratorului site-ului să verifice setările de e-mail în panoul de administrare, apoi atingeți Retrimiteți codul.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Dacă nu ajunge: verificați Junk/Spam și Promoții, așteptați un minut, confirmați că <<PH0>> nu are greșeli de scriere, apoi atingeți Retrimiteți.';
  }

  @override
  String get loginTitle => 'Conectare';

  @override
  String get signupHint =>
      'Utilizați adresa de e-mail și parola contului dvs. de site.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Parolă';

  @override
  String get cancel => 'Anula';

  @override
  String get signIn => 'Conectare';

  @override
  String get downloadIdHint => 'Transfer ID';

  @override
  String get privateIdHint => 'ID privat (opțional)';

  @override
  String get fetchTransfer => 'Transfer deschis';

  @override
  String get downloadFile => 'Descărcați';

  @override
  String get unlockDownload => 'Deblocați descărcarea';

  @override
  String get downloadSaved => 'Salvat în Descărcări';

  @override
  String get errorGeneric => 'Ceva a mers prost';

  @override
  String get errorNetwork => 'Eroare de rețea';

  @override
  String get errorBadResponse => 'Răspuns neașteptat al serverului';

  @override
  String get termsAccept => 'Sunt de acord cu termenii';

  @override
  String get settingsApiUrl => 'Adresa URL a site-ului public';

  @override
  String get settingsAccount => 'Cont';

  @override
  String get settingsAppearance => 'Aspect';

  @override
  String get settingsTheme => 'Temă';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Aprinde';

  @override
  String get themeDark => 'Întuneric';

  @override
  String get settingsSignedIn => 'Sunteți conectat.';

  @override
  String get settingsSignedOut => 'Nu sunteți conectat.';

  @override
  String get settingsOpenWebsite => 'Deschide site-ul web';

  @override
  String get signUp => 'Înscrie-te';

  @override
  String get settingsLinks => 'Legături';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get termsOfService => 'Termeni și condiții';

  @override
  String get about => 'Despre';

  @override
  String get moreApps => 'Mai multe aplicații';

  @override
  String get settingsLanguage => 'Limbă';

  @override
  String get languageEnglish => 'engleză';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Deconectați-vă';

  @override
  String get deleteAccount => 'Ștergeți contul';

  @override
  String get deleteAccountConfirmTitle => 'Ștergeți contul?';

  @override
  String get deleteAccountConfirmBody =>
      'Acest lucru vă șterge definitiv contul și vă deconectați. Linkurile dvs. de transfer vor continua să funcționeze, dar nu vor mai apărea în istoricul dvs.';

  @override
  String get deleteAccountSuccess => 'Contul a fost șters';

  @override
  String get deleteAccountSuccessBody => 'Contul dvs. a fost eliminat.';

  @override
  String get deleteAccountFailed => 'Nu s-a putut șterge contul';

  @override
  String get deleteAccountFailedBody =>
      'Vă rugăm să încercați din nou sau să contactați asistența.';

  @override
  String get maxFilesReached => 'Prea multe fișiere';

  @override
  String get fileTooLarge => 'Fișier prea mare';

  @override
  String get ipLimit => 'Prea multe încărcări din această rețea';

  @override
  String get fillFields => 'Vă rugăm să completați câmpurile obligatorii';

  @override
  String get invalidEmail => 'E-mail nevalid';

  @override
  String get maxRecipientsReached => 'Prea mulți destinatari';

  @override
  String get loginRequiredTitle => 'Este necesară conectarea';

  @override
  String get loginRequiredBody =>
      'Acest server necesită un cont pentru a încărca sau descărca.';

  @override
  String get settingsSubtitle => 'Preferințele aplicației și contul.';

  @override
  String get dropHeavyFile => 'Aruncă un fișier greu aici.';

  @override
  String upToTotal(String max) {
    return 'Până la <<PH0>> total';
  }

  @override
  String get removeAll => 'Eliminați toate';

  @override
  String get addFiles => 'Adăugați fișiere';

  @override
  String get adding => 'Se adaugă…';

  @override
  String get options => 'Opțiuni';

  @override
  String get selfDestruct => 'Autodistrugerea după descărcare';

  @override
  String get expiry => 'Expirare';

  @override
  String get cancelUpload => 'Anulează încărcarea';

  @override
  String get transferReady => 'Transfer gata!';

  @override
  String get emailSentReady => 'Email trimis!';

  @override
  String get shareRecipientHint =>
      'Distribuiți acest link cu destinatarul dvs.';

  @override
  String get emailSentBody => 'Am notificat destinatarii dvs.';

  @override
  String get scanQr => 'Scanați pentru a deschide legătura de transfer.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'Introdu codul din 4 cifre trimis la adresa de e-mail a expeditorului.';

  @override
  String get starting => 'Pornire…';

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
    return '<<PH0>> MB rămas';
  }

  @override
  String get fillField => 'Vă rugăm să completați acest câmp.';

  @override
  String get enterValidEmail => 'Introduceți un e-mail valid.';

  @override
  String get message => 'Mesaj';

  @override
  String get recipientEmail => 'E-mailul destinatarului';

  @override
  String get active => 'Activ';

  @override
  String get expired => 'Expirat';

  @override
  String get historyTitle => 'Transferurile mele';

  @override
  String get signInToSeeTransfers =>
      'Conectați-vă pentru a vedea transferurile dvs';

  @override
  String get signInTransfersBody =>
      'Utilizăm e-mailul dvs. pentru a conecta transferurile la contul dvs. - nu este nevoie de parolă.';

  @override
  String get couldNotLoadTransfers => 'Transferurile nu au putut fi încărcate';

  @override
  String get retry => 'Reîncercați';

  @override
  String get noTransfersYet => 'Încă nu există transferuri';

  @override
  String get noTransfersBody =>
      'Odată ce trimiteți un fișier, acesta va apărea aici.';

  @override
  String get transferDetails => 'Detalii transfer';

  @override
  String get filesSection => 'Fișiere';

  @override
  String get receiveTitle => 'Primiți fișiere';

  @override
  String get receiveSubtitle =>
      'Lipiți un link de transfer pentru a descărca fișiere.';

  @override
  String get pasteTooltip => 'Pastă';

  @override
  String get findTransfer => 'Găsiți Transfer';

  @override
  String get receiveScanQr => 'Scanați QR';

  @override
  String get receiveScanQrTitle => 'Scanare transfer QR';

  @override
  String get receiveScanQrHint => 'Aliniați codul QR în interiorul cadrului.';

  @override
  String get receiveScanQrInvalid =>
      'Acest cod QR nu este o legătură de transfer validă.';

  @override
  String get receiveScanQrCameraDenied =>
      'Accesul la cameră este necesar pentru a scana codurile QR.';

  @override
  String get receiveStepGetLink => 'Obțineți linkul';

  @override
  String get receiveStepGetLinkBody =>
      'Cereți expeditorului să vă distribuie linkul de transfer.';

  @override
  String get receiveStepPaste => 'Lipiți și găsiți';

  @override
  String get receiveStepPasteBody =>
      'Lipiți linkul de mai sus și atingeți „Găsiți transfer”.';

  @override
  String get receiveStepDownload => 'Descărcați fișiere';

  @override
  String get receiveStepDownloadBody =>
      'Vedeți detaliile fișierului și descărcați totul deodată.';

  @override
  String get lookingUpTransfer => 'Se caută transferul...';

  @override
  String get transferNotFound =>
      'Transferul nu a fost găsit. Verificați linkul și încercați din nou.';

  @override
  String get transferExpired =>
      'Acest transfer a expirat și nu mai este disponibil.';

  @override
  String get transferLoginRequired =>
      'Este necesară conectarea pentru a accesa acest transfer.';

  @override
  String get transferBadResponse =>
      'Răspuns neașteptat al serverului. Verificați-vă conexiunea.';

  @override
  String get transferNetworkError =>
      'Eroare de rețea. Verificați-vă conexiunea la internet.';

  @override
  String transferLoadFailed(String error) {
    return 'Transferul nu a putut fi încărcat: <<PH0>>';
  }

  @override
  String get passwordProtected => 'Protejat prin parolă';

  @override
  String get enterPassword => 'Introduceți parola';

  @override
  String get unlock => 'Deblocați';

  @override
  String get downloading => 'Se descarcă...';

  @override
  String get downloadAllFiles => 'Descărcați toate fișierele';

  @override
  String get downloadSingleFile => 'Descărcați fișierul';

  @override
  String get receiveAnother => 'Primiți un alt transfer';

  @override
  String get plansTitle => 'Planuri';

  @override
  String get plansSubtitle =>
      'Faceți upgrade pentru a elimina reclamele și a trimite fișiere mai mari.';

  @override
  String get storeUnavailable => 'Magazin indisponibil';

  @override
  String get storeUnavailableBody =>
      'Achizițiile în aplicație nu sunt disponibile momentan.';

  @override
  String get storeLoadingPrices => 'Se încarcă prețurile din App Store...';

  @override
  String get storePricesUnavailable => 'Preturi indisponibile';

  @override
  String get storePricesPartial => 'Unele prețuri nu au putut fi încărcate';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '<<PH0>> din produsele cu abonament <<PH1>> încărcate.';
  }

  @override
  String get storeSetupHint =>
      'Testați pe un iPhone real (nu Simulator), utilizați un ID Apple Sandbox și asigurați-vă că toate cele 6 abonamente sunt create sub ID-ul pachetului acestei aplicații în App Store Connect cu prețuri setate.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<PH0>>/lună';
  }

  @override
  String get freeVersionAds =>
      'În prezent, utilizați versiunea noastră gratuită cu reclame';

  @override
  String get restorePurchases => 'Restabiliți achizițiile';

  @override
  String get plansContinue => 'Continua';

  @override
  String get planLinkRestore => 'Restabili';

  @override
  String get termsAndConditions => 'Termeni și condiții';

  @override
  String get createAccountTitle => 'Creează cont';

  @override
  String get signUpSubtitle => 'Înscrieți-vă cu e-mail și parolă.';

  @override
  String get confirmPassword => 'Confirmați parola';

  @override
  String get passwordMin8 => 'Parola (min 8 caractere)';

  @override
  String get alreadyHaveAccount => 'Aveți deja un cont?';

  @override
  String get checkEmailTitle => 'Verificați-vă\ne-mail';

  @override
  String otpSentTo(String email) {
    return 'Am trimis un cod din 6 cifre către\n<<PH0>>';
  }

  @override
  String get verifyAndSignIn => 'Verificați și conectați-vă';

  @override
  String get didntReceiveCode => 'Nu l-ai primit?';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get otpExpiresHint =>
      'Codul expiră în 5 minute. Verificați folderul de spam dacă nu îl vedeți.';

  @override
  String get snackError => 'Eroare';

  @override
  String get snackCopied => 'Copiat';

  @override
  String get snackCopiedBody => 'Link copiat în clipboard';

  @override
  String get snackWelcome => 'Bun venit';

  @override
  String get snackAccountCreated => 'Cont creat';

  @override
  String get snackEnterEmail => 'Vă rugăm să introduceți adresa dvs. de e-mail';

  @override
  String get snackEnterPassword => 'Vă rugăm să introduceți parola';

  @override
  String get snackInvalidEmail => 'Adresă de e-mail nevalidă';

  @override
  String get snackInvalidCredentials => 'E-mail sau parolă incorectă';

  @override
  String get snackPasswordMin8 =>
      'Parola trebuie să aibă cel puțin 8 caractere';

  @override
  String get snackPasswordMismatch => 'Parolele nu se potrivesc.';

  @override
  String get snackAccountExists =>
      'Contul există deja. Vă rugăm să vă conectați.';

  @override
  String get snackSignupFailed => 'Nu s-a putut crea contul. Încearcă din nou.';

  @override
  String get snackEnterOtp => 'Vă rugăm să introduceți codul din 6 cifre';

  @override
  String get snackOtpExpired => 'Codul a expirat';

  @override
  String get snackOtpExpiredBody => 'Vă rugăm să solicitați un nou cod.';

  @override
  String get snackInvalidCode => 'Cod nevalid';

  @override
  String get snackInvalidCodeBody =>
      'Codul este incorect. Vă rugăm să încercați din nou.';

  @override
  String get snackSendCodeFailed =>
      'Codul nu a putut fi trimis. Verificați conexiunea și încercați din nou.';

  @override
  String get snackEmptyFolder => 'Dosar gol';

  @override
  String get snackEmptyFolderBody =>
      'Nu s-au găsit fișiere în folderul selectat.';

  @override
  String get snackFolderUnsupported => 'Nu este acceptat';

  @override
  String get snackFolderUnsupportedBody =>
      'Încărcarea folderului nu este disponibilă pe această platformă.';

  @override
  String get snackFolderReadError => 'Nu s-a putut citi folderul selectat.';

  @override
  String get snackLimitReached => 'Limita atinsa';

  @override
  String get snackLimitFilesBody =>
      'Unele fișiere nu au fost adăugate din cauza limitelor de dimensiune sau număr de fișiere.';

  @override
  String get snackFreePlanLimit =>
      'Planul gratuit permite până la 5 GB per transfer. Vă rugăm să eliminați unele fișiere sau să faceți upgrade.';

  @override
  String get snackSignInEmail =>
      'Vă rugăm să vă conectați pentru a trimite prin e-mail.';

  @override
  String get snackUploadStartFailed => 'Nu s-a putut începe încărcarea.';

  @override
  String get snackVerifyEnterCode =>
      'Introdu codul din 4 cifre din e-mailul tău.';

  @override
  String get snackVerifyInvalid =>
      'Cod invalid sau expirat. Verificați e-mailul și încercați din nou.';

  @override
  String get snackVerifyResendFailed =>
      'Codul nu a putut fi retrimis. Încearcă din nou.';

  @override
  String get snackDownloadComplete => 'Descărcare finalizată';

  @override
  String snackDownloadSaved(String filename) {
    return '„<<PH0>>” a fost salvat în Descărcări';
  }

  @override
  String get snackDownloadFailed => 'Descărcarea a eșuat';

  @override
  String get snackSaved => 'Salvat';

  @override
  String get snackServerUrlUpdated =>
      'Adresa URL a serverului a fost actualizată. Reporniți aplicația pentru a aplica.';

  @override
  String get snackStoreError => 'Eroare de stocare';

  @override
  String get snackMissingProducts => 'Lipsesc produse';

  @override
  String get snackStoreUnavailable => 'Magazin indisponibil';

  @override
  String get snackStoreUnavailableBody =>
      'Achizițiile în aplicație nu sunt disponibile pe acest dispozitiv.';

  @override
  String get snackProductNotLoaded => 'Produsul nu este încă încărcat.';

  @override
  String get snackRestoreStarted => 'Restaurarea a început';

  @override
  String get snackRestoreStartedBody => 'Vă verificăm achizițiile.';

  @override
  String get snackRestoreFailed => 'Restaurarea a eșuat';

  @override
  String get snackProcessing => 'Prelucrare';

  @override
  String get snackPleaseWait => 'Va rugam asteptati…';

  @override
  String get snackSuccess => 'Succes';

  @override
  String get snackPurchaseCompleted => 'Achiziție finalizată.';

  @override
  String get snackPurchaseError => 'Eroare de cumpărare';

  @override
  String get snackPurchaseFailed => 'Achiziția nu a reușit.';

  @override
  String get snackCanceled => 'Anulat';

  @override
  String get snackPurchaseCanceled => 'Achiziție anulată.';

  @override
  String get snackUpload => 'Încărcați';

  @override
  String get snackVerify => 'Verifica';

  @override
  String get doNotExpire => 'Nu expiră';

  @override
  String get hourSingular => 'oră';

  @override
  String get hourPlural => 'ore';

  @override
  String get daySingular => 'zi';

  @override
  String get dayPlural => 'zile';

  @override
  String get emailAddressLabel => 'ADRESA DE E-MAIL';

  @override
  String get passwordLabelCaps => 'PAROLĂ';

  @override
  String get confirmPasswordLabelCaps => 'CONFIRMĂ PAROLA';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LINK DE TRANSFER SAU ID';

  @override
  String get howToReceive => 'CUM SE PRIMI';

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
  String get planAdsTitle => 'Plan de reclame';

  @override
  String get planAdsBullet1 => 'Acces la aplicația fără reclame';

  @override
  String get planAdsBullet2 => 'Eliminați toate anunțurile';

  @override
  String get planProTitle => 'Plan Pro';

  @override
  String get planProBullet1 => 'Trimite fișiere de până la 20 GB';

  @override
  String get planProBullet2 => 'Încărcare rapidă';

  @override
  String get planPremiumTitle => 'Plan Premium';

  @override
  String get planPremiumBullet1 => 'Trimite fișiere de până la 100 GB';

  @override
  String get planPremiumBullet2 => 'Încărcare super rapidă';

  @override
  String get planSubscriptionDisclaimer =>
      'Fără perioadă de probă - este necesar un abonament pentru a utiliza funcționalitatea suplimentară a aplicației. Veți fi taxat imediat. Puteți anula oricând.';

  @override
  String get perMonth => '/luna';

  @override
  String get perYear => '/an';

  @override
  String get snackConnectionProblem =>
      'Problemă de conectare. Vă rugăm să încercați din nou.';

  @override
  String get networkTitle => 'Reţea';

  @override
  String transferIdLabel(String id) {
    return 'ID: <<PH0>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Fișiere: <<PH0>> · <<PH1>> octeți';
  }

  @override
  String todayAt(String time) {
    return 'Astăzi · <<PH0>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'Ieri · <<PH0>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '<<PH0>> cu zi în urmă · <<PH1>>';
  }

  @override
  String dateAt(String date, String time) {
    return '<<PH0>> · <<PH1>>';
  }

  @override
  String mbAmount(String amount) {
    return '<<PH0>> MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '<<PH0>> / <<PH1>> • <<PH2>> stânga';
  }

  @override
  String get loadingShort => 'Încărcare…';

  @override
  String get colorPaletteTitle => 'Paleta de culori';

  @override
  String get colorPaletteSectionBackgrounds => 'Fundaluri (scara de cerneală)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primar';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Borduri și sticlă';

  @override
  String get colorPaletteSectionSemantic => 'Semantic';

  @override
  String get colorPaletteSectionLive => 'Tema live (actuală)';

  @override
  String get colorPaletteActiveHint => '★ = utilizat în mod activ în ecrane';

  @override
  String get colorPaletteCopyHint =>
      'Apăsați lung orice eșantion pentru a-i copia valoarea hex.';

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
  String get settingsAppBrand => 'Distribuie mare\nFișiere video';

  @override
  String get loginEmailPasswordPrompt =>
      'Introduceți adresa de e-mail și parola pentru a vă conecta.';

  @override
  String get forgotPassword => 'Aţi uitat parola?';

  @override
  String get forgotPasswordTitle => 'Resetează parola';

  @override
  String get forgotPasswordBody =>
      'Introduceți e-mailul contului și vă vom trimite un cod de resetare.';

  @override
  String get forgotPasswordSubmit => 'Trimite codul de resetare';

  @override
  String get resetPasswordTitle => 'Creați o nouă parolă';

  @override
  String get resetPasswordBody =>
      'Introdu codul din 6 cifre din e-mailul tău și alege o nouă parolă.';

  @override
  String get resetPasswordSubmit => 'Actualizați parola';

  @override
  String get snackPasswordResetSent => 'Codul de resetare a fost trimis';

  @override
  String get snackPasswordResetSentBody =>
      'Verificați e-mailul pentru un cod de resetare din 6 cifre.';

  @override
  String get snackPasswordResetFailed =>
      'Nu s-a putut trimite codul de resetare. Încearcă din nou.';

  @override
  String get snackPasswordUpdated => 'Parola a fost actualizată';

  @override
  String get snackPasswordUpdatedBody => 'Conectați-vă cu noua parolă.';

  @override
  String get snackPasswordResetInvalid =>
      'Cod de resetare invalid sau expirat.';

  @override
  String get otpDigitLabel => 'COD 6 CIFRE';

  @override
  String receiveMoreFiles(int count) {
    return '+<<PH0>> mai multe fișiere';
  }
}
