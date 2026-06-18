// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Kopīgojiet lielus video failus';

  @override
  String get heroAccent => 'uzreiz.';

  @override
  String get heroTitle => 'Sūtiet smagus failus';

  @override
  String get splashLoading => 'Notiek ielāde…';

  @override
  String get navSend => 'Informācijas panelis';

  @override
  String get navHome => 'Sākums';

  @override
  String get navHistory => 'Vēsture';

  @override
  String get navReceive => 'Saņemt';

  @override
  String get navPlans => 'Plāni';

  @override
  String get navDownload => 'Lejupielādēt';

  @override
  String get navSettings => 'Iestatījumi';

  @override
  String get modeLink => 'Iegūstiet saiti';

  @override
  String get modeEmail => 'Sūtīt pa e-pastu';

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
  String get pickFiles => 'Izvēlieties failus';

  @override
  String get pickFolder => 'Izvēlieties mapi';

  @override
  String get emailFrom => 'Jūsu e-pasts';

  @override
  String get mailFromUsesAccount => 'Izmanto jūsu pierakstīto e-pastu.';

  @override
  String get recipientEmailsHelper =>
      'Vairāki adresāti: atdaliet ar komatiem, semikolu vai atstarpēm.';

  @override
  String get emailTo => 'Adresāta e-pasts';

  @override
  String get messageOptional => 'Ziņojums (pēc izvēles)';

  @override
  String get passwordOptional => 'Parole (pēc izvēles)';

  @override
  String get destructAfterDownload => 'Dzēst pēc lejupielādes';

  @override
  String get destructNo => 'Saglabājiet pieejamu';

  @override
  String get sendButton => 'Sūtīt';

  @override
  String get uploading => 'Notiek augšupielāde…';

  @override
  String get uploadComplete => 'Gatavs';

  @override
  String get shareLinkTitle => 'Jūsu saite';

  @override
  String get copyLink => 'Kopēt saiti';

  @override
  String get share => 'Dalīties';

  @override
  String get shareQrCode => 'Kopīgojiet QR kodu';

  @override
  String get uploadMore => 'Nosūtiet citu';

  @override
  String get emailSentTitle => 'E-pasti nosūtīti';

  @override
  String get verifyEmailTitle => 'Apstipriniet savu e-pastu';

  @override
  String get verifyCodeHint => 'Ievadiet kodu no sava e-pasta';

  @override
  String get verifySubmit => 'Pārbaudīt';

  @override
  String get verifyResendCode => 'Atkārtoti nosūtīt kodu';

  @override
  String get verifyCodeSent =>
      'Uz jūsu e-pastu tika nosūtīts jauns verifikācijas kods.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Iespējams, ka verifikācijas e-pasts nav nosūtīts';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serveris nevarēja apstiprināt piegādi (bieži vien SMTP ir nepareizi konfigurēts). Lūdziet vietnes administratoram pārbaudīt pasta iestatījumus administratora panelī, pēc tam pieskarieties vienumam Atkārtoti nosūtīt kodu.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ja tas netiek saņemts: pārbaudiet Nevēlamie/Surogātpasts un Reklāmas, uzgaidiet minūti, pārbaudiet, vai $email nav drukas kļūdu, pēc tam pieskarieties vienumam Sūtīt vēlreiz.';
  }

  @override
  String get loginTitle => 'Pierakstīties';

  @override
  String get signupHint => 'Izmantojiet vietnes konta e-pastu un paroli.';

  @override
  String get emailHint => 'E-pasts';

  @override
  String get passwordHint => 'Parole';

  @override
  String get cancel => 'Atcelt';

  @override
  String get signIn => 'Pierakstīties';

  @override
  String get downloadIdHint => 'Pārsūtīšanas ID';

  @override
  String get privateIdHint => 'Privāts ID (pēc izvēles)';

  @override
  String get fetchTransfer => 'Atvērt pārsūtīšanu';

  @override
  String get downloadFile => 'Lejupielādēt';

  @override
  String get unlockDownload => 'Atbloķēt lejupielādi';

  @override
  String get downloadSaved => 'Saglabāts sadaļā Lejupielādes';

  @override
  String get errorGeneric => 'Kaut kas nogāja greizi';

  @override
  String get errorNetwork => 'Tīkla kļūda';

  @override
  String get errorBadResponse => 'Negaidīta servera atbilde';

  @override
  String get termsAccept => 'Es piekrītu noteikumiem';

  @override
  String get settingsApiUrl => 'Publiskas vietnes URL';

  @override
  String get settingsAccount => 'Konts';

  @override
  String get settingsAppearance => 'Izskats';

  @override
  String get settingsTheme => 'Tēma';

  @override
  String get themeSystem => 'Sistēma';

  @override
  String get themeLight => 'Gaisma';

  @override
  String get themeDark => 'Tumšs';

  @override
  String get settingsSignedIn => 'Jūs esat pierakstījies.';

  @override
  String get settingsSignedOut => 'Jūs neesat pierakstījies.';

  @override
  String get settingsOpenWebsite => 'Atvērt vietni';

  @override
  String get signUp => 'Pierakstīties';

  @override
  String get settingsLinks => 'Saites';

  @override
  String get privacyPolicy => 'Privātuma politika';

  @override
  String get termsOfService => 'Pakalpojuma noteikumi';

  @override
  String get about => 'Par';

  @override
  String get moreApps => 'Vairāk lietotņu';

  @override
  String get settingsLanguage => 'Valoda';

  @override
  String get languageEnglish => 'angļu valoda';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Atteikties';

  @override
  String get deleteAccount => 'Dzēst kontu';

  @override
  String get deleteAccountConfirmTitle => 'Vai dzēst savu kontu?';

  @override
  String get deleteAccountConfirmBody =>
      'Tādējādi jūsu konts tiks neatgriezeniski dzēsts un jūs tiksiet izrakstījies. Jūsu pārsūtīšanas saites turpinās darboties, taču tās vairs netiks rādītas jūsu vēsturē.';

  @override
  String get deleteAccountSuccess => 'Konts dzēsts';

  @override
  String get deleteAccountSuccessBody => 'Jūsu konts ir noņemts.';

  @override
  String get deleteAccountFailed => 'Nevarēja izdzēst kontu';

  @override
  String get deleteAccountFailedBody =>
      'Lūdzu, mēģiniet vēlreiz vai sazinieties ar atbalsta dienestu.';

  @override
  String get maxFilesReached => 'Pārāk daudz failu';

  @override
  String get fileTooLarge => 'Fails ir pārāk liels';

  @override
  String get ipLimit => 'Pārāk daudz augšupielādes no šī tīkla';

  @override
  String get fillFields => 'Lūdzu, aizpildiet obligātos laukus';

  @override
  String get invalidEmail => 'Nederīgs e-pasts';

  @override
  String get maxRecipientsReached => 'Pārāk daudz adresātu';

  @override
  String get loginRequiredTitle => 'Nepieciešama pierakstīšanās';

  @override
  String get loginRequiredBody =>
      'Šim serverim ir nepieciešams konts, lai augšupielādētu vai lejupielādētu.';

  @override
  String get settingsSubtitle => 'Lietotņu preferences un konts.';

  @override
  String get dropHeavyFile => 'Šeit nometiet smagu failu.';

  @override
  String upToTotal(String max) {
    return 'Kopā līdz $max';
  }

  @override
  String get removeAll => 'Noņemt visu';

  @override
  String get addFiles => 'Pievienojiet failus';

  @override
  String get adding => 'Notiek pievienošana…';

  @override
  String get options => 'Iespējas';

  @override
  String get selfDestruct => 'Pašiznīcināšana pēc lejupielādes';

  @override
  String get expiry => 'Derīguma termiņš';

  @override
  String get cancelUpload => 'Atcelt augšupielādi';

  @override
  String get transferReady => 'Pārskaitījums gatavs!';

  @override
  String get emailSentReady => 'E-pasts nosūtīts!';

  @override
  String get shareRecipientHint => 'Kopīgojiet šo saiti ar savu adresātu.';

  @override
  String get emailSentBody => 'Mēs esam informējuši jūsu saņēmēju(-us).';

  @override
  String get scanQr => 'Skenējiet, lai atvērtu pārsūtīšanas saiti.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'Ievadiet 4 ciparu kodu, kas nosūtīts uz jūsu sūtītāja e-pastu.';

  @override
  String get starting => 'Sāk...';

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
    return 'Atlicis $amount MB';
  }

  @override
  String get fillField => 'Lūdzu, aizpildiet šo lauku.';

  @override
  String get enterValidEmail => 'Ievadiet derīgu e-pasta adresi.';

  @override
  String get message => 'Ziņa';

  @override
  String get recipientEmail => 'Adresāta e-pasts';

  @override
  String get active => 'Aktīvs';

  @override
  String get expired => 'Beidzies derīguma termiņš';

  @override
  String get historyTitle => 'Mani pārskaitījumi';

  @override
  String get signInToSeeTransfers =>
      'Pierakstieties, lai skatītu savus pārskaitījumus';

  @override
  String get signInTransfersBody =>
      'Mēs izmantojam jūsu e-pastu, lai saistītu pārskaitījumus ar jūsu kontu — parole nav nepieciešama.';

  @override
  String get couldNotLoadTransfers => 'Nevarēja ielādēt pārsūtīšanu';

  @override
  String get retry => 'Mēģiniet vēlreiz';

  @override
  String get noTransfersYet => 'Vēl nav pārskaitījumu';

  @override
  String get noTransfersBody =>
      'Kad esat nosūtījis failu, tas tiks parādīts šeit.';

  @override
  String get transferDetails => 'Pārsūtīšanas informācija';

  @override
  String get filesSection => 'Faili';

  @override
  String get receiveTitle => 'Saņemt failus';

  @override
  String get receiveSubtitle =>
      'Ielīmējiet pārsūtīšanas saiti, lai lejupielādētu failus.';

  @override
  String get pasteTooltip => 'Ielīmēt';

  @override
  String get findTransfer => 'Atrodiet pārsūtīšanu';

  @override
  String get receiveScanQr => 'Skenēt QR';

  @override
  String get receiveScanQrTitle => 'Skenēt pārsūtīšanas QR';

  @override
  String get receiveScanQrHint => 'Izlīdziniet QR kodu rāmī.';

  @override
  String get receiveScanQrInvalid =>
      'Šis QR kods nav derīga pārsūtīšanas saite.';

  @override
  String get receiveScanQrCameraDenied =>
      'Lai skenētu QR kodus, ir nepieciešama piekļuve kamerai.';

  @override
  String get receiveStepGetLink => 'Iegūstiet saiti';

  @override
  String get receiveStepGetLinkBody =>
      'Lūdziet sūtītājam kopīgot pārsūtīšanas saiti ar jums.';

  @override
  String get receiveStepPaste => 'Ielīmēt un atrast';

  @override
  String get receiveStepPasteBody =>
      'Ielīmējiet augstāk esošo saiti un pieskarieties \"Atrast pārsūtīšanu\".';

  @override
  String get receiveStepDownload => 'Lejupielādēt failus';

  @override
  String get receiveStepDownloadBody =>
      'Skatiet faila informāciju un lejupielādējiet visu uzreiz.';

  @override
  String get lookingUpTransfer => 'Notiek pārsūtīšanas meklēšana…';

  @override
  String get transferNotFound =>
      'Pārsūtīšana nav atrasta. Pārbaudiet saiti un mēģiniet vēlreiz.';

  @override
  String get transferExpired =>
      'Šim pārskaitījumam ir beidzies derīguma termiņš, un tas vairs nav pieejams.';

  @override
  String get transferLoginRequired =>
      'Lai piekļūtu šim pārsūtīšanai, ir jāpierakstās.';

  @override
  String get transferBadResponse =>
      'Negaidīta servera atbilde. Pārbaudiet savienojumu.';

  @override
  String get transferNetworkError =>
      'Tīkla kļūda. Pārbaudiet interneta savienojumu.';

  @override
  String transferLoadFailed(String error) {
    return 'Nevarēja ielādēt pārsūtīšanu: $error';
  }

  @override
  String get passwordProtected => 'Aizsargāts ar paroli';

  @override
  String get enterPassword => 'Ievadiet paroli';

  @override
  String get unlock => 'Atbloķēt';

  @override
  String get downloading => 'Notiek lejupielāde…';

  @override
  String get downloadAllFiles => 'Lejupielādēt visus failus';

  @override
  String get downloadSingleFile => 'Lejupielādēt failu';

  @override
  String get receiveAnother => 'Saņemiet citu pārskaitījumu';

  @override
  String get plansTitle => 'Plāni';

  @override
  String get plansSubtitle =>
      'Jauniniet, lai noņemtu reklāmas un nosūtītu lielākus failus.';

  @override
  String get storeUnavailable => 'Veikals nav pieejams';

  @override
  String get storeUnavailableBody => 'Pirkumi lietotnē pašlaik nav pieejami.';

  @override
  String get storeLoadingPrices => 'Notiek cenu ielāde no App Store…';

  @override
  String get storePricesUnavailable => 'Cenas nav pieejamas';

  @override
  String get storePricesPartial => 'Dažas cenas nevarēja ielādēt';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Ielādēti $loaded no $total abonēšanas produktiem.';
  }

  @override
  String get storeSetupHint =>
      'Testējiet īstā iPhone tālrunī (nevis simulatorā), izmantojiet Sandbox Apple ID un pārliecinieties, ka visi 6 abonementi ir izveidoti ar šīs lietotnes komplekta ID pakalpojumā App Store Connect ar cenu noteikšanu.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mēnesī';
  }

  @override
  String get freeVersionAds =>
      'Pašlaik jūs izmantojat mūsu bezmaksas versiju ar reklāmām';

  @override
  String get restorePurchases => 'Atjaunot pirkumus';

  @override
  String get plansContinue => 'Turpināt';

  @override
  String get planLinkRestore => 'Atjaunot';

  @override
  String get termsAndConditions => 'Noteikumi un nosacījumi';

  @override
  String get createAccountTitle => 'Izveidot kontu';

  @override
  String get signUpSubtitle => 'Reģistrējieties ar e-pastu un paroli.';

  @override
  String get confirmPassword => 'Apstipriniet paroli';

  @override
  String get passwordMin8 => 'Parole (vismaz 8 rakstzīmes)';

  @override
  String get alreadyHaveAccount => 'Vai jums jau ir konts?';

  @override
  String get checkEmailTitle => 'Pārbaudiet savu\ne-pasts';

  @override
  String otpSentTo(String email) {
    return 'Mēs nosūtījām 6 ciparu kodu uz\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verificējiet un pierakstieties';

  @override
  String get didntReceiveCode => 'Vai nesaņēmāt?';

  @override
  String get tryAgain => 'Mēģiniet vēlreiz';

  @override
  String get otpExpiresHint =>
      'Kods beidzas pēc 5 minūtēm. Pārbaudiet surogātpasta mapi, ja to neredzat.';

  @override
  String get snackError => 'Kļūda';

  @override
  String get snackCopied => 'Kopēts';

  @override
  String get snackCopiedBody => 'Saite ir kopēta starpliktuvē';

  @override
  String get snackWelcome => 'Laipni lūdzam';

  @override
  String get snackAccountCreated => 'Konts izveidots';

  @override
  String get snackEnterEmail => 'Lūdzu, ievadiet savu e-pastu';

  @override
  String get snackEnterPassword => 'Lūdzu, ievadiet savu paroli';

  @override
  String get snackInvalidEmail => 'Nederīga e-pasta adrese';

  @override
  String get snackInvalidCredentials => 'Nepareizs e-pasts vai parole';

  @override
  String get snackPasswordMin8 => 'Parolei ir jābūt vismaz 8 rakstzīmēm';

  @override
  String get snackPasswordMismatch => 'Paroles nesakrīt.';

  @override
  String get snackAccountExists => 'Konts jau pastāv. Lūdzu, pierakstieties.';

  @override
  String get snackSignupFailed => 'Nevarēja izveidot kontu. Mēģiniet vēlreiz.';

  @override
  String get snackEnterOtp => 'Lūdzu, ievadiet 6 ciparu kodu';

  @override
  String get snackOtpExpired => 'Koda derīguma termiņš beidzies';

  @override
  String get snackOtpExpiredBody => 'Lūdzu, pieprasiet jaunu kodu.';

  @override
  String get snackInvalidCode => 'Nederīgs kods';

  @override
  String get snackInvalidCodeBody =>
      'Kods nav pareizs. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get snackSendCodeFailed =>
      'Nevarēja nosūtīt kodu. Pārbaudiet savienojumu un mēģiniet vēlreiz.';

  @override
  String get snackEmptyFolder => 'Tukša mape';

  @override
  String get snackEmptyFolderBody =>
      'Atlasītajā mapē nav atrasts neviens fails.';

  @override
  String get snackFolderUnsupported => 'Nav atbalstīts';

  @override
  String get snackFolderUnsupportedBody =>
      'Mapju augšupielāde šajā platformā nav pieejama.';

  @override
  String get snackFolderReadError => 'Nevarēja nolasīt atlasīto mapi.';

  @override
  String get snackLimitReached => 'Sasniegts limits';

  @override
  String get snackLimitFilesBody =>
      'Daži faili netika pievienoti lieluma vai failu skaita ierobežojumu dēļ.';

  @override
  String get snackFreePlanLimit =>
      'Bezmaksas plāns nodrošina līdz 5 GB vienam pārsūtīšanai. Lūdzu, noņemiet dažus failus vai jauniniet.';

  @override
  String get snackSignInEmail =>
      'Lūdzu, pierakstieties, lai nosūtītu pa e-pastu.';

  @override
  String get snackUploadStartFailed => 'Nevarēja sākt augšupielādi.';

  @override
  String get snackVerifyEnterCode => 'Ievadiet 4 ciparu kodu no sava e-pasta.';

  @override
  String get snackVerifyInvalid =>
      'Nederīgs kods vai beidzies derīguma termiņš. Pārbaudiet e-pastu un mēģiniet vēlreiz.';

  @override
  String get snackVerifyResendFailed =>
      'Nevarēja atkārtoti nosūtīt kodu. Mēģiniet vēlreiz.';

  @override
  String get snackDownloadComplete => 'Lejupielāde ir pabeigta';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" saglabāts mapē Lejupielādes';
  }

  @override
  String get snackDownloadFailed => 'Lejupielāde neizdevās';

  @override
  String get snackSaved => 'Saglabāts';

  @override
  String get snackServerUrlUpdated =>
      'Servera URL atjaunināts. Lai pieteiktos, restartējiet lietotni.';

  @override
  String get snackStoreError => 'Veikala kļūda';

  @override
  String get snackMissingProducts => 'Trūkst produktu';

  @override
  String get snackStoreUnavailable => 'Veikals nav pieejams';

  @override
  String get snackStoreUnavailableBody =>
      'Pirkumi lietotnē šajā ierīcē nav pieejami.';

  @override
  String get snackProductNotLoaded => 'Produkts vēl nav ielādēts.';

  @override
  String get snackRestoreStarted => 'Sākta atjaunošana';

  @override
  String get snackRestoreStartedBody => 'Mēs pārbaudām jūsu pirkumus.';

  @override
  String get snackRestoreFailed => 'Atjaunot neizdevās';

  @override
  String get snackProcessing => 'Apstrāde';

  @override
  String get snackPleaseWait => 'Lūdzu, uzgaidiet…';

  @override
  String get snackSuccess => 'Panākumi';

  @override
  String get snackPurchaseCompleted => 'Pirkums pabeigts.';

  @override
  String get snackPurchaseError => 'Pirkuma kļūda';

  @override
  String get snackPurchaseFailed => 'Pirkums neizdevās.';

  @override
  String get snackCanceled => 'Atcelts';

  @override
  String get snackPurchaseCanceled => 'Pirkums atcelts.';

  @override
  String get snackUpload => 'Augšupielādēt';

  @override
  String get snackVerify => 'Pārbaudīt';

  @override
  String get doNotExpire => 'Nebeidzas';

  @override
  String get hourSingular => 'stundu';

  @override
  String get hourPlural => 'stundas';

  @override
  String get daySingular => 'diena';

  @override
  String get dayPlural => 'dienas';

  @override
  String get emailAddressLabel => 'E-PASTA ADRESE';

  @override
  String get passwordLabelCaps => 'PAROLE';

  @override
  String get confirmPasswordLabelCaps => 'APSTIPRINĀT PAROLI';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'PĀRSŪTĪŠANAS SAITE VAI ID';

  @override
  String get howToReceive => 'KĀ SAŅEMT';

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
  String get planAdsTitle => 'Reklāmu plāns';

  @override
  String get planAdsBullet1 => 'Piekļuve bezmaksas lietotnei';

  @override
  String get planAdsBullet2 => 'Noņemiet visas reklāmas';

  @override
  String get planProTitle => 'Pro plāns';

  @override
  String get planProBullet1 => 'Sūtiet failus līdz 20 GB';

  @override
  String get planProBullet2 => 'Ātrā augšupielāde';

  @override
  String get planPremiumTitle => 'Premium plāns';

  @override
  String get planPremiumBullet1 => 'Sūtiet failus līdz 100 GB';

  @override
  String get planPremiumBullet2 => 'Super ātra augšupielāde';

  @override
  String get planSubscriptionDisclaimer =>
      'Nav izmēģinājuma perioda — lai izmantotu lietotnes papildu funkcionalitāti, ir nepieciešams abonements. No jums nekavējoties tiks iekasēta maksa. Jūs varat atcelt jebkurā laikā.';

  @override
  String get perMonth => '/ mēnesī';

  @override
  String get perYear => '/ gadā';

  @override
  String get snackConnectionProblem =>
      'Savienojuma problēma. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get networkTitle => 'Tīkls';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Faili: $count · $size baiti';
  }

  @override
  String todayAt(String time) {
    return 'Šodien · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Vakar · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Pirms ${days}d · $time';
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
    return '$sent / $total • $remaining pa kreisi';
  }

  @override
  String get loadingShort => 'Notiek ielāde…';

  @override
  String get colorPaletteTitle => 'Krāsu palete';

  @override
  String get colorPaletteSectionBackgrounds => 'Foni (tintes skala)';

  @override
  String get colorPaletteSectionAccent => 'Uzsvars / primārais';

  @override
  String get colorPaletteSectionText => 'Teksts';

  @override
  String get colorPaletteSectionBorders => 'Apmales un stikls';

  @override
  String get colorPaletteSectionSemantic => 'Semantiskais';

  @override
  String get colorPaletteSectionLive => 'Tiešraides motīvs (pašreizējais)';

  @override
  String get colorPaletteActiveHint => '★ = aktīvi izmanto ekrānos';

  @override
  String get colorPaletteCopyHint =>
      'Turiet nospiestu jebkuru paraugu, lai kopētu tā hex vērtību.';

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
  String get settingsAppBrand => 'Share Liels\nVideo faili';

  @override
  String get loginEmailPasswordPrompt =>
      'Ievadiet savu e-pastu un paroli, lai pierakstītos.';

  @override
  String get forgotPassword => 'Aizmirsāt paroli?';

  @override
  String get forgotPasswordTitle => 'Atiestatīt paroli';

  @override
  String get forgotPasswordBody =>
      'Ievadiet sava konta e-pastu, un mēs nosūtīsim atiestatīšanas kodu.';

  @override
  String get forgotPasswordSubmit => 'Nosūtiet atiestatīšanas kodu';

  @override
  String get resetPasswordTitle => 'Izveidojiet jaunu paroli';

  @override
  String get resetPasswordBody =>
      'Ievadiet 6 ciparu kodu no sava e-pasta un izvēlieties jaunu paroli.';

  @override
  String get resetPasswordSubmit => 'Atjaunināt paroli';

  @override
  String get snackPasswordResetSent => 'Atiestatīšanas kods ir nosūtīts';

  @override
  String get snackPasswordResetSentBody =>
      'Pārbaudiet e-pastā 6 ciparu atiestatīšanas kodu.';

  @override
  String get snackPasswordResetFailed =>
      'Nevarēja nosūtīt atiestatīšanas kodu. Mēģiniet vēlreiz.';

  @override
  String get snackPasswordUpdated => 'Parole atjaunināta';

  @override
  String get snackPasswordUpdatedBody => 'Pierakstieties ar savu jauno paroli.';

  @override
  String get snackPasswordResetInvalid =>
      'Nederīgs vai beidzies atiestatīšanas kods.';

  @override
  String get otpDigitLabel => '6 CIPARU KODS';

  @override
  String receiveMoreFiles(int count) {
    return '+$count citi faili';
  }
}
