// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Bendrinkite didelius vaizdo failus';

  @override
  String get heroAccent => 'akimirksniu.';

  @override
  String get heroTitle => 'Siųsti sunkius failus';

  @override
  String get splashLoading => 'Įkeliama…';

  @override
  String get navSend => 'Prietaisų skydelis';

  @override
  String get navHome => 'Pradžia';

  @override
  String get navHistory => 'Istorija';

  @override
  String get navReceive => 'Gauti';

  @override
  String get navPlans => 'Planai';

  @override
  String get navDownload => 'Atsisiųsti';

  @override
  String get navSettings => 'Nustatymai';

  @override
  String get modeLink => 'Gaukite nuorodą';

  @override
  String get modeEmail => 'Siųsti el';

  @override
  String get modeWifi => 'Wi‑Fi';

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
  String get pickFiles => 'Pasirinkite failus';

  @override
  String get pickFolder => 'Pasirinkite aplanką';

  @override
  String get emailFrom => 'Jūsų el. paštas';

  @override
  String get mailFromUsesAccount => 'Naudoja jūsų prisijungtą el. paštą.';

  @override
  String get recipientEmailsHelper =>
      'Keli gavėjai: atskirkite kableliais, kabliataškiais arba tarpais.';

  @override
  String get emailTo => 'Gavėjo el';

  @override
  String get messageOptional => 'Pranešimas (neprivaloma)';

  @override
  String get passwordOptional => 'Slaptažodis (neprivaloma)';

  @override
  String get destructAfterDownload => 'Ištrinti po atsisiuntimo';

  @override
  String get destructNo => 'Laikyti prieinamą';

  @override
  String get sendButton => 'Siųsti';

  @override
  String get uploading => 'Įkeliama…';

  @override
  String get uploadComplete => 'Atlikta';

  @override
  String get shareLinkTitle => 'Jūsų nuoroda';

  @override
  String get copyLink => 'Nukopijuoti nuorodą';

  @override
  String get share => 'Dalintis';

  @override
  String get shareQrCode => 'Bendrinkite QR kodą';

  @override
  String get uploadMore => 'Atsiųsk kitą';

  @override
  String get emailSentTitle => 'Laiškai išsiųsti';

  @override
  String get verifyEmailTitle => 'Patvirtinkite el. pašto adresą';

  @override
  String get verifyCodeHint => 'Įveskite kodą iš savo el';

  @override
  String get verifySubmit => 'Patvirtinti';

  @override
  String get verifyResendCode => 'Iš naujo siųsti kodą';

  @override
  String get verifyCodeSent =>
      'Jūsų el. paštu buvo išsiųstas naujas patvirtinimo kodas.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Gali būti, kad patvirtinimo el. laiškas nebuvo išsiųstas';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serveris negalėjo patvirtinti pristatymo (dažnai SMTP yra netinkamai sukonfigūruotas). Paprašykite savo svetainės administratoriaus patikrinti pašto nustatymus administratoriaus skydelyje, tada bakstelėkite Siųsti kodą iš naujo.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Jei jis negaunamas: pažymėkite Šlamštas / Šlamštas ir Reklamos, palaukite minutę, patvirtinkite, kad $email nėra rašybos klaidų, tada bakstelėkite Siųsti iš naujo.';
  }

  @override
  String get loginTitle => 'Prisijunkite';

  @override
  String get signupHint =>
      'Naudokite savo svetainės paskyros el. paštą ir slaptažodį.';

  @override
  String get emailHint => 'El. paštas';

  @override
  String get passwordHint => 'Slaptažodis';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get signIn => 'Prisijunkite';

  @override
  String get downloadIdHint => 'Pervedimo ID';

  @override
  String get privateIdHint => 'Asmeninis ID (neprivaloma)';

  @override
  String get fetchTransfer => 'Atidaryti perkėlimą';

  @override
  String get downloadFile => 'Atsisiųsti';

  @override
  String get unlockDownload => 'Atrakinti atsisiuntimą';

  @override
  String get downloadSaved => 'Išsaugota atsisiuntimų sąraše';

  @override
  String get errorGeneric => 'Kažkas nutiko';

  @override
  String get errorNetwork => 'Tinklo klaida';

  @override
  String get errorBadResponse => 'Netikėtas serverio atsakymas';

  @override
  String get termsAccept => 'Sutinku su sąlygomis';

  @override
  String get settingsApiUrl => 'Viešos svetainės URL';

  @override
  String get settingsAccount => 'sąskaita';

  @override
  String get settingsAppearance => 'Išvaizda';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Šviesa';

  @override
  String get themeDark => 'Tamsus';

  @override
  String get settingsSignedIn => 'Esate prisijungę.';

  @override
  String get settingsSignedOut => 'Jūs nesate prisijungę.';

  @override
  String get settingsOpenWebsite => 'Atidaryti svetainę';

  @override
  String get signUp => 'Užsiregistruoti';

  @override
  String get settingsLinks => 'Nuorodos';

  @override
  String get privacyPolicy => 'Privatumo politika';

  @override
  String get termsOfService => 'Paslaugos sąlygos';

  @override
  String get about => 'Apie';

  @override
  String get moreApps => 'Daugiau programų';

  @override
  String get settingsLanguage => 'Kalba';

  @override
  String get languageEnglish => 'anglų kalba';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Atsijungti';

  @override
  String get deleteAccount => 'Ištrinti paskyrą';

  @override
  String get deleteAccountConfirmTitle => 'Ištrinti paskyrą?';

  @override
  String get deleteAccountConfirmBody =>
      'Tai visam laikui ištrins jūsų paskyrą ir būsite atjungtas. Jūsų perdavimo nuorodos veiks ir toliau, bet jos nebebus rodomos istorijoje.';

  @override
  String get deleteAccountSuccess => 'Paskyra ištrinta';

  @override
  String get deleteAccountSuccessBody => 'Jūsų paskyra pašalinta.';

  @override
  String get deleteAccountFailed => 'Nepavyko ištrinti paskyros';

  @override
  String get deleteAccountFailedBody =>
      'Bandykite dar kartą arba susisiekite su palaikymo komanda.';

  @override
  String get maxFilesReached => 'Per daug failų';

  @override
  String get fileTooLarge => 'Failas per didelis';

  @override
  String get ipLimit => 'Per daug įkėlimų iš šio tinklo';

  @override
  String get fillFields => 'Užpildykite privalomus laukus';

  @override
  String get invalidEmail => 'Neteisingas el';

  @override
  String get maxRecipientsReached => 'Per daug gavėjų';

  @override
  String get loginRequiredTitle => 'Būtina prisijungti';

  @override
  String get loginRequiredBody =>
      'Šiam serveriui norint įkelti arba atsisiųsti reikia paskyros.';

  @override
  String get settingsSubtitle => 'Programos nuostatos ir paskyra.';

  @override
  String get dropHeavyFile => 'Numeskite sunkų failą čia.';

  @override
  String upToTotal(String max) {
    return 'Iš viso iki $max';
  }

  @override
  String get removeAll => 'Pašalinti visus';

  @override
  String get addFiles => 'Pridėti failus';

  @override
  String get adding => 'Pridedama…';

  @override
  String get options => 'Parinktys';

  @override
  String get selfDestruct => 'Savęs sunaikinimas po atsisiuntimo';

  @override
  String get expiry => 'Galiojimo laikas';

  @override
  String get cancelUpload => 'Atšaukti įkėlimą';

  @override
  String get transferReady => 'Perkėlimas paruoštas!';

  @override
  String get emailSentReady => 'El. laiškas išsiųstas!';

  @override
  String get shareRecipientHint => 'Pasidalykite šia nuoroda su savo gavėju.';

  @override
  String get emailSentBody => 'Mes pranešėme jūsų gavėjui (-ams).';

  @override
  String get scanQr => 'Nuskaitykite, kad atidarytumėte perdavimo nuorodą.';

  @override
  String get shareLinkButton => 'DALINTIS NUORODA';

  @override
  String get verifyFourDigit =>
      'Įveskite 4 skaitmenų kodą, atsiųstą jūsų siuntėjo el.';

  @override
  String get starting => 'Pradedama…';

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
    return 'Liko $amount MB';
  }

  @override
  String get fillField => 'Užpildykite šį lauką.';

  @override
  String get enterValidEmail => 'Įveskite galiojantį el. pašto adresą.';

  @override
  String get message => 'Pranešimas';

  @override
  String get recipientEmail => 'Gavėjo el';

  @override
  String get active => 'Aktyvus';

  @override
  String get expired => 'Baigėsi galiojimo laikas';

  @override
  String get historyTitle => 'Mano perkėlimai';

  @override
  String get signInToSeeTransfers =>
      'Prisijunkite, kad pamatytumėte savo pervedimus';

  @override
  String get signInTransfersBody =>
      'Siekdami susieti pervedimus su paskyra, naudojame jūsų el. paštą – nereikia slaptažodžio.';

  @override
  String get couldNotLoadTransfers => 'Nepavyko įkelti perdavimų';

  @override
  String get retry => 'Bandykite dar kartą';

  @override
  String get noTransfersYet => 'Dar nėra pervedimų';

  @override
  String get noTransfersBody => 'Kai išsiųsite failą, jis bus rodomas čia.';

  @override
  String get transferDetails => 'Perdavimo detalės';

  @override
  String get filesSection => 'Failai';

  @override
  String get receiveTitle => 'Gauti failus';

  @override
  String get receiveSubtitle =>
      'Įklijuokite perdavimo nuorodą, kad atsisiųstumėte failus.';

  @override
  String get pasteTooltip => 'Įklijuoti';

  @override
  String get findTransfer => 'Raskite perkėlimą';

  @override
  String get receiveScanQr => 'Nuskaityti QR';

  @override
  String get receiveScanQrTitle => 'Nuskaitykite perkėlimo QR kodą';

  @override
  String get receiveScanQrHint => 'Sulygiuokite QR kodą rėmelio viduje.';

  @override
  String get receiveScanQrInvalid =>
      'Šis QR kodas nėra tinkama perdavimo nuoroda.';

  @override
  String get receiveScanQrCameraDenied =>
      'Norint nuskaityti QR kodus, reikalinga prieiga prie fotoaparato.';

  @override
  String get receiveStepGetLink => 'Gaukite nuorodą';

  @override
  String get receiveStepGetLinkBody =>
      'Paprašykite siuntėjo bendrinti su jumis perdavimo nuorodą.';

  @override
  String get receiveStepPaste => 'Įklijuoti ir rasti';

  @override
  String get receiveStepPasteBody =>
      'Įklijuokite aukščiau esančią nuorodą ir bakstelėkite „Rasti perkėlimą“.';

  @override
  String get receiveStepDownload => 'Parsisiųsti failus';

  @override
  String get receiveStepDownloadBody =>
      'Peržiūrėkite išsamią failo informaciją ir atsisiųskite viską iš karto.';

  @override
  String get lookingUpTransfer => 'Ieškoma perkėlimo…';

  @override
  String get transferNotFound =>
      'Perkėlimas nerastas. Patikrinkite nuorodą ir bandykite dar kartą.';

  @override
  String get transferExpired =>
      'Šio pervedimo galiojimo laikas baigėsi ir jis nebepasiekiamas.';

  @override
  String get transferLoginRequired =>
      'Norint pasiekti šį perdavimą, reikia prisijungti.';

  @override
  String get transferBadResponse =>
      'Netikėtas serverio atsakymas. Patikrinkite ryšį.';

  @override
  String get transferNetworkError =>
      'Tinklo klaida. Patikrinkite savo interneto ryšį.';

  @override
  String transferLoadFailed(String error) {
    return 'Nepavyko įkelti perdavimo: $error';
  }

  @override
  String get passwordProtected => 'Apsaugotas slaptažodžiu';

  @override
  String get enterPassword => 'Įveskite slaptažodį';

  @override
  String get unlock => 'Atrakinti';

  @override
  String get downloading => 'Atsisiunčiama…';

  @override
  String get downloadAllFiles => 'Parsisiųsti visus failus';

  @override
  String get downloadSingleFile => 'Parsisiųsti failą';

  @override
  String get receiveAnother => 'Gaukite kitą pervedimą';

  @override
  String get plansTitle => 'Planai';

  @override
  String get plansSubtitle =>
      'Atnaujinkite, kad pašalintumėte skelbimus ir išsiųstumėte didesnius failus.';

  @override
  String get storeUnavailable => 'Parduotuvė nepasiekiama';

  @override
  String get storeUnavailableBody =>
      'Pirkiniai programoje šiuo metu nepasiekiami.';

  @override
  String get storeLoadingPrices => 'Įkeliamos kainos iš „App Store“…';

  @override
  String get storePricesUnavailable => 'Kainos nėra';

  @override
  String get storePricesPartial => 'Kai kurių kainų įkelti nepavyko';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Įkelta $loaded iš $total prenumeratos produktų.';
  }

  @override
  String get storeSetupHint =>
      'Išbandykite tikrąjį „iPhone“ (ne simuliatorių), naudokite „Sandbox Apple ID“ ir įsitikinkite, kad visos 6 prenumeratos yra sukurtos naudojant šios programos paketo ID „App Store Connect“ su kainodara.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mėn';
  }

  @override
  String get freeVersionAds =>
      'Šiuo metu naudojate mūsų nemokamą versiją su skelbimais';

  @override
  String get restorePurchases => 'Atkurti pirkinius';

  @override
  String get plansContinue => 'Tęsti';

  @override
  String get planLinkRestore => 'Atkurti';

  @override
  String get termsAndConditions => 'Taisyklės ir sąlygos';

  @override
  String get createAccountTitle => 'Sukurti paskyrą';

  @override
  String get signUpSubtitle =>
      'Prisiregistruokite naudodami el. paštą ir slaptažodį.';

  @override
  String get confirmPassword => 'Patvirtinkite slaptažodį';

  @override
  String get passwordMin8 => 'Slaptažodis (mažiausiai 8 simboliai)';

  @override
  String get alreadyHaveAccount => 'Jau turite paskyrą?';

  @override
  String get checkEmailTitle => 'Patikrinkite savo\npaštu';

  @override
  String otpSentTo(String email) {
    return 'Išsiuntėme 6 skaitmenų kodą\n$email';
  }

  @override
  String get verifyAndSignIn => 'Patvirtinkite ir prisijunkite';

  @override
  String get didntReceiveCode => 'Negavai?';

  @override
  String get tryAgain => 'Bandykite dar kartą';

  @override
  String get otpExpiresHint =>
      'Kodas baigiasi po 5 minučių. Patikrinkite šlamšto aplanką, jei jo nematote.';

  @override
  String get snackError => 'Klaida';

  @override
  String get snackCopied => 'Nukopijuota';

  @override
  String get snackCopiedBody => 'Nuoroda nukopijuota į mainų sritį';

  @override
  String get snackWelcome => 'Sveiki atvykę';

  @override
  String get snackAccountCreated => 'Paskyra sukurta';

  @override
  String get snackEnterEmail => 'Įveskite savo el. pašto adresą';

  @override
  String get snackEnterPassword => 'Įveskite slaptažodį';

  @override
  String get snackInvalidEmail => 'Neteisingas el. pašto adresas';

  @override
  String get snackInvalidCredentials =>
      'Neteisingas el. pašto adresas arba slaptažodis';

  @override
  String get snackPasswordMin8 => 'Slaptažodį turi sudaryti bent 8 simboliai';

  @override
  String get snackPasswordMismatch => 'Slaptažodžiai nesutampa.';

  @override
  String get snackAccountExists => 'Paskyra jau yra. Prašome prisijungti.';

  @override
  String get snackSignupFailed =>
      'Nepavyko sukurti paskyros. Bandykite dar kartą.';

  @override
  String get snackEnterOtp => 'Įveskite 6 skaitmenų kodą';

  @override
  String get snackOtpExpired => 'Kodas pasibaigęs';

  @override
  String get snackOtpExpiredBody => 'Prašykite naujo kodo.';

  @override
  String get snackInvalidCode => 'Neteisingas kodas';

  @override
  String get snackInvalidCodeBody => 'Kodas neteisingas. Bandykite dar kartą.';

  @override
  String get snackSendCodeFailed =>
      'Nepavyko išsiųsti kodo. Patikrinkite ryšį ir bandykite dar kartą.';

  @override
  String get snackEmptyFolder => 'Tuščias aplankas';

  @override
  String get snackEmptyFolderBody => 'Failų pasirinktame aplanke nerasta.';

  @override
  String get snackFolderUnsupported => 'Nepalaikoma';

  @override
  String get snackFolderUnsupportedBody =>
      'Aplanko įkėlimas šioje platformoje negalimas.';

  @override
  String get snackFolderReadError => 'Nepavyko perskaityti pasirinkto aplanko.';

  @override
  String get snackLimitReached => 'Pasiektas limitas';

  @override
  String get snackLimitFilesBody =>
      'Kai kurie failai nebuvo pridėti dėl dydžio arba failų skaičiaus apribojimų.';

  @override
  String get snackFreePlanLimit =>
      'Nemokamas planas leidžia pervesti iki 5 GB. Pašalinkite kai kuriuos failus arba atnaujinkite.';

  @override
  String get snackSignInEmail => 'Jei norite siųsti el. paštu, prisijunkite.';

  @override
  String get snackUploadStartFailed => 'Nepavyko pradėti įkelti.';

  @override
  String get snackVerifyEnterCode => 'Įveskite 4 skaitmenų kodą iš savo el.';

  @override
  String get snackVerifyInvalid =>
      'Neteisingas arba pasibaigęs kodas. Patikrinkite el. laišką ir bandykite dar kartą.';

  @override
  String get snackVerifyResendFailed =>
      'Nepavyko pakartotinai išsiųsti kodo. Bandykite dar kartą.';

  @override
  String get snackDownloadComplete => 'Atsisiuntimas baigtas';

  @override
  String snackDownloadSaved(String filename) {
    return '„$filename“ išsaugotas aplanke „Atsisiuntimai“.';
  }

  @override
  String get snackDownloadFailed => 'Atsisiųsti nepavyko';

  @override
  String get snackSaved => 'Išsaugota';

  @override
  String get snackServerUrlUpdated =>
      'Serverio URL atnaujintas. Norėdami taikyti, paleiskite programą iš naujo.';

  @override
  String get snackStoreError => 'Parduotuvės klaida';

  @override
  String get snackMissingProducts => 'Trūksta produktų';

  @override
  String get snackStoreUnavailable => 'Parduotuvė nepasiekiama';

  @override
  String get snackStoreUnavailableBody =>
      'Pirkimas programoje nepasiekiamas šiame įrenginyje.';

  @override
  String get snackProductNotLoaded => 'Prekė dar neįkelta.';

  @override
  String get snackRestoreStarted => 'Pradėtas atkūrimas';

  @override
  String get snackRestoreStartedBody => 'Mes tikriname jūsų pirkinius.';

  @override
  String get snackRestoreFailed => 'Atkurti nepavyko';

  @override
  String get snackProcessing => 'Apdorojimas';

  @override
  String get snackPleaseWait => 'Prašome palaukti…';

  @override
  String get snackSuccess => 'Sėkmės';

  @override
  String get snackPurchaseCompleted => 'Pirkimas baigtas.';

  @override
  String get snackPurchaseError => 'Pirkimo klaida';

  @override
  String get snackPurchaseFailed => 'Pirkimas nepavyko.';

  @override
  String get snackCanceled => 'Atšaukta';

  @override
  String get snackPurchaseCanceled => 'Pirkimas atšauktas.';

  @override
  String get snackUpload => 'Įkelti';

  @override
  String get snackVerify => 'Patvirtinti';

  @override
  String get doNotExpire => 'Negalioja';

  @override
  String get hourSingular => 'valandą';

  @override
  String get hourPlural => 'valandų';

  @override
  String get daySingular => 'dieną';

  @override
  String get dayPlural => 'dienų';

  @override
  String get emailAddressLabel => 'EL. PAŠTO ADRESAS';

  @override
  String get passwordLabelCaps => 'SLAPTAŽODŽIS';

  @override
  String get confirmPasswordLabelCaps => 'PATVIRTINTI SLAPTAŽODĮ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'PERDAVIMO NUORODOS ARBA ID';

  @override
  String get howToReceive => 'KAIP GAUTI';

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
  String get planAdsTitle => 'Skelbimų planas';

  @override
  String get planAdsBullet1 => 'Prieiga prie nemokamų skelbimų programos';

  @override
  String get planAdsBullet2 => 'Pašalinti visus skelbimus';

  @override
  String get planProTitle => 'Pro planas';

  @override
  String get planProBullet1 => 'Siųsti failus iki 20 GB';

  @override
  String get planProBullet2 => 'Greitas įkėlimas';

  @override
  String get planPremiumTitle => 'Premium planas';

  @override
  String get planPremiumBullet1 => 'Siųsti failus iki 100 GB';

  @override
  String get planPremiumBullet2 => 'Super greitas įkėlimas';

  @override
  String get planSubscriptionDisclaimer =>
      'Nėra bandomojo laikotarpio – norint naudotis papildomomis programos funkcijomis, reikalinga prenumerata. Iš karto būsite apmokestinti. Galite bet kada atšaukti.';

  @override
  String get perMonth => '/ mėn';

  @override
  String get perYear => '/ metai';

  @override
  String get snackConnectionProblem => 'Ryšio problema. Bandykite dar kartą.';

  @override
  String get networkTitle => 'Tinklas';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Failai: $count · $size baitai';
  }

  @override
  String todayAt(String time) {
    return 'Šiandien · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Vakar · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Prieš ${days}d · $time';
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
    return '$sent / $total • $remaining liko';
  }

  @override
  String get loadingShort => 'Įkeliama…';

  @override
  String get colorPaletteTitle => 'Spalvų paletė';

  @override
  String get colorPaletteSectionBackgrounds => 'Fonai (rašalo skalė)';

  @override
  String get colorPaletteSectionAccent => 'Akcentas / Pirminis';

  @override
  String get colorPaletteSectionText => 'Tekstas';

  @override
  String get colorPaletteSectionBorders => 'Kraštinės ir stiklas';

  @override
  String get colorPaletteSectionSemantic => 'Semantinė';

  @override
  String get colorPaletteSectionLive => 'Tiesioginė tema (dabartinė)';

  @override
  String get colorPaletteActiveHint => '★ = aktyviai naudojamas ekranuose';

  @override
  String get colorPaletteCopyHint =>
      'Ilgai paspauskite bet kurį pavyzdį, kad nukopijuotumėte jo šešioliktainę vertę.';

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
  String get settingsAppBrand => 'Dalintis Didelis\nVaizdo įrašų failai';

  @override
  String get loginEmailPasswordPrompt =>
      'Norėdami prisijungti, įveskite savo el. pašto adresą ir slaptažodį.';

  @override
  String get forgotPassword => 'Pamiršote slaptažodį?';

  @override
  String get forgotPasswordTitle => 'Iš naujo nustatyti slaptažodį';

  @override
  String get forgotPasswordBody =>
      'Įveskite savo paskyros el. pašto adresą ir mes atsiųsime atstatymo kodą.';

  @override
  String get forgotPasswordSubmit => 'Siųsti atstatymo kodą';

  @override
  String get resetPasswordTitle => 'Sukurti naują slaptažodį';

  @override
  String get resetPasswordBody =>
      'Įveskite 6 skaitmenų kodą iš el. pašto ir pasirinkite naują slaptažodį.';

  @override
  String get resetPasswordSubmit => 'Atnaujinkite slaptažodį';

  @override
  String get snackPasswordResetSent => 'Iš naujo nustatytas kodas išsiųstas';

  @override
  String get snackPasswordResetSentBody =>
      'Patikrinkite el. paštą, ar nėra 6 skaitmenų nustatymo iš naujo kodo.';

  @override
  String get snackPasswordResetFailed =>
      'Nepavyko išsiųsti atstatymo kodo. Bandykite dar kartą.';

  @override
  String get snackPasswordUpdated => 'Slaptažodis atnaujintas';

  @override
  String get snackPasswordUpdatedBody =>
      'Prisijunkite naudodami naują slaptažodį.';

  @override
  String get snackPasswordResetInvalid =>
      'Neteisingas arba pasibaigęs atstatymo kodas.';

  @override
  String get otpDigitLabel => '6 SKAIČIŲ KODAS';

  @override
  String receiveMoreFiles(int count) {
    return '+$count daugiau failų';
  }
}
