// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Sdílejte velké video soubory';

  @override
  String get heroAccent => 'okamžitě.';

  @override
  String get heroTitle => 'Odesílejte těžké soubory';

  @override
  String get splashLoading => 'Načítání…';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Domov';

  @override
  String get navHistory => 'Dějiny';

  @override
  String get navReceive => 'Dostávat';

  @override
  String get navPlans => 'Plány';

  @override
  String get navDownload => 'Stáhnout';

  @override
  String get navSettings => 'Nastavení';

  @override
  String get modeLink => 'Získejte odkaz';

  @override
  String get modeEmail => 'Odeslat emailem';

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
  String get pickFiles => 'Vyberte soubory';

  @override
  String get pickFolder => 'Vyberte složku';

  @override
  String get emailFrom => 'Váš email';

  @override
  String get mailFromUsesAccount => 'Používá váš přihlášený e-mail.';

  @override
  String get recipientEmailsHelper =>
      'Více příjemců: oddělte je čárkami, středníky nebo mezerami.';

  @override
  String get emailTo => 'E-mail příjemce';

  @override
  String get messageOptional => 'Zpráva (volitelné)';

  @override
  String get passwordOptional => 'Heslo (volitelné)';

  @override
  String get destructAfterDownload => 'Po stažení smazat';

  @override
  String get destructNo => 'Mějte k dispozici';

  @override
  String get sendButton => 'Poslat';

  @override
  String get uploading => 'Nahrávání…';

  @override
  String get uploadComplete => 'Hotovo';

  @override
  String get shareLinkTitle => 'Váš odkaz';

  @override
  String get copyLink => 'Zkopírujte odkaz';

  @override
  String get share => 'Podíl';

  @override
  String get shareQrCode => 'Sdílejte QR kód';

  @override
  String get uploadMore => 'Pošlete další';

  @override
  String get emailSentTitle => 'E-maily odeslány';

  @override
  String get verifyEmailTitle => 'Ověřte svůj e-mail';

  @override
  String get verifyCodeHint => 'Zadejte kód z vašeho e-mailu';

  @override
  String get verifySubmit => 'Ověřte';

  @override
  String get verifyResendCode => 'Znovu odeslat kód';

  @override
  String get verifyCodeSent => 'Na váš e-mail byl zaslán nový ověřovací kód.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Ověřovací e-mail možná nebyl odeslán';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Server nemohl potvrdit doručení (SMTP je často špatně nakonfigurován). Požádejte svého správce webu, aby zkontroloval nastavení pošty na panelu správce, a potom klepněte na Znovu odeslat kód.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Pokud nedorazí: zkontrolujte Nevyžádanou poštu/Spam a Propagace, počkejte minutu, potvrďte, že $email neobsahuje překlepy, a potom klepněte na Znovu odeslat.';
  }

  @override
  String get loginTitle => 'Přihlaste se';

  @override
  String get signupHint => 'Použijte svůj e-mail a heslo k účtu webu.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Heslo';

  @override
  String get cancel => 'Zrušit';

  @override
  String get signIn => 'Přihlaste se';

  @override
  String get downloadIdHint => 'ID převodu';

  @override
  String get privateIdHint => 'Soukromé ID (volitelné)';

  @override
  String get fetchTransfer => 'Otevřený převod';

  @override
  String get downloadFile => 'Stáhnout';

  @override
  String get unlockDownload => 'Odemknout stahování';

  @override
  String get downloadSaved => 'Uloženo do složky Stažené soubory';

  @override
  String get errorGeneric => 'Něco se pokazilo';

  @override
  String get errorNetwork => 'Chyba sítě';

  @override
  String get errorBadResponse => 'Neočekávaná odpověď serveru';

  @override
  String get termsAccept => 'Souhlasím s podmínkami';

  @override
  String get settingsApiUrl => 'URL veřejné stránky';

  @override
  String get settingsAccount => 'Účet';

  @override
  String get settingsAppearance => 'Vzhled';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get themeSystem => 'Systém';

  @override
  String get themeLight => 'Světlo';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get settingsSignedIn => 'Jste přihlášeni.';

  @override
  String get settingsSignedOut => 'Nejste přihlášeni.';

  @override
  String get settingsOpenWebsite => 'Otevřete webovou stránku';

  @override
  String get signUp => 'Zaregistrujte se';

  @override
  String get settingsLinks => 'Odkazy';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get termsOfService => 'Podmínky služby';

  @override
  String get about => 'O';

  @override
  String get moreApps => 'Další aplikace';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get languageEnglish => 'angličtina';

  @override
  String get languageHindi => 'hindština';

  @override
  String get logout => 'Odhlaste se';

  @override
  String get deleteAccount => 'Smazat účet';

  @override
  String get deleteAccountConfirmTitle => 'Smazat svůj účet?';

  @override
  String get deleteAccountConfirmBody =>
      'Tím trvale smažete svůj účet a odhlásíte se. Odkazy na převod budou nadále fungovat, ale již se nebudou zobrazovat ve vaší historii.';

  @override
  String get deleteAccountSuccess => 'Účet smazán';

  @override
  String get deleteAccountSuccessBody => 'Váš účet byl odstraněn.';

  @override
  String get deleteAccountFailed => 'Účet se nepodařilo smazat';

  @override
  String get deleteAccountFailedBody =>
      'Zkuste to znovu nebo kontaktujte podporu.';

  @override
  String get maxFilesReached => 'Příliš mnoho souborů';

  @override
  String get fileTooLarge => 'Soubor je příliš velký';

  @override
  String get ipLimit => 'Příliš mnoho nahrávání z této sítě';

  @override
  String get fillFields => 'Vyplňte prosím povinná pole';

  @override
  String get invalidEmail => 'Neplatný email';

  @override
  String get maxRecipientsReached => 'Příliš mnoho příjemců';

  @override
  String get loginRequiredTitle => 'Je vyžadováno přihlášení';

  @override
  String get loginRequiredBody =>
      'Tento server vyžaduje účet pro nahrávání nebo stahování.';

  @override
  String get settingsSubtitle => 'Předvolby aplikace a účet.';

  @override
  String get dropHeavyFile => 'Sem vložte těžký soubor.';

  @override
  String upToTotal(String max) {
    return 'Celkem až $max';
  }

  @override
  String get removeAll => 'Odebrat vše';

  @override
  String get addFiles => 'Přidat soubory';

  @override
  String get adding => 'Přidávání…';

  @override
  String get options => 'Možnosti';

  @override
  String get selfDestruct => 'Sebedestrukce po stažení';

  @override
  String get expiry => 'Uplynutí';

  @override
  String get cancelUpload => 'Zrušit nahrávání';

  @override
  String get transferReady => 'Převod připraven!';

  @override
  String get emailSentReady => 'Email odeslán!';

  @override
  String get shareRecipientHint => 'Sdílejte tento odkaz se svým příjemcem.';

  @override
  String get emailSentBody => 'Informovali jsme vaše příjemce.';

  @override
  String get scanQr => 'Skenováním otevřete odkaz pro přenos.';

  @override
  String get shareLinkButton => 'SDÍLET ODKAZ';

  @override
  String get verifyFourDigit =>
      'Zadejte 4místný kód odeslaný na váš e-mail odesílatele.';

  @override
  String get starting => 'Spouštění…';

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
    return 'Zbývá $amount MB';
  }

  @override
  String get fillField => 'Vyplňte prosím toto pole.';

  @override
  String get enterValidEmail => 'Zadejte platný e-mail.';

  @override
  String get message => 'Zpráva';

  @override
  String get recipientEmail => 'E-mail příjemce';

  @override
  String get active => 'Aktivní';

  @override
  String get expired => 'Platnost vypršela';

  @override
  String get historyTitle => 'Moje převody';

  @override
  String get signInToSeeTransfers =>
      'Chcete-li zobrazit své převody, přihlaste se';

  @override
  String get signInTransfersBody =>
      'Váš e-mail používáme k propojení převodů s vaším účtem – není potřeba žádné heslo.';

  @override
  String get couldNotLoadTransfers => 'Nelze načíst převody';

  @override
  String get retry => 'Zkuste to znovu';

  @override
  String get noTransfersYet => 'Zatím žádné převody';

  @override
  String get noTransfersBody => 'Jakmile soubor odešlete, zobrazí se zde.';

  @override
  String get transferDetails => 'Podrobnosti převodu';

  @override
  String get filesSection => 'Soubory';

  @override
  String get receiveTitle => 'Přijímat soubory';

  @override
  String get receiveSubtitle => 'Vložte odkaz na přenos ke stažení souborů.';

  @override
  String get pasteTooltip => 'Pasta';

  @override
  String get findTransfer => 'Najděte Převod';

  @override
  String get receiveScanQr => 'Naskenujte QR';

  @override
  String get receiveScanQrTitle => 'Skenování přenosu QR';

  @override
  String get receiveScanQrHint => 'Zarovnejte QR kód uvnitř rámečku.';

  @override
  String get receiveScanQrInvalid =>
      'Tento QR kód není platný přenosový odkaz.';

  @override
  String get receiveScanQrCameraDenied =>
      'Ke skenování QR kódů je vyžadován přístup k fotoaparátu.';

  @override
  String get receiveStepGetLink => 'Získejte odkaz';

  @override
  String get receiveStepGetLinkBody =>
      'Požádejte odesílatele, aby s vámi sdílel odkaz na přenos.';

  @override
  String get receiveStepPaste => 'Vložit a najít';

  @override
  String get receiveStepPasteBody =>
      'Vložte výše uvedený odkaz a klepněte na „Najít přenos“.';

  @override
  String get receiveStepDownload => 'Stáhnout soubory';

  @override
  String get receiveStepDownloadBody =>
      'Podívejte se na podrobnosti o souboru a stáhněte si vše najednou.';

  @override
  String get lookingUpTransfer => 'Vyhledávání převodu…';

  @override
  String get transferNotFound =>
      'Převod nenalezen. Zkontrolujte odkaz a zkuste to znovu.';

  @override
  String get transferExpired =>
      'Platnost tohoto převodu vypršela a již není k dispozici.';

  @override
  String get transferLoginRequired =>
      'Pro přístup k tomuto převodu je vyžadováno přihlášení.';

  @override
  String get transferBadResponse =>
      'Neočekávaná odpověď serveru. Zkontrolujte připojení.';

  @override
  String get transferNetworkError =>
      'Chyba sítě. Zkontrolujte připojení k internetu.';

  @override
  String transferLoadFailed(String error) {
    return 'Nelze načíst přenos: $error';
  }

  @override
  String get passwordProtected => 'Chráněno heslem';

  @override
  String get enterPassword => 'Zadejte heslo';

  @override
  String get unlock => 'Odemknout';

  @override
  String get downloading => 'Stahování…';

  @override
  String get downloadAllFiles => 'Stáhnout všechny soubory';

  @override
  String get downloadSingleFile => 'Stáhnout soubor';

  @override
  String get receiveAnother => 'Přijmout další převod';

  @override
  String get plansTitle => 'Plány';

  @override
  String get plansSubtitle =>
      'Upgradujte a odstraňte reklamy a posílejte větší soubory.';

  @override
  String get storeUnavailable => 'Obchod nedostupný';

  @override
  String get storeUnavailableBody =>
      'Nákupy v aplikaci nejsou momentálně dostupné.';

  @override
  String get storeLoadingPrices => 'Načítání cen z App Store…';

  @override
  String get storePricesUnavailable => 'Ceny nejsou k dispozici';

  @override
  String get storePricesPartial => 'Některé ceny se nepodařilo načíst';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Načteno předplatné $loaded z $total.';
  }

  @override
  String get storeSetupHint =>
      'Otestujte na skutečném iPhonu (nikoli na simulátoru), použijte Sandbox Apple ID a ujistěte se, že všech 6 předplatných je vytvořeno pod ID balíčku této aplikace v App Store Connect s nastavenou cenou.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/měsíc';
  }

  @override
  String get freeVersionAds =>
      'V současné době používáte naši bezplatnou verzi s reklamami';

  @override
  String get restorePurchases => 'Obnovit nákupy';

  @override
  String get plansContinue => 'Pokračovat';

  @override
  String get planLinkRestore => 'Obnovit';

  @override
  String get termsAndConditions => 'Smluvní podmínky';

  @override
  String get createAccountTitle => 'Vytvořit účet';

  @override
  String get signUpSubtitle => 'Zaregistrujte se pomocí e-mailu a hesla.';

  @override
  String get confirmPassword => 'Potvrďte heslo';

  @override
  String get passwordMin8 => 'Heslo (min. 8 znaků)';

  @override
  String get alreadyHaveAccount => 'Už máte účet?';

  @override
  String get checkEmailTitle => 'Zkontrolujte svůj\nemail';

  @override
  String otpSentTo(String email) {
    return 'Poslali jsme 6místný kód na\n$email';
  }

  @override
  String get verifyAndSignIn => 'Ověřit a přihlásit se';

  @override
  String get didntReceiveCode => 'Nedostali jste to?';

  @override
  String get tryAgain => 'Zkuste to znovu';

  @override
  String get otpExpiresHint =>
      'Platnost kódu vyprší za 5 minut. Pokud ji nevidíte, zkontrolujte složku se spamem.';

  @override
  String get snackError => 'Chyba';

  @override
  String get snackCopied => 'Zkopírováno';

  @override
  String get snackCopiedBody => 'Odkaz zkopírován do schránky';

  @override
  String get snackWelcome => 'Vítejte';

  @override
  String get snackAccountCreated => 'Účet vytvořen';

  @override
  String get snackEnterEmail => 'Zadejte prosím svůj email';

  @override
  String get snackEnterPassword => 'Zadejte prosím své heslo';

  @override
  String get snackInvalidEmail => 'Neplatná e-mailová adresa';

  @override
  String get snackInvalidCredentials => 'Nesprávný e-mail nebo heslo';

  @override
  String get snackPasswordMin8 => 'Heslo musí mít alespoň 8 znaků';

  @override
  String get snackPasswordMismatch => 'Hesla se neshodují.';

  @override
  String get snackAccountExists => 'Účet již existuje. Přihlaste se prosím.';

  @override
  String get snackSignupFailed => 'Účet nelze vytvořit. Zkuste to znovu.';

  @override
  String get snackEnterOtp => 'Zadejte 6místný kód';

  @override
  String get snackOtpExpired => 'Platnost kódu vypršela';

  @override
  String get snackOtpExpiredBody => 'Požádejte o nový kód.';

  @override
  String get snackInvalidCode => 'Neplatný kód';

  @override
  String get snackInvalidCodeBody =>
      'Kód je nesprávný. Zkuste to prosím znovu.';

  @override
  String get snackSendCodeFailed =>
      'Kód nelze odeslat. Zkontrolujte připojení a zkuste to znovu.';

  @override
  String get snackEmptyFolder => 'Prázdná složka';

  @override
  String get snackEmptyFolderBody =>
      'Ve vybrané složce nebyly nalezeny žádné soubory.';

  @override
  String get snackFolderUnsupported => 'Není podporováno';

  @override
  String get snackFolderUnsupportedBody =>
      'Nahrání složky není na této platformě dostupné.';

  @override
  String get snackFolderReadError => 'Vybranou složku nelze přečíst.';

  @override
  String get snackLimitReached => 'Limit dosažen';

  @override
  String get snackLimitFilesBody =>
      'Některé soubory nebyly přidány z důvodu omezení velikosti nebo počtu souborů.';

  @override
  String get snackFreePlanLimit =>
      'Bezplatný plán umožňuje až 5 GB na přenos. Odstraňte některé soubory nebo upgradujte.';

  @override
  String get snackSignInEmail => 'Chcete-li odeslat e-mailem, přihlaste se.';

  @override
  String get snackUploadStartFailed => 'Nelze zahájit nahrávání.';

  @override
  String get snackVerifyEnterCode => 'Zadejte 4místný kód z vašeho e-mailu.';

  @override
  String get snackVerifyInvalid =>
      'Neplatný kód nebo kód, jehož platnost vypršela. Zkontrolujte e-mail a zkuste to znovu.';

  @override
  String get snackVerifyResendFailed =>
      'Kód se nepodařilo znovu odeslat. Zkuste to znovu.';

  @override
  String get snackDownloadComplete => 'Stahování dokončeno';

  @override
  String snackDownloadSaved(String filename) {
    return '„$filename“ uloženo do složky Stažené soubory';
  }

  @override
  String get snackDownloadFailed => 'Stahování se nezdařilo';

  @override
  String get snackSaved => 'Uloženo';

  @override
  String get snackServerUrlUpdated =>
      'Adresa URL serveru aktualizována. Chcete-li aplikaci použít, restartujte aplikaci.';

  @override
  String get snackStoreError => 'Chyba obchodu';

  @override
  String get snackMissingProducts => 'Chybějící produkty';

  @override
  String get snackStoreUnavailable => 'Obchod nedostupný';

  @override
  String get snackStoreUnavailableBody =>
      'Nákupy v aplikaci nejsou na tomto zařízení k dispozici.';

  @override
  String get snackProductNotLoaded => 'Produkt ještě není načten.';

  @override
  String get snackRestoreStarted => 'Obnovení zahájeno';

  @override
  String get snackRestoreStartedBody => 'Kontrolujeme vaše nákupy.';

  @override
  String get snackRestoreFailed => 'Obnovení se nezdařilo';

  @override
  String get snackProcessing => 'Zpracování';

  @override
  String get snackPleaseWait => 'Čekejte prosím…';

  @override
  String get snackSuccess => 'Úspěch';

  @override
  String get snackPurchaseCompleted => 'Nákup dokončen.';

  @override
  String get snackPurchaseError => 'Chyba nákupu';

  @override
  String get snackPurchaseFailed => 'Nákup se nezdařil.';

  @override
  String get snackCanceled => 'Zrušeno';

  @override
  String get snackPurchaseCanceled => 'Nákup zrušen.';

  @override
  String get snackUpload => 'Nahrát';

  @override
  String get snackVerify => 'Ověřte';

  @override
  String get doNotExpire => 'Nevyprší platnost';

  @override
  String get hourSingular => 'hodina';

  @override
  String get hourPlural => 'hodin';

  @override
  String get daySingular => 'den';

  @override
  String get dayPlural => 'dní';

  @override
  String get emailAddressLabel => 'E-MAILOVÁ ADRESA';

  @override
  String get passwordLabelCaps => 'HESLO';

  @override
  String get confirmPasswordLabelCaps => 'POTVRĎTE HESLO';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'PŘEVODOVÝ ODKAZ NEBO ID';

  @override
  String get howToReceive => 'JAK PŘIJÍMAT';

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
  String get planAdsTitle => 'Plán reklam';

  @override
  String get planAdsBullet1 => 'Přístup k aplikaci bez reklam';

  @override
  String get planAdsBullet2 => 'Odstraňte všechny reklamy';

  @override
  String get planProTitle => 'Pro plán';

  @override
  String get planProBullet1 => 'Odesílejte soubory až do velikosti 20 GB';

  @override
  String get planProBullet2 => 'Rychlé nahrávání';

  @override
  String get planPremiumTitle => 'Prémiový plán';

  @override
  String get planPremiumBullet1 => 'Odesílejte soubory až do velikosti 100 GB';

  @override
  String get planPremiumBullet2 => 'Super rychlé nahrávání';

  @override
  String get planSubscriptionDisclaimer =>
      'Žádná zkušební doba – k používání dalších funkcí aplikace je vyžadováno předplatné. Okamžitě vám bude účtován poplatek. Zrušit můžete kdykoli.';

  @override
  String get perMonth => '/ měsíc';

  @override
  String get perYear => '/ rok';

  @override
  String get snackConnectionProblem =>
      'Problém s připojením. Zkuste to prosím znovu.';

  @override
  String get networkTitle => 'Síť';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Soubory: $count · $size bajtů';
  }

  @override
  String todayAt(String time) {
    return 'Dnes · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Včera · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d před · $time';
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
    return '$sent / $total • $remaining vlevo';
  }

  @override
  String get loadingShort => 'Načítání…';

  @override
  String get colorPaletteTitle => 'Paleta barev';

  @override
  String get colorPaletteSectionBackgrounds => 'Pozadí (škála inkoustu)';

  @override
  String get colorPaletteSectionAccent => 'Přízvuk / Primární';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Borders & Glass';

  @override
  String get colorPaletteSectionSemantic => 'Sémantický';

  @override
  String get colorPaletteSectionLive => 'Živé téma (aktuální)';

  @override
  String get colorPaletteActiveHint => '★ = aktivně používané na obrazovkách';

  @override
  String get colorPaletteCopyHint =>
      'Dlouhým stisknutím libovolného políčka zkopírujte jeho hexadecimální hodnotu.';

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
  String get settingsAppBrand => 'Sdílet velké\nVideo soubory';

  @override
  String get loginEmailPasswordPrompt =>
      'Pro přihlášení zadejte svůj e-mail a heslo.';

  @override
  String get forgotPassword => 'Zapomněli jste heslo?';

  @override
  String get forgotPasswordTitle => 'Obnovit heslo';

  @override
  String get forgotPasswordBody =>
      'Zadejte e-mail svého účtu a my vám zašleme resetovací kód.';

  @override
  String get forgotPasswordSubmit => 'Odeslat resetovací kód';

  @override
  String get resetPasswordTitle => 'Vytvořte nové heslo';

  @override
  String get resetPasswordBody =>
      'Zadejte 6místný kód z vašeho e-mailu a zvolte si nové heslo.';

  @override
  String get resetPasswordSubmit => 'Aktualizujte heslo';

  @override
  String get snackPasswordResetSent => 'Resetovací kód odeslán';

  @override
  String get snackPasswordResetSentBody =>
      'Zkontrolujte svůj e-mail, kde najdete 6místný resetovací kód.';

  @override
  String get snackPasswordResetFailed =>
      'Nelze odeslat resetovací kód. Zkuste to znovu.';

  @override
  String get snackPasswordUpdated => 'Heslo aktualizováno';

  @override
  String get snackPasswordUpdatedBody =>
      'Přihlaste se pomocí svého nového hesla.';

  @override
  String get snackPasswordResetInvalid =>
      'Neplatný nebo vypršela platnost resetovacího kódu.';

  @override
  String get otpDigitLabel => '6- ČÍSELNÝ KÓD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count další soubory';
  }
}
