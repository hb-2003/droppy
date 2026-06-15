// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Podijelite velike video datoteke';

  @override
  String get heroAccent => 'odmah.';

  @override
  String get heroTitle => 'Pošalji teške datoteke';

  @override
  String get splashLoading => 'učitavanje...';

  @override
  String get navSend => 'Nadzorna ploča';

  @override
  String get navHome => 'Dom';

  @override
  String get navHistory => 'Povijest';

  @override
  String get navReceive => 'primiti';

  @override
  String get navPlans => 'Planovi';

  @override
  String get navDownload => 'preuzimanje';

  @override
  String get navSettings => 'postavke';

  @override
  String get modeLink => 'Nabavite vezu';

  @override
  String get modeEmail => 'Pošalji e-poštom';

  @override
  String get pickFiles => 'Odaberite datoteke';

  @override
  String get pickFolder => 'Odaberite mapu';

  @override
  String get emailFrom => 'Vaš email';

  @override
  String get mailFromUsesAccount =>
      'Koristi vašu e-poštu na koju ste prijavljeni.';

  @override
  String get recipientEmailsHelper =>
      'Više primatelja: odvojite ih zarezima, točkom i zarezom ili razmacima.';

  @override
  String get emailTo => 'E-pošta primatelja';

  @override
  String get messageOptional => 'Poruka (nije obavezno)';

  @override
  String get passwordOptional => 'Lozinka (nije obavezno)';

  @override
  String get destructAfterDownload => 'Izbriši nakon preuzimanja';

  @override
  String get destructNo => 'Držite na raspolaganju';

  @override
  String get sendButton => 'Poslati';

  @override
  String get uploading => 'Prijenos…';

  @override
  String get uploadComplete => 'Gotovo';

  @override
  String get shareLinkTitle => 'Vaš link';

  @override
  String get copyLink => 'Kopiraj vezu';

  @override
  String get share => 'Udio';

  @override
  String get shareQrCode => 'Podijelite QR kod';

  @override
  String get uploadMore => 'Pošalji drugu';

  @override
  String get emailSentTitle => 'E-poruke su poslane';

  @override
  String get verifyEmailTitle => 'Potvrdite svoju e-poštu';

  @override
  String get verifyCodeHint => 'Unesite kod iz svoje e-pošte';

  @override
  String get verifySubmit => 'Potvrdi';

  @override
  String get verifyResendCode => 'Ponovno pošalji kod';

  @override
  String get verifyCodeSent => 'Novi kontrolni kod poslan je na vašu e-poštu.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'E-pošta za potvrdu možda nije poslana';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Poslužitelj nije mogao potvrditi isporuku (SMTP je često krivo konfiguriran). Zamolite administratora web-mjesta da provjeri postavke pošte u administratorskoj ploči, zatim dodirnite Ponovno pošalji kod.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ako ne stigne: provjerite Junk/Spam i Promocije, pričekajte minutu, potvrdite da <<PH0>> nema pogrešaka pri upisu, zatim dodirnite Ponovno pošalji.';
  }

  @override
  String get loginTitle => 'Prijavite se';

  @override
  String get signupHint =>
      'Upotrijebite e-poštu i zaporku računa svoje web-lokacije.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Lozinka';

  @override
  String get cancel => 'Otkazati';

  @override
  String get signIn => 'Prijavite se';

  @override
  String get downloadIdHint => 'ID prijenosa';

  @override
  String get privateIdHint => 'Privatni ID (nije obavezno)';

  @override
  String get fetchTransfer => 'Otvoreni prijenos';

  @override
  String get downloadFile => 'preuzimanje';

  @override
  String get unlockDownload => 'Otključaj preuzimanje';

  @override
  String get downloadSaved => 'Spremljeno u Preuzimanja';

  @override
  String get errorGeneric => 'Nešto nije u redu';

  @override
  String get errorNetwork => 'Mrežna pogreška';

  @override
  String get errorBadResponse => 'Neočekivani odgovor poslužitelja';

  @override
  String get termsAccept => 'Slažem se s uvjetima';

  @override
  String get settingsApiUrl => 'Javna stranica URL';

  @override
  String get settingsAccount => 'Račun';

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sustav';

  @override
  String get themeLight => 'Svijetlo';

  @override
  String get themeDark => 'Tamno';

  @override
  String get settingsSignedIn => 'Prijavljeni ste.';

  @override
  String get settingsSignedOut => 'Niste prijavljeni u.';

  @override
  String get settingsOpenWebsite => 'Otvori web stranicu';

  @override
  String get signUp => 'Prijavi se';

  @override
  String get settingsLinks => 'Veze';

  @override
  String get privacyPolicy => 'Pravila o privatnosti';

  @override
  String get termsOfService => 'Uvjeti usluge';

  @override
  String get about => 'O';

  @override
  String get moreApps => 'Više apps';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Log out';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountConfirmTitle => 'Delete your account?';

  @override
  String get deleteAccountConfirmBody =>
      'This permanently deletes your account and signs you out. Vaše veze za prijenos nastavit će raditi, ali se više neće pojavljivati u vašoj povijesti.';

  @override
  String get deleteAccountSuccess => 'Račun izbrisan';

  @override
  String get deleteAccountSuccessBody => 'Vaš račun je uklonjen.';

  @override
  String get deleteAccountFailed => 'Nije moguće izbrisati račun';

  @override
  String get deleteAccountFailedBody =>
      'Pokušajte ponovo ili kontaktirajte podršku.';

  @override
  String get maxFilesReached => 'Previše datoteka';

  @override
  String get fileTooLarge => 'Datoteka također veliki';

  @override
  String get ipLimit => 'Previše prijenosa s ove mreže';

  @override
  String get fillFields => 'Molimo ispunite obavezna polja';

  @override
  String get invalidEmail => 'Nevažeća e-pošta';

  @override
  String get maxRecipientsReached => 'Previše primatelja';

  @override
  String get loginRequiredTitle => 'Potrebna je prijava';

  @override
  String get loginRequiredBody =>
      'Ovaj poslužitelj zahtijeva račun za prijenos ili preuzimanje.';

  @override
  String get settingsSubtitle => 'Postavke aplikacije i račun.';

  @override
  String get dropHeavyFile => 'Ovdje ispustite tešku datoteku.';

  @override
  String upToTotal(String max) {
    return 'Do <<PH0>> ukupno';
  }

  @override
  String get removeAll => 'Ukloni sve';

  @override
  String get addFiles => 'Dodaj datoteke';

  @override
  String get adding => 'Dodavanje…';

  @override
  String get options => 'Opcije';

  @override
  String get selfDestruct => 'Samouništenje nakon preuzimanja';

  @override
  String get expiry => 'Istek';

  @override
  String get cancelUpload => 'Otkaži prijenos';

  @override
  String get transferReady => 'Prijenos spreman!';

  @override
  String get emailSentReady => 'E-pošta poslana!';

  @override
  String get shareRecipientHint => 'Podijelite ovu vezu sa svojim primateljem.';

  @override
  String get emailSentBody => 'Obavijestili smo vaše primatelje(e).';

  @override
  String get scanQr => 'Skenirajte da biste otvorili vezu za prijenos.';

  @override
  String get shareLinkButton => 'DIJELI LINK';

  @override
  String get verifyFourDigit =>
      'Unesite 4-znamenkasti kod poslan na vašu e-poštu pošiljatelja.';

  @override
  String get starting => 'Početak…';

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
    return '<<PH0>> MB preostalo';
  }

  @override
  String get fillField => 'Molimo ispunite ovo polje.';

  @override
  String get enterValidEmail => 'Unesite važeći e-pošta.';

  @override
  String get message => 'Poruka';

  @override
  String get recipientEmail => 'E-pošta primatelja';

  @override
  String get active => 'Aktivna';

  @override
  String get expired => 'Istekla';

  @override
  String get historyTitle => 'Moji transferi';

  @override
  String get signInToSeeTransfers =>
      'Prijavite se da biste vidjeli svoje transfere';

  @override
  String get signInTransfersBody =>
      'Koristimo vašu e-poštu za povezivanje transfera s vašim računom — nije potrebna lozinka.';

  @override
  String get couldNotLoadTransfers => 'Nije moguće učitati prijenosi';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get noTransfersYet => 'Još nema prijenosa';

  @override
  String get noTransfersBody =>
      'Kada pošaljete datoteku, ona će se pojaviti ovdje.';

  @override
  String get transferDetails => 'Pojedinosti o prijenosu';

  @override
  String get filesSection => 'Datoteke';

  @override
  String get receiveTitle => 'Primi datoteke';

  @override
  String get receiveSubtitle =>
      'Zalijepite vezu za prijenos za preuzimanje datoteke.';

  @override
  String get pasteTooltip => 'Zalijepi';

  @override
  String get findTransfer => 'Pronađi prijenos';

  @override
  String get receiveScanQr => 'Skeniraj QR';

  @override
  String get receiveScanQrTitle => 'Skeniraj QR prijenos';

  @override
  String get receiveScanQrHint => 'Poravnaj QR kod unutar okvira.';

  @override
  String get receiveScanQrInvalid =>
      'Ovaj QR kod nije valjana veza za prijenos.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kamera potreban je pristup za skeniranje QR kodova.';

  @override
  String get receiveStepGetLink => 'Preuzmite vezu';

  @override
  String get receiveStepGetLinkBody =>
      'Zamolite pošiljatelja da s vama podijeli vezu za prijenos.';

  @override
  String get receiveStepPaste => 'Zalijepi i pronađi';

  @override
  String get receiveStepPasteBody =>
      'Zalijepi gornju vezu i dodirnite \"Pronađi prijenos\".';

  @override
  String get receiveStepDownload => 'Preuzmi datoteke';

  @override
  String get receiveStepDownloadBody =>
      'Pogledaj detalje datoteke i preuzmite sve odjednom.';

  @override
  String get lookingUpTransfer => 'Traženje prijenosa...';

  @override
  String get transferNotFound =>
      'Prijenos nije pronađen. Provjerite vezu i pokušajte ponovo.';

  @override
  String get transferExpired =>
      'Ovaj prijenos je istekao i više nije dostupan.';

  @override
  String get transferLoginRequired =>
      'Za pristup ovom prijenosu potrebna je prijava.';

  @override
  String get transferBadResponse =>
      'Neočekivani odgovor poslužitelja. Provjerite vezu.';

  @override
  String get transferNetworkError =>
      'Mrežna pogreška. Provjerite internetsku vezu.';

  @override
  String transferLoadFailed(String error) {
    return 'Nije moguće učitati prijenos: <<PH0>>';
  }

  @override
  String get passwordProtected => 'Zaporka zaštićena';

  @override
  String get enterPassword => 'Unesite lozinku';

  @override
  String get unlock => 'Otključaj';

  @override
  String get downloading => 'Preuzimanje…';

  @override
  String get downloadAllFiles => 'Preuzmi sve datoteke';

  @override
  String get downloadSingleFile => 'Preuzmi datoteku';

  @override
  String get receiveAnother => 'Primi još jedan prijenos';

  @override
  String get plansTitle => 'Planovi';

  @override
  String get plansSubtitle =>
      'Nadogradite za uklanjanje oglasa i slanje većih datoteka.';

  @override
  String get storeUnavailable => 'Trgovina nije dostupna';

  @override
  String get storeUnavailableBody =>
      'Kupnje unutar aplikacije nisu dostupne točno sada.';

  @override
  String get storeLoadingPrices => 'Učitavanje cijena iz App Storea…';

  @override
  String get storePricesUnavailable => 'Cijene nedostupne';

  @override
  String get storePricesPartial => 'Neke cijene nisu mogle biti učitane';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '<<PH0>> od <<PH1>> proizvoda za pretplatu su učitani.';
  }

  @override
  String get storeSetupHint =>
      'Testirajte na stvarnom iPhoneu (ne na Simulatoru), koristite Sandbox Apple ID i osigurajte sve 6 pretplata stvoreno je pod ID-om paketa ove aplikacije u App Store Connectu s postavljenim cijenama.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<PH0>>/mjesečno';
  }

  @override
  String get freeVersionAds =>
      'Trenutno koristite našu besplatnu verziju s oglasima';

  @override
  String get restorePurchases => 'Vrati kupovine';

  @override
  String get plansContinue => 'Nastavi';

  @override
  String get planLinkRestore => 'Vrati';

  @override
  String get termsAndConditions => 'Uvjeti i odredbe';

  @override
  String get createAccountTitle => 'Izradi račun';

  @override
  String get signUpSubtitle => 'Prijavi se e-poštom i lozinkom.';

  @override
  String get confirmPassword => 'Potvrdi lozinku';

  @override
  String get passwordMin8 => 'Lozinka (min. 8 chars)';

  @override
  String get alreadyHaveAccount => 'Već imate račun?';

  @override
  String get checkEmailTitle => 'Provjerite svoj\nemail';

  @override
  String otpSentTo(String email) {
    return 'Poslali smo 6-znamenkasti kod na\n<<PH0>>';
  }

  @override
  String get verifyAndSignIn => 'Potvrdi i prijavi se';

  @override
  String get didntReceiveCode => 'Niste ga primili?';

  @override
  String get tryAgain => 'Pokušajte ponovo';

  @override
  String get otpExpiresHint =>
      'Kôd ističe za 5 minuta. Provjerite mapu neželjene pošte ako je ne vidite.';

  @override
  String get snackError => 'Pogreška';

  @override
  String get snackCopied => 'Kopirano';

  @override
  String get snackCopiedBody => 'Veza je kopirana u međuspremnik';

  @override
  String get snackWelcome => 'Dobro došli';

  @override
  String get snackAccountCreated => 'Račun stvoren';

  @override
  String get snackEnterEmail => 'Unesite svoj email';

  @override
  String get snackEnterPassword => 'Unesite svoju lozinku';

  @override
  String get snackInvalidEmail => 'Nevažeća adresa e-pošte';

  @override
  String get snackInvalidCredentials => 'Netočna adresa e-pošte ili lozinka';

  @override
  String get snackPasswordMin8 => 'Lozinka mora imati najmanje 8 znakova';

  @override
  String get snackPasswordMismatch => 'Lozinke se ne podudaraju.';

  @override
  String get snackAccountExists => 'Račun već postoji. Prijavite se.';

  @override
  String get snackSignupFailed =>
      'Nije moguće stvoriti račun. Pokušajte ponovno.';

  @override
  String get snackEnterOtp => 'Unesite 6-znamenkasti kod';

  @override
  String get snackOtpExpired => 'Kôd je istekao';

  @override
  String get snackOtpExpiredBody => 'Zatražite novi kod.';

  @override
  String get snackInvalidCode => 'Kôd nevažeći';

  @override
  String get snackInvalidCodeBody => 'Kôd je netočan. Pokušajte ponovno.';

  @override
  String get snackSendCodeFailed =>
      'Nije moguće poslati kod. Provjerite vezu i pokušajte ponovo.';

  @override
  String get snackEmptyFolder => 'Prazna mapa';

  @override
  String get snackEmptyFolderBody =>
      'U odabranoj mapi nisu pronađene datoteke.';

  @override
  String get snackFolderUnsupported => 'Nije podržano';

  @override
  String get snackFolderUnsupportedBody =>
      'Prijenos mape nije dostupan na ovoj platformi.';

  @override
  String get snackFolderReadError => 'Nije moguće pročitati odabranu mapu.';

  @override
  String get snackLimitReached => 'Ograničenje je dosegnuto';

  @override
  String get snackLimitFilesBody =>
      'Neke datoteke nisu dodane zbog veličine ili broja datoteka ograničenja.';

  @override
  String get snackFreePlanLimit =>
      'Besplatni plan dopušta do 5 GB po prijenosu. Uklonite neke datoteke ili nadogradite.';

  @override
  String get snackSignInEmail => 'Prijavite se za slanje e-poštom.';

  @override
  String get snackUploadStartFailed => 'Nije moguće pokrenuti prijenos.';

  @override
  String get snackVerifyEnterCode =>
      'Unesite 4-znamenkasti kod iz svoje e-pošte.';

  @override
  String get snackVerifyInvalid =>
      'Kôd je nevažeći ili istekao. Provjerite e-poštu i pokušajte ponovno.';

  @override
  String get snackVerifyResendFailed =>
      'Nije moguće ponovno poslati kôd. Pokušajte ponovo.';

  @override
  String get snackDownloadComplete => 'Preuzimanje dovršeno';

  @override
  String snackDownloadSaved(String filename) {
    return '\"<<PH0>>\" spremljeno u Preuzimanja';
  }

  @override
  String get snackDownloadFailed => 'Preuzimanje nije uspjelo';

  @override
  String get snackSaved => 'Spremljeno';

  @override
  String get snackServerUrlUpdated =>
      'URL poslužitelja ažuriran. Ponovno pokrenite aplikaciju za primjenu.';

  @override
  String get snackStoreError => 'Pogreška trgovine';

  @override
  String get snackMissingProducts => 'Proizvodi koji nedostaju';

  @override
  String get snackStoreUnavailable => 'Trgovina nije dostupna';

  @override
  String get snackStoreUnavailableBody =>
      'Kupnje unutar aplikacije nisu dostupne na ovom uređaju.';

  @override
  String get snackProductNotLoaded => 'Proizvod još nije učitan.';

  @override
  String get snackRestoreStarted => 'Pokrenuto vraćanje';

  @override
  String get snackRestoreStartedBody => 'Provjeravamo vaš kupnje.';

  @override
  String get snackRestoreFailed => 'Vraćanje nije uspjelo';

  @override
  String get snackProcessing => 'Obrada';

  @override
  String get snackPleaseWait => 'Pričekajte...';

  @override
  String get snackSuccess => 'Uspjeh';

  @override
  String get snackPurchaseCompleted => 'Kupnja dovršena.';

  @override
  String get snackPurchaseError => 'Pogreška pri kupnji';

  @override
  String get snackPurchaseFailed => 'Kupnja nije uspjelo.';

  @override
  String get snackCanceled => 'Otkazano';

  @override
  String get snackPurchaseCanceled => 'Kupnja otkazana.';

  @override
  String get snackUpload => 'Prenesi';

  @override
  String get snackVerify => 'Potvrdi';

  @override
  String get doNotExpire => 'Nemoj ističe';

  @override
  String get hourSingular => 'sat';

  @override
  String get hourPlural => 'sati';

  @override
  String get daySingular => 'dan';

  @override
  String get dayPlural => 'dana';

  @override
  String get emailAddressLabel => 'ADRESA E-POŠTE';

  @override
  String get passwordLabelCaps => 'LOZINKA';

  @override
  String get confirmPasswordLabelCaps => 'POTVRDI LOZINKU';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LINK ZA PRIJENOS ILI ID';

  @override
  String get howToReceive => 'KAKO PRIMITI';

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
  String get planAdsTitle => 'Ads Plan';

  @override
  String get planAdsBullet1 => 'Pristup aplikaciji bez oglasa';

  @override
  String get planAdsBullet2 => 'Ukloni sve oglase';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Pošalji datoteke do 20 GB';

  @override
  String get planProBullet2 => 'Brzo slanje';

  @override
  String get planPremiumTitle => 'Premium plan';

  @override
  String get planPremiumBullet1 => 'Šaljite datoteke do 100 GB';

  @override
  String get planPremiumBullet2 => 'Super brzo slanje';

  @override
  String get planSubscriptionDisclaimer =>
      'Nema probnog razdoblja — potrebna je pretplata za korištenje dodatne funkcije aplikacije. Bit će vam odmah naplaćeno. Možete otkazati bilo kada.';

  @override
  String get perMonth => '/ mjesec';

  @override
  String get perYear => '/ godina';

  @override
  String get snackConnectionProblem => 'Problem s vezom. Pokušajte ponovno.';

  @override
  String get networkTitle => 'Mreža';

  @override
  String transferIdLabel(String id) {
    return 'ID: <<PH0>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Datoteke: <<PH0>> · <<PH1>> bajtovi';
  }

  @override
  String todayAt(String time) {
    return 'Danas · <<PH0>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'Jučer · <<PH0>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '<<PH0>>prije d · <<PH1>>';
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
    return '<<PH0>> / <<PH1>> • <<PH2>> lijevo';
  }

  @override
  String get loadingShort => 'učitavanje...';

  @override
  String get colorPaletteTitle => 'Paleta boja';

  @override
  String get colorPaletteSectionBackgrounds => 'Pozadine (tinta skala)';

  @override
  String get colorPaletteSectionAccent => 'Akcent / Primarni';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Rubnice i staklo';

  @override
  String get colorPaletteSectionSemantic => 'Semantika';

  @override
  String get colorPaletteSectionLive => 'Tema uživo (trenutačno)';

  @override
  String get colorPaletteActiveHint => '★ = aktivno se koristi u zasloni';

  @override
  String get colorPaletteCopyHint =>
      'Dugo pritisnite bilo koji uzorak da kopirate njegovu heksadecimalnu vrijednost.';

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
  String get settingsAppBrand => 'Podijeli veliko\nVideo datoteke';

  @override
  String get loginEmailPasswordPrompt =>
      'Unesite svoju e-poštu i lozinku za prijavu.';

  @override
  String get forgotPassword => 'Zaboravili ste lozinku?';

  @override
  String get forgotPasswordTitle => 'Poništite lozinku';

  @override
  String get forgotPasswordBody =>
      'Unesite e-poštu svog računa i poslat ćemo vam kod za poništavanje.';

  @override
  String get forgotPasswordSubmit => 'Pošaljite kod za poništavanje';

  @override
  String get resetPasswordTitle => 'Kreiraj novi lozinka';

  @override
  String get resetPasswordBody =>
      'Unesite 6-znamenkasti kod iz svoje e-pošte i odaberite novu lozinku.';

  @override
  String get resetPasswordSubmit => 'Ažuriraj lozinku';

  @override
  String get snackPasswordResetSent => 'Kôd za poništavanje poslan';

  @override
  String get snackPasswordResetSentBody =>
      'Provjerite e-poštu za 6-znamenkasti kod za poništavanje.';

  @override
  String get snackPasswordResetFailed =>
      'Nije moguće poslati kod za poništavanje. Pokušajte ponovo.';

  @override
  String get snackPasswordUpdated => 'Zaporka je ažurirana';

  @override
  String get snackPasswordUpdatedBody =>
      'Prijavite se sa svojom novom zaporkom.';

  @override
  String get snackPasswordResetInvalid =>
      'Kôd za poništavanje nije valjan ili je istekao.';

  @override
  String get otpDigitLabel => 'ŠESTEROZNAMENKI KOD';

  @override
  String receiveMoreFiles(int count) {
    return '+<<PH0>> više datoteka';
  }
}
