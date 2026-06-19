// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Nagy videofájlok megosztása';

  @override
  String get heroAccent => 'azonnal.';

  @override
  String get heroTitle => 'Nehéz fájlok küldése';

  @override
  String get splashLoading => 'Terhelés…';

  @override
  String get navSend => 'Műszerfal';

  @override
  String get navHome => 'Otthon';

  @override
  String get navHistory => 'Történelem';

  @override
  String get navReceive => 'Kap';

  @override
  String get navPlans => 'Tervek';

  @override
  String get navDownload => 'Letöltés';

  @override
  String get navSettings => 'Beállítások elemre';

  @override
  String get modeLink => 'Kap egy linket';

  @override
  String get modeEmail => 'Küldje el e-mailben';

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
  String get pickFiles => 'Válasszon fájlokat';

  @override
  String get pickFolder => 'Válasszon mappát';

  @override
  String get emailFrom => 'Az Ön email címe';

  @override
  String get mailFromUsesAccount => 'A bejelentkezett e-mail-címét használja.';

  @override
  String get recipientEmailsHelper =>
      'Több címzett: vesszővel, pontosvesszővel vagy szóközzel válassza el.';

  @override
  String get emailTo => 'Címzett e-mail';

  @override
  String get messageOptional => 'Üzenet (opcionális)';

  @override
  String get passwordOptional => 'Jelszó (nem kötelező)';

  @override
  String get destructAfterDownload => 'Letöltés után töröld';

  @override
  String get destructNo => 'Tartsa elérhető';

  @override
  String get sendButton => 'Elküld';

  @override
  String get uploading => 'Feltöltés…';

  @override
  String get uploadComplete => 'Kész';

  @override
  String get shareLinkTitle => 'Az Ön linkje';

  @override
  String get copyLink => 'Link másolása';

  @override
  String get share => 'Részesedés';

  @override
  String get shareQrCode => 'QR-kód megosztása';

  @override
  String get uploadMore => 'Küldj másikat';

  @override
  String get emailSentTitle => 'E-mailek elküldve';

  @override
  String get verifyEmailTitle => 'Igazolja e-mail-címét';

  @override
  String get verifyCodeHint => 'Írja be az e-mailben kapott kódot';

  @override
  String get verifySubmit => 'Ellenőrizze';

  @override
  String get verifyResendCode => 'Kód újraküldése';

  @override
  String get verifyCodeSent => 'Új ellenőrző kódot küldtünk az e-mail címére.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Lehetséges, hogy az ellenőrző e-mailt nem küldték el';

  @override
  String get verifyEmailSmtpWarningBody =>
      'A szerver nem tudta megerősíteni a kézbesítést (az SMTP gyakran rosszul van konfigurálva). Kérje meg a webhely rendszergazdáját, hogy ellenőrizze a Levelezés beállításait az adminisztrációs panelen, majd koppintson a Kód újraküldése elemre.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Ha nem érkezik meg: jelölje be a Levélszemét/Spam és Promóciók elemet, várjon egy percet, ellenőrizze, hogy a $email nem tartalmaz-e elírást, majd érintse meg az Újraküldés gombot.';
  }

  @override
  String get loginTitle => 'Jelentkezzen be';

  @override
  String get signupHint => 'Használja webhelyfiókja e-mail-címét és jelszavát.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Jelszó';

  @override
  String get cancel => 'Mégse';

  @override
  String get signIn => 'Jelentkezzen be';

  @override
  String get downloadIdHint => 'Átigazolási azonosító';

  @override
  String get privateIdHint => 'Személyes azonosító (nem kötelező)';

  @override
  String get fetchTransfer => 'Nyissa meg az átvitelt';

  @override
  String get downloadFile => 'Letöltés';

  @override
  String get unlockDownload => 'Letöltés feloldása';

  @override
  String get downloadSaved => 'Mentve a Letöltések közé';

  @override
  String get errorGeneric => 'Valami elromlott';

  @override
  String get errorNetwork => 'Hálózati hiba';

  @override
  String get errorBadResponse => 'Váratlan szerver válasz';

  @override
  String get termsAccept => 'Elfogadom a feltételeket';

  @override
  String get settingsApiUrl => 'Nyilvános webhely URL-je';

  @override
  String get settingsAccount => 'fiók';

  @override
  String get settingsAppearance => 'Megjelenés';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get themeSystem => 'Rendszer';

  @override
  String get themeLight => 'Fény';

  @override
  String get themeDark => 'Sötét';

  @override
  String get settingsSignedIn => 'Be vagy jelentkezve.';

  @override
  String get settingsSignedOut => 'Nem vagy bejelentkezve.';

  @override
  String get settingsOpenWebsite => 'Webhely megnyitása';

  @override
  String get signUp => 'Regisztráljon';

  @override
  String get settingsLinks => 'Linkek';

  @override
  String get privacyPolicy => 'Adatvédelmi szabályzat';

  @override
  String get termsOfService => 'Szolgáltatási feltételek';

  @override
  String get about => 'Körülbelül';

  @override
  String get moreApps => 'További alkalmazások';

  @override
  String get settingsLanguage => 'Nyelv';

  @override
  String get languageEnglish => 'angol';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Jelentkezzen ki';

  @override
  String get deleteAccount => 'Fiók törlése';

  @override
  String get deleteAccountConfirmTitle => 'Törli a fiókját?';

  @override
  String get deleteAccountConfirmBody =>
      'Ezzel véglegesen törli fiókját, és kijelentkezteti Önt. Az átviteli linkek továbbra is működni fognak, de többé nem jelennek meg az előzmények között.';

  @override
  String get deleteAccountSuccess => 'Fiók törölve';

  @override
  String get deleteAccountSuccessBody => 'Fiókját eltávolítottuk.';

  @override
  String get deleteAccountFailed => 'Nem sikerült törölni a fiókot';

  @override
  String get deleteAccountFailedBody =>
      'Kérjük, próbálja újra, vagy forduljon az ügyfélszolgálathoz.';

  @override
  String get maxFilesReached => 'Túl sok fájl';

  @override
  String get fileTooLarge => 'A fájl túl nagy';

  @override
  String get ipLimit => 'Túl sok feltöltés erről a hálózatról';

  @override
  String get fillFields => 'Kérjük, töltse ki a kötelező mezőket';

  @override
  String get invalidEmail => 'Érvénytelen e-mail-cím';

  @override
  String get maxRecipientsReached => 'Túl sok címzett';

  @override
  String get loginRequiredTitle => 'Bejelentkezés szükséges';

  @override
  String get loginRequiredBody =>
      'Ennek a szervernek a feltöltéséhez vagy letöltéséhez fiók szükséges.';

  @override
  String get settingsSubtitle => 'Alkalmazásbeállítások és fiók.';

  @override
  String get dropHeavyFile => 'Dobj ide egy nehéz fájlt.';

  @override
  String upToTotal(String max) {
    return 'Összesen legfeljebb $max';
  }

  @override
  String get removeAll => 'Az összes eltávolítása';

  @override
  String get addFiles => 'Fájlok hozzáadása';

  @override
  String get adding => 'Hozzáadás…';

  @override
  String get options => 'Opciók';

  @override
  String get selfDestruct => 'Önmegsemmisítés letöltés után';

  @override
  String get expiry => 'Lejárat';

  @override
  String get cancelUpload => 'Feltöltés megszakítása';

  @override
  String get transferReady => 'Kész az átutalás!';

  @override
  String get emailSentReady => 'E-mail elküldve!';

  @override
  String get shareRecipientHint => 'Oszd meg ezt a linket a címzettel.';

  @override
  String get emailSentBody => 'Értesítettük a címzett(eke)t.';

  @override
  String get scanQr => 'Szkennelje be az átviteli hivatkozás megnyitásához.';

  @override
  String get shareLinkButton => 'LINK MEGOSZTÁSA';

  @override
  String get verifyFourDigit =>
      'Írja be a feladó e-mail címére küldött 4 számjegyű kódot.';

  @override
  String get starting => 'Indítás…';

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
    return '$amount MB maradt';
  }

  @override
  String get fillField => 'Kérjük, töltse ki ezt a mezőt.';

  @override
  String get enterValidEmail => 'Adjon meg egy érvényes e-mail-címet.';

  @override
  String get message => 'Üzenet';

  @override
  String get recipientEmail => 'Címzett e-mail';

  @override
  String get active => 'Aktív';

  @override
  String get expired => 'Lejárt';

  @override
  String get historyTitle => 'Saját átvitelek';

  @override
  String get signInToSeeTransfers =>
      'Jelentkezzen be az átutalás megtekintéséhez';

  @override
  String get signInTransfersBody =>
      'Az Ön e-mail-címét használjuk arra, hogy összekapcsoljuk az átviteleket a fiókjával – nincs szükség jelszóra.';

  @override
  String get couldNotLoadTransfers => 'Nem sikerült betölteni az átviteleket';

  @override
  String get retry => 'Próbálja újra';

  @override
  String get noTransfersYet => 'Még nincs transzfer';

  @override
  String get noTransfersBody => 'Ha elküld egy fájlt, az itt fog megjelenni.';

  @override
  String get transferDetails => 'Az átvitel részletei';

  @override
  String get filesSection => 'Fájlok';

  @override
  String get receiveTitle => 'Fájlok fogadása';

  @override
  String get receiveSubtitle =>
      'Illesszen be egy átviteli hivatkozást a fájlok letöltéséhez.';

  @override
  String get pasteTooltip => 'Paszta';

  @override
  String get findTransfer => 'Keresse meg a Transzfert';

  @override
  String get receiveScanQr => 'QR-kód beolvasása';

  @override
  String get receiveScanQrTitle => 'Átviteli QR beolvasása';

  @override
  String get receiveScanQrHint => 'Igazítsa a QR-kódot a keretbe.';

  @override
  String get receiveScanQrInvalid => 'Ez a QR-kód nem érvényes átviteli link.';

  @override
  String get receiveScanQrCameraDenied =>
      'A QR-kódok beolvasásához kamera-hozzáférés szükséges.';

  @override
  String get receiveStepGetLink => 'Szerezd meg a linket';

  @override
  String get receiveStepGetLinkBody =>
      'Kérje meg a feladót, hogy ossza meg Önnel az átviteli linket.';

  @override
  String get receiveStepPaste => 'Beillesztés és keresés';

  @override
  String get receiveStepPasteBody =>
      'Illessze be a fenti linket, és koppintson az „Átvitel keresése” elemre.';

  @override
  String get receiveStepDownload => 'Fájlok letöltése';

  @override
  String get receiveStepDownloadBody =>
      'Tekintse meg a fájl részleteit, és töltsön le mindent egyszerre.';

  @override
  String get lookingUpTransfer => 'Átvitel keresése…';

  @override
  String get transferNotFound =>
      'Az átvitel nem található. Ellenőrizze a linket, és próbálja újra.';

  @override
  String get transferExpired => 'Ez az átvitel lejárt, és már nem érhető el.';

  @override
  String get transferLoginRequired =>
      'Az átvitel eléréséhez be kell jelentkezni.';

  @override
  String get transferBadResponse =>
      'Váratlan szerver válasz. Ellenőrizze a kapcsolatot.';

  @override
  String get transferNetworkError =>
      'Hálózati hiba. Ellenőrizze az internetkapcsolatot.';

  @override
  String transferLoadFailed(String error) {
    return 'Nem sikerült betölteni az átvitelt: $error';
  }

  @override
  String get passwordProtected => 'Jelszóval védett';

  @override
  String get enterPassword => 'Írja be a jelszót';

  @override
  String get unlock => 'Kinyit';

  @override
  String get downloading => 'Letöltés…';

  @override
  String get downloadAllFiles => 'Töltse le az összes fájlt';

  @override
  String get downloadSingleFile => 'Fájl letöltése';

  @override
  String get receiveAnother => 'Új átutalás fogadása';

  @override
  String get plansTitle => 'Tervek';

  @override
  String get plansSubtitle =>
      'Frissítsen hirdetések eltávolításához és nagyobb fájlok küldéséhez.';

  @override
  String get storeUnavailable => 'Az üzlet nem elérhető';

  @override
  String get storeUnavailableBody =>
      'Az alkalmazáson belüli vásárlások jelenleg nem érhetők el.';

  @override
  String get storeLoadingPrices => 'Árak betöltése az App Store-ból…';

  @override
  String get storePricesUnavailable => 'Az árak nem elérhetők';

  @override
  String get storePricesPartial => 'Egyes árakat nem sikerült betölteni';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded / $total előfizetéses termék betöltve.';
  }

  @override
  String get storeSetupHint =>
      'Teszteljen valódi iPhone-on (nem szimulátoron), használjon Sandbox Apple ID-t, és győződjön meg arról, hogy mind a 6 előfizetés ennek az alkalmazásnak az App Store Connect csomagazonosítója alatt jön létre az árképzési beállításokkal együtt.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/hónap';
  }

  @override
  String get freeVersionAds =>
      'Jelenleg ingyenes verziónkat használja hirdetésekkel';

  @override
  String get restorePurchases => 'Vásárlások visszaállítása';

  @override
  String get plansContinue => 'Folytatás';

  @override
  String get planLinkRestore => 'Visszaállítás';

  @override
  String get termsAndConditions => 'Feltételek';

  @override
  String get createAccountTitle => 'Hozzon létre fiókot';

  @override
  String get signUpSubtitle => 'Regisztráljon e-mail címmel és jelszóval.';

  @override
  String get confirmPassword => 'Erősítse meg a jelszót';

  @override
  String get passwordMin8 => 'Jelszó (minimum 8 karakter)';

  @override
  String get alreadyHaveAccount => 'Már van fiókja?';

  @override
  String get checkEmailTitle => 'Ellenőrizze a\ne-mailben';

  @override
  String otpSentTo(String email) {
    return '6 számjegyű kódot küldtünk a címre\n$email';
  }

  @override
  String get verifyAndSignIn => 'Ellenőrzés és bejelentkezés';

  @override
  String get didntReceiveCode => 'nem kapta meg?';

  @override
  String get tryAgain => 'Próbáld újra';

  @override
  String get otpExpiresHint =>
      'A kód 5 percen belül lejár. Ellenőrizze a spam mappát, ha nem látja.';

  @override
  String get snackError => 'Hiba';

  @override
  String get snackCopied => 'Másolva';

  @override
  String get snackCopiedBody => 'Link a vágólapra másolva';

  @override
  String get snackWelcome => 'Üdvözöljük';

  @override
  String get snackAccountCreated => 'Fiók létrehozva';

  @override
  String get snackEnterEmail => 'Kérjük, adja meg e-mail címét';

  @override
  String get snackEnterPassword => 'Kérjük, adja meg jelszavát';

  @override
  String get snackInvalidEmail => 'Érvénytelen e-mail cím';

  @override
  String get snackInvalidCredentials => 'Hibás e-mail cím vagy jelszó';

  @override
  String get snackPasswordMin8 =>
      'A jelszónak legalább 8 karakterből kell állnia';

  @override
  String get snackPasswordMismatch => 'A jelszavak nem egyeznek.';

  @override
  String get snackAccountExists =>
      'A fiók már létezik. Kérjük, jelentkezzen be.';

  @override
  String get snackSignupFailed =>
      'Nem sikerült fiókot létrehozni. Próbáld újra.';

  @override
  String get snackEnterOtp => 'Kérjük, adja meg a 6 számjegyű kódot';

  @override
  String get snackOtpExpired => 'A kód lejárt';

  @override
  String get snackOtpExpiredBody => 'Kérjen új kódot.';

  @override
  String get snackInvalidCode => 'Érvénytelen kód';

  @override
  String get snackInvalidCodeBody => 'A kód helytelen. Kérjük, próbálja újra.';

  @override
  String get snackSendCodeFailed =>
      'Nem sikerült elküldeni a kódot. Ellenőrizze a kapcsolatot, és próbálja újra.';

  @override
  String get snackEmptyFolder => 'Üres mappa';

  @override
  String get snackEmptyFolderBody =>
      'Nem található fájl a kiválasztott mappában.';

  @override
  String get snackFolderUnsupported => 'Nem támogatott';

  @override
  String get snackFolderUnsupportedBody =>
      'Mappafeltöltés nem érhető el ezen a platformon.';

  @override
  String get snackFolderReadError =>
      'Nem sikerült beolvasni a kiválasztott mappát.';

  @override
  String get snackLimitReached => 'Elérte a határt';

  @override
  String get snackLimitFilesBody =>
      'Néhány fájl nem lett hozzáadva a méret vagy a fájlszám korlátozása miatt.';

  @override
  String get snackFreePlanLimit =>
      'Az ingyenes csomag átvitelenként akár 5 GB-ot tesz lehetővé. Kérjük, távolítson el néhány fájlt, vagy frissítsen.';

  @override
  String get snackSignInEmail =>
      'Kérjük, jelentkezzen be, hogy e-mailben küldje el.';

  @override
  String get snackUploadStartFailed => 'Nem sikerült elindítani a feltöltést.';

  @override
  String get snackVerifyEnterCode =>
      'Írja be az e-mailben kapott 4 számjegyű kódot.';

  @override
  String get snackVerifyInvalid =>
      'Érvénytelen vagy lejárt kód. Ellenőrizze az e-mailt, és próbálja újra.';

  @override
  String get snackVerifyResendFailed =>
      'Nem sikerült újraküldeni a kódot. Próbáld újra.';

  @override
  String get snackDownloadComplete => 'Letöltés kész';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" mentve a Letöltések közé';
  }

  @override
  String get snackDownloadFailed => 'Letöltés sikertelen';

  @override
  String get snackSaved => 'Mentve';

  @override
  String get snackServerUrlUpdated =>
      'A szerver URL-je frissítve. Az alkalmazáshoz indítsa újra az alkalmazást.';

  @override
  String get snackStoreError => 'Tárolási hiba';

  @override
  String get snackMissingProducts => 'Hiányzó termékek';

  @override
  String get snackStoreUnavailable => 'Az üzlet nem elérhető';

  @override
  String get snackStoreUnavailableBody =>
      'Az alkalmazáson belüli vásárlás nem érhető el ezen az eszközön.';

  @override
  String get snackProductNotLoaded => 'A termék még nincs betöltve.';

  @override
  String get snackRestoreStarted => 'A visszaállítás megkezdődött';

  @override
  String get snackRestoreStartedBody => 'Ellenőrizzük vásárlásait.';

  @override
  String get snackRestoreFailed => 'A visszaállítás nem sikerült';

  @override
  String get snackProcessing => 'Feldolgozás';

  @override
  String get snackPleaseWait => 'Kérjük, várjon…';

  @override
  String get snackSuccess => 'Siker';

  @override
  String get snackPurchaseCompleted => 'A vásárlás befejeződött.';

  @override
  String get snackPurchaseError => 'Vásárlási hiba';

  @override
  String get snackPurchaseFailed => 'A vásárlás sikertelen.';

  @override
  String get snackCanceled => 'Törölve';

  @override
  String get snackPurchaseCanceled => 'Vásárlás törölve.';

  @override
  String get snackUpload => 'Feltöltés';

  @override
  String get snackVerify => 'Ellenőrizze';

  @override
  String get doNotExpire => 'Ne járjon le';

  @override
  String get hourSingular => 'óra';

  @override
  String get hourPlural => 'óra';

  @override
  String get daySingular => 'nap';

  @override
  String get dayPlural => 'napokon';

  @override
  String get emailAddressLabel => 'E-MAIL CÍM';

  @override
  String get passwordLabelCaps => 'JELSZÓ';

  @override
  String get confirmPasswordLabelCaps => 'JELSZÓ MEGERŐSÍTÉSE';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ÁTVITELI LINK VAGY AZONOSÍTÓ';

  @override
  String get howToReceive => 'HOGYAN KELL FOGADNI';

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
  String get planAdsTitle => 'Hirdetési terv';

  @override
  String get planAdsBullet1 => 'Hozzáférés a hirdetések ingyenes alkalmazáshoz';

  @override
  String get planAdsBullet2 => 'Távolítsa el az összes hirdetést';

  @override
  String get planProTitle => 'Pro terv';

  @override
  String get planProBullet1 => 'Fájlok küldése 20 GB-ig';

  @override
  String get planProBullet2 => 'Gyors feltöltés';

  @override
  String get planPremiumTitle => 'Prémium csomag';

  @override
  String get planPremiumBullet1 => 'Fájlok küldése 100 GB-ig';

  @override
  String get planPremiumBullet2 => 'Szuper gyors feltöltés';

  @override
  String get planSubscriptionDisclaimer =>
      'Nincs próbaidőszak – a további alkalmazásfunkciók használatához előfizetés szükséges. Azonnal megterheljük a díjat. Bármikor lemondhatja.';

  @override
  String get perMonth => '/ hónap';

  @override
  String get perYear => '/ év';

  @override
  String get snackConnectionProblem =>
      'Csatlakozási probléma. Kérjük, próbálja újra.';

  @override
  String get networkTitle => 'Hálózat';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Fájlok: $count · $size bájt';
  }

  @override
  String todayAt(String time) {
    return 'Ma · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Tegnap · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}napja · $time';
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
    return '$sent / $total • $remaining balra';
  }

  @override
  String get loadingShort => 'Terhelés…';

  @override
  String get colorPaletteTitle => 'Színpaletta';

  @override
  String get colorPaletteSectionBackgrounds => 'Hátterek (tinta skála)';

  @override
  String get colorPaletteSectionAccent => 'Ékezet / Elsődleges';

  @override
  String get colorPaletteSectionText => 'Szöveg';

  @override
  String get colorPaletteSectionBorders => 'Borders & Glass';

  @override
  String get colorPaletteSectionSemantic => 'Szemantikus';

  @override
  String get colorPaletteSectionLive => 'Élő téma (jelenlegi)';

  @override
  String get colorPaletteActiveHint => '★ = aktívan használják képernyőkön';

  @override
  String get colorPaletteCopyHint =>
      'Nyomja meg hosszan bármelyik színmintát a hexadecimális érték másolásához.';

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
  String get settingsAppBrand => 'Share Large\nVideó fájlok';

  @override
  String get loginEmailPasswordPrompt =>
      'A bejelentkezéshez adja meg e-mail címét és jelszavát.';

  @override
  String get forgotPassword => 'Elfelejtetted a jelszavad?';

  @override
  String get forgotPasswordTitle => 'Jelszó visszaállítása';

  @override
  String get forgotPasswordBody =>
      'Adja meg fiókjának e-mail-címét, és küldünk egy visszaállító kódot.';

  @override
  String get forgotPasswordSubmit => 'Reset kód küldése';

  @override
  String get resetPasswordTitle => 'Hozzon létre új jelszót';

  @override
  String get resetPasswordBody =>
      'Írja be az e-mailben kapott 6 számjegyű kódot, és válasszon új jelszót.';

  @override
  String get resetPasswordSubmit => 'Frissítse a jelszót';

  @override
  String get snackPasswordResetSent => 'Visszaállítási kód elküldve';

  @override
  String get snackPasswordResetSentBody =>
      'Nézze meg az e-mailben a 6 számjegyű visszaállítási kódot.';

  @override
  String get snackPasswordResetFailed =>
      'Nem sikerült elküldeni a visszaállítási kódot. Próbáld újra.';

  @override
  String get snackPasswordUpdated => 'Jelszó frissítve';

  @override
  String get snackPasswordUpdatedBody => 'Jelentkezzen be új jelszavával.';

  @override
  String get snackPasswordResetInvalid =>
      'Érvénytelen vagy lejárt visszaállítási kód.';

  @override
  String get otpDigitLabel => '6 SZÁMJEGYES KÓD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count további fájlok';
  }
}
