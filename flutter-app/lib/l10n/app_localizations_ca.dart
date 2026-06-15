// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Compartiu fitxers de vídeo grans';

  @override
  String get heroAccent => 'instantàniament.';

  @override
  String get heroTitle => 'Envia fitxers pesats';

  @override
  String get splashLoading => 'S\'està carregant…';

  @override
  String get navSend => 'Tauler de control';

  @override
  String get navHome => 'a casa';

  @override
  String get navHistory => 'Història';

  @override
  String get navReceive => 'Rebre';

  @override
  String get navPlans => 'Plans';

  @override
  String get navDownload => 'Descarregar';

  @override
  String get navSettings => 'Configuració';

  @override
  String get modeLink => 'Aconsegueix un enllaç';

  @override
  String get modeEmail => 'Enviar per correu electrònic';

  @override
  String get pickFiles => 'Trieu fitxers';

  @override
  String get pickFolder => 'Trieu la carpeta';

  @override
  String get emailFrom => 'El teu correu electrònic';

  @override
  String get mailFromUsesAccount =>
      'Utilitza el correu electrònic en què heu iniciat la sessió.';

  @override
  String get recipientEmailsHelper =>
      'Diversos destinataris: separeu-los amb comes, punt i coma o espais.';

  @override
  String get emailTo => 'Correu electrònic del destinatari';

  @override
  String get messageOptional => 'Missatge (opcional)';

  @override
  String get passwordOptional => 'Contrasenya (opcional)';

  @override
  String get destructAfterDownload => 'Suprimeix després de la descàrrega';

  @override
  String get destructNo => 'Mantenir disponible';

  @override
  String get sendButton => 'Enviar';

  @override
  String get uploading => 'S\'està carregant…';

  @override
  String get uploadComplete => 'Fet';

  @override
  String get shareLinkTitle => 'El teu enllaç';

  @override
  String get copyLink => 'Copia l\'enllaç';

  @override
  String get share => 'Comparteix';

  @override
  String get shareQrCode => 'Comparteix el codi QR';

  @override
  String get uploadMore => 'Envieu-ne un altre';

  @override
  String get emailSentTitle => 'Correus electrònics enviats';

  @override
  String get verifyEmailTitle => 'Verifica el teu correu electrònic';

  @override
  String get verifyCodeHint => 'Introduïu el codi del vostre correu electrònic';

  @override
  String get verifySubmit => 'Verificar';

  @override
  String get verifyResendCode => 'Torna a enviar el codi';

  @override
  String get verifyCodeSent =>
      'S\'ha enviat un codi de verificació nou al vostre correu electrònic.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'És possible que no s\'hagi enviat el correu electrònic de verificació';

  @override
  String get verifyEmailSmtpWarningBody =>
      'El servidor no ha pogut confirmar el lliurament (sovint SMTP està mal configurat). Demaneu a l\'administrador del vostre lloc que comproveu la configuració del correu al tauler d\'administració i, a continuació, toqueu Torna a enviar el codi.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Si no arriba: comproveu Correu brossa/Spam i Promocions, espereu un minut, confirmeu que <<PH0>> no té errors d\'ortografia i, a continuació, toqueu Torna a enviar.';
  }

  @override
  String get loginTitle => 'Inicia sessió';

  @override
  String get signupHint =>
      'Utilitzeu el correu electrònic i la contrasenya del vostre compte del lloc.';

  @override
  String get emailHint => 'Correu electrònic';

  @override
  String get passwordHint => 'Contrasenya';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get signIn => 'Inicia sessió';

  @override
  String get downloadIdHint => 'ID de transferència';

  @override
  String get privateIdHint => 'Identificació privada (opcional)';

  @override
  String get fetchTransfer => 'Transferència oberta';

  @override
  String get downloadFile => 'Descarregar';

  @override
  String get unlockDownload => 'Desbloqueja la descàrrega';

  @override
  String get downloadSaved => 'Desat a Baixades';

  @override
  String get errorGeneric => 'Alguna cosa va fallar';

  @override
  String get errorNetwork => 'Error de xarxa';

  @override
  String get errorBadResponse => 'Resposta del servidor inesperada';

  @override
  String get termsAccept => 'Estic d\'acord amb els termes';

  @override
  String get settingsApiUrl => 'URL del lloc públic';

  @override
  String get settingsAccount => 'Compte';

  @override
  String get settingsAppearance => 'Aparença';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Llum';

  @override
  String get themeDark => 'Fosc';

  @override
  String get settingsSignedIn => 'Heu iniciat la sessió.';

  @override
  String get settingsSignedOut => 'No heu iniciat la sessió.';

  @override
  String get settingsOpenWebsite => 'Lloc web obert';

  @override
  String get signUp => 'Registra\'t';

  @override
  String get settingsLinks => 'Enllaços';

  @override
  String get privacyPolicy => 'Política de privadesa';

  @override
  String get termsOfService => 'Condicions del servei';

  @override
  String get about => 'Sobre';

  @override
  String get moreApps => 'Més aplicacions';

  @override
  String get settingsLanguage => 'Llengua';

  @override
  String get languageEnglish => 'Anglès';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Tanca la sessió';

  @override
  String get deleteAccount => 'Suprimeix el compte';

  @override
  String get deleteAccountConfirmTitle => 'Vols suprimir el teu compte?';

  @override
  String get deleteAccountConfirmBody =>
      'Això suprimirà permanentment el vostre compte i us tancarà la sessió. Els vostres enllaços de transferència continuaran funcionant, però ja no apareixeran al vostre historial.';

  @override
  String get deleteAccountSuccess => 'Compte suprimit';

  @override
  String get deleteAccountSuccessBody => 'El teu compte s\'ha eliminat.';

  @override
  String get deleteAccountFailed => 'No s\'ha pogut suprimir el compte';

  @override
  String get deleteAccountFailedBody =>
      'Si us plau, torna-ho a provar o contacta amb l\'assistència.';

  @override
  String get maxFilesReached => 'Massa fitxers';

  @override
  String get fileTooLarge => 'Fitxer massa gran';

  @override
  String get ipLimit => 'Hi ha massa càrregues d\'aquesta xarxa';

  @override
  String get fillFields => 'Ompliu els camps obligatoris';

  @override
  String get invalidEmail => 'Correu electrònic no vàlid';

  @override
  String get maxRecipientsReached => 'Massa destinataris';

  @override
  String get loginRequiredTitle => 'Cal iniciar sessió';

  @override
  String get loginRequiredBody =>
      'Aquest servidor requereix un compte per pujar o descarregar.';

  @override
  String get settingsSubtitle => 'Preferències de l\'aplicació i compte.';

  @override
  String get dropHeavyFile => 'Deixeu un fitxer pesat aquí.';

  @override
  String upToTotal(String max) {
    return 'Fins a <<PH0>> total';
  }

  @override
  String get removeAll => 'Elimina-ho tot';

  @override
  String get addFiles => 'Afegeix fitxers';

  @override
  String get adding => 'S\'està afegint…';

  @override
  String get options => 'Opcions';

  @override
  String get selfDestruct => 'Autodestrucció després de la descàrrega';

  @override
  String get expiry => 'Caducitat';

  @override
  String get cancelUpload => 'Cancel·la la càrrega';

  @override
  String get transferReady => 'Transferència a punt!';

  @override
  String get emailSentReady => 'Correu electrònic enviat!';

  @override
  String get shareRecipientHint =>
      'Comparteix aquest enllaç amb el teu destinatari.';

  @override
  String get emailSentBody => 'Hem notificat els vostres destinataris.';

  @override
  String get scanQr => 'Escaneja per obrir l\'enllaç de transferència.';

  @override
  String get shareLinkButton => 'COMPARTIR ENLLAÇ';

  @override
  String get verifyFourDigit =>
      'Introduïu el codi de 4 dígits enviat al correu electrònic del vostre remitent.';

  @override
  String get starting => 'S\'està començant…';

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
    return '<<PH0>> MB restants';
  }

  @override
  String get fillField => 'Si us plau, ompliu aquest camp.';

  @override
  String get enterValidEmail => 'Introduïu un correu electrònic vàlid.';

  @override
  String get message => 'Missatge';

  @override
  String get recipientEmail => 'Correu electrònic del destinatari';

  @override
  String get active => 'Actius';

  @override
  String get expired => 'Caducat';

  @override
  String get historyTitle => 'Les meves transferències';

  @override
  String get signInToSeeTransfers =>
      'Inicieu la sessió per veure les vostres transferències';

  @override
  String get signInTransfersBody =>
      'Utilitzem el vostre correu electrònic per enllaçar les transferències al vostre compte, sense necessitat de contrasenya.';

  @override
  String get couldNotLoadTransfers =>
      'No s\'han pogut carregar les transferències';

  @override
  String get retry => 'Torna-ho a provar';

  @override
  String get noTransfersYet => 'Encara no hi ha transferències';

  @override
  String get noTransfersBody => 'Un cop envieu un fitxer, apareixerà aquí.';

  @override
  String get transferDetails => 'Detalls de la transferència';

  @override
  String get filesSection => 'Fitxers';

  @override
  String get receiveTitle => 'Rebre arxius';

  @override
  String get receiveSubtitle =>
      'Enganxeu un enllaç de transferència per descarregar fitxers.';

  @override
  String get pasteTooltip => 'Enganxa';

  @override
  String get findTransfer => 'Cerca Transferència';

  @override
  String get receiveScanQr => 'Escaneja QR';

  @override
  String get receiveScanQrTitle => 'Escaneig de transferència QR';

  @override
  String get receiveScanQrHint => 'Alineeu el codi QR dins del marc.';

  @override
  String get receiveScanQrInvalid =>
      'Aquest codi QR no és un enllaç de transferència vàlid.';

  @override
  String get receiveScanQrCameraDenied =>
      'Es requereix accés a la càmera per escanejar codis QR.';

  @override
  String get receiveStepGetLink => 'Obteniu l\'enllaç';

  @override
  String get receiveStepGetLinkBody =>
      'Demana al remitent que comparteixi l\'enllaç de transferència amb tu.';

  @override
  String get receiveStepPaste => 'Enganxa i troba';

  @override
  String get receiveStepPasteBody =>
      'Enganxeu l\'enllaç de dalt i toqueu \"Troba la transferència\".';

  @override
  String get receiveStepDownload => 'Descarregar fitxers';

  @override
  String get receiveStepDownloadBody =>
      'Vegeu els detalls del fitxer i descarregueu-ho tot alhora.';

  @override
  String get lookingUpTransfer => 'S\'està buscant la transferència...';

  @override
  String get transferNotFound =>
      'No s\'ha trobat la transferència. Comprova l\'enllaç i torna-ho a provar.';

  @override
  String get transferExpired =>
      'Aquesta transferència ha caducat i ja no està disponible.';

  @override
  String get transferLoginRequired =>
      'Cal iniciar sessió per accedir a aquesta transferència.';

  @override
  String get transferBadResponse =>
      'Resposta del servidor inesperada. Comproveu la vostra connexió.';

  @override
  String get transferNetworkError =>
      'Error de xarxa. Comproveu la vostra connexió a Internet.';

  @override
  String transferLoadFailed(String error) {
    return 'No s\'ha pogut carregar la transferència: <<PH0>>';
  }

  @override
  String get passwordProtected => 'Protegit amb contrasenya';

  @override
  String get enterPassword => 'Introduïu la contrasenya';

  @override
  String get unlock => 'Desbloqueja';

  @override
  String get downloading => 'S\'està baixant…';

  @override
  String get downloadAllFiles => 'Baixeu tots els fitxers';

  @override
  String get downloadSingleFile => 'Descarregar fitxer';

  @override
  String get receiveAnother => 'Rebre una altra transferència';

  @override
  String get plansTitle => 'Plans';

  @override
  String get plansSubtitle =>
      'Actualitzeu per eliminar anuncis i enviar fitxers més grans.';

  @override
  String get storeUnavailable => 'Botiga no disponible';

  @override
  String get storeUnavailableBody =>
      'Les compres des de l\'aplicació no estan disponibles ara mateix.';

  @override
  String get storeLoadingPrices =>
      'S\'estan carregant els preus de l\'App Store...';

  @override
  String get storePricesUnavailable => 'Preus no disponibles';

  @override
  String get storePricesPartial => 'Alguns preus no s\'han pogut carregar';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'S\'han carregat <<PH0>> dels productes de subscripció <<PH1>>.';
  }

  @override
  String get storeSetupHint =>
      'Proveu en un iPhone real (no en un simulador), utilitzeu un identificador d\'Apple Sandbox i assegureu-vos que les 6 subscripcions es creïn amb l\'identificador de paquet d\'aquesta aplicació a l\'App Store Connect amb el preu establert.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<PH0>>/mes';
  }

  @override
  String get freeVersionAds =>
      'Actualment estàs utilitzant la nostra versió gratuïta amb anuncis';

  @override
  String get restorePurchases => 'Restaurar les compres';

  @override
  String get plansContinue => 'Continua';

  @override
  String get planLinkRestore => 'Restaurar';

  @override
  String get termsAndConditions => 'Termes i condicions';

  @override
  String get createAccountTitle => 'Crea un compte';

  @override
  String get signUpSubtitle =>
      'Registra\'t amb correu electrònic i contrasenya.';

  @override
  String get confirmPassword => 'Confirmeu la contrasenya';

  @override
  String get passwordMin8 => 'Contrasenya (mínim 8 caràcters)';

  @override
  String get alreadyHaveAccount => 'Ja tens un compte?';

  @override
  String get checkEmailTitle => 'Comproveu el vostre\ncorreu electrònic';

  @override
  String otpSentTo(String email) {
    return 'Hem enviat un codi de 6 dígits a\n<<PH0>>';
  }

  @override
  String get verifyAndSignIn => 'Verifica i inicia la sessió';

  @override
  String get didntReceiveCode => 'No l\'heu rebut?';

  @override
  String get tryAgain => 'Torna-ho a provar';

  @override
  String get otpExpiresHint =>
      'El codi caduca en 5 minuts. Comproveu la vostra carpeta de correu brossa si no la veieu.';

  @override
  String get snackError => 'Error';

  @override
  String get snackCopied => 'Copiat';

  @override
  String get snackCopiedBody => 'S\'ha copiat l\'enllaç al porta-retalls';

  @override
  String get snackWelcome => 'Benvingut';

  @override
  String get snackAccountCreated => 'Compte creat';

  @override
  String get snackEnterEmail => 'Introduïu el vostre correu electrònic';

  @override
  String get snackEnterPassword => 'Introduïu la vostra contrasenya';

  @override
  String get snackInvalidEmail => 'Adreça de correu electrònic no vàlida';

  @override
  String get snackInvalidCredentials =>
      'Correu electrònic o contrasenya incorrectes';

  @override
  String get snackPasswordMin8 =>
      'La contrasenya ha de tenir com a mínim 8 caràcters';

  @override
  String get snackPasswordMismatch => 'Les contrasenyes no coincideixen.';

  @override
  String get snackAccountExists =>
      'El compte ja existeix. Si us plau, inicieu la sessió.';

  @override
  String get snackSignupFailed =>
      'No s\'ha pogut crear el compte. Torna-ho a provar.';

  @override
  String get snackEnterOtp => 'Introduïu el codi de 6 dígits';

  @override
  String get snackOtpExpired => 'El codi ha caducat';

  @override
  String get snackOtpExpiredBody => 'Sol·liciteu un codi nou.';

  @override
  String get snackInvalidCode => 'Codi no vàlid';

  @override
  String get snackInvalidCodeBody =>
      'El codi és incorrecte. Si us plau, torna-ho a provar.';

  @override
  String get snackSendCodeFailed =>
      'No s\'ha pogut enviar el codi. Comprova la teva connexió i torna-ho a provar.';

  @override
  String get snackEmptyFolder => 'Carpeta buida';

  @override
  String get snackEmptyFolderBody =>
      'No s\'han trobat fitxers a la carpeta seleccionada.';

  @override
  String get snackFolderUnsupported => 'No s\'admet';

  @override
  String get snackFolderUnsupportedBody =>
      'La càrrega de carpetes no està disponible en aquesta plataforma.';

  @override
  String get snackFolderReadError =>
      'No s\'ha pogut llegir la carpeta seleccionada.';

  @override
  String get snackLimitReached => 'S\'ha arribat al límit';

  @override
  String get snackLimitFilesBody =>
      'Alguns fitxers no s\'han afegit a causa dels límits de mida o de recompte de fitxers.';

  @override
  String get snackFreePlanLimit =>
      'El pla gratuït permet fins a 5 GB per transferència. Si us plau, elimineu alguns fitxers o actualitzeu-los.';

  @override
  String get snackSignInEmail =>
      'Si us plau, inicieu la sessió per enviar-lo per correu electrònic.';

  @override
  String get snackUploadStartFailed => 'No s\'ha pogut iniciar la càrrega.';

  @override
  String get snackVerifyEnterCode =>
      'Introduïu el codi de 4 dígits del vostre correu electrònic.';

  @override
  String get snackVerifyInvalid =>
      'Codi no vàlid o caducat. Comproveu el correu electrònic i torneu-ho a provar.';

  @override
  String get snackVerifyResendFailed =>
      'No s\'ha pogut tornar a enviar el codi. Torna-ho a provar.';

  @override
  String get snackDownloadComplete => 'Descàrrega completa';

  @override
  String snackDownloadSaved(String filename) {
    return '\"<<PH0>>\" s\'ha desat a Baixades';
  }

  @override
  String get snackDownloadFailed => 'La baixada ha fallat';

  @override
  String get snackSaved => 'Desat';

  @override
  String get snackServerUrlUpdated =>
      'S\'ha actualitzat l\'URL del servidor. Reinicieu l\'aplicació per aplicar.';

  @override
  String get snackStoreError => 'Error de la botiga';

  @override
  String get snackMissingProducts => 'Falten productes';

  @override
  String get snackStoreUnavailable => 'Botiga no disponible';

  @override
  String get snackStoreUnavailableBody =>
      'Les compres des de l\'aplicació no estan disponibles en aquest dispositiu.';

  @override
  String get snackProductNotLoaded => 'El producte encara no s\'ha carregat.';

  @override
  String get snackRestoreStarted => 'S\'ha iniciat la restauració';

  @override
  String get snackRestoreStartedBody => 'Estem revisant les teves compres.';

  @override
  String get snackRestoreFailed => 'La restauració ha fallat';

  @override
  String get snackProcessing => 'Tramitació';

  @override
  String get snackPleaseWait => 'Si us plau, espereu...';

  @override
  String get snackSuccess => 'Èxit';

  @override
  String get snackPurchaseCompleted => 'Compra completada.';

  @override
  String get snackPurchaseError => 'Error de compra';

  @override
  String get snackPurchaseFailed => 'La compra ha fallat.';

  @override
  String get snackCanceled => 'Cancel·lat';

  @override
  String get snackPurchaseCanceled => 'Compra cancel·lada.';

  @override
  String get snackUpload => 'Carrega';

  @override
  String get snackVerify => 'Verificar';

  @override
  String get doNotExpire => 'No caduqui';

  @override
  String get hourSingular => 'hora';

  @override
  String get hourPlural => 'hores';

  @override
  String get daySingular => 'dia';

  @override
  String get dayPlural => 'dies';

  @override
  String get emailAddressLabel => 'ADREÇA DE CORREU ELECTRÒNIC';

  @override
  String get passwordLabelCaps => 'CONTRAsenya';

  @override
  String get confirmPasswordLabelCaps => 'CONFIRMAR LA CONTRAsenya';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ENLLAÇ DE TRANSFERÈNCIA O DNI';

  @override
  String get howToReceive => 'COM REBRE';

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
  String get planAdsTitle => 'Pla d\'anuncis';

  @override
  String get planAdsBullet1 => 'Accés a l\'aplicació gratuïta d\'anuncis';

  @override
  String get planAdsBullet2 => 'Elimina tots els anuncis';

  @override
  String get planProTitle => 'Pla Pro';

  @override
  String get planProBullet1 => 'Envia fitxers de fins a 20 GB';

  @override
  String get planProBullet2 => 'Pujada ràpida';

  @override
  String get planPremiumTitle => 'Pla Premium';

  @override
  String get planPremiumBullet1 => 'Envia fitxers de fins a 100 GB';

  @override
  String get planPremiumBullet2 => 'Pujada súper ràpida';

  @override
  String get planSubscriptionDisclaimer =>
      'No hi ha període de prova: cal subscriure\'s per utilitzar la funcionalitat addicional de l\'aplicació. Se us cobrarà immediatament. Pots cancel·lar-ho en qualsevol moment.';

  @override
  String get perMonth => '/mes';

  @override
  String get perYear => '/ any';

  @override
  String get snackConnectionProblem =>
      'Problema de connexió. Si us plau, torna-ho a provar.';

  @override
  String get networkTitle => 'Xarxa';

  @override
  String transferIdLabel(String id) {
    return 'ID: <<PH0>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Fitxers: <<PH0>> · <<PH1>> bytes';
  }

  @override
  String todayAt(String time) {
    return 'Avui · <<PH0>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'Ahir · <<PH0>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Fa <<PH0>>d · <<PH1>>';
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
    return '<<PH0>> / <<PH1>> • <<PH2>> a l\'esquerra';
  }

  @override
  String get loadingShort => 'S\'està carregant…';

  @override
  String get colorPaletteTitle => 'Paleta de colors';

  @override
  String get colorPaletteSectionBackgrounds => 'Fons (escala de tinta)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primària';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Vores i vidre';

  @override
  String get colorPaletteSectionSemantic => 'Semàntica';

  @override
  String get colorPaletteSectionLive => 'Tema en directe (actual)';

  @override
  String get colorPaletteActiveHint =>
      '★ = utilitzat activament a les pantalles';

  @override
  String get colorPaletteCopyHint =>
      'Premeu llargament qualsevol mostra per copiar el seu valor hexadecimal.';

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
  String get settingsAppBrand => 'Comparteix en gran\nArxius de vídeo';

  @override
  String get loginEmailPasswordPrompt =>
      'Introduïu el vostre correu electrònic i contrasenya per iniciar la sessió.';

  @override
  String get forgotPassword => 'Heu oblidat la contrasenya?';

  @override
  String get forgotPasswordTitle => 'Restableix la contrasenya';

  @override
  String get forgotPasswordBody =>
      'Introduïu el correu electrònic del vostre compte i us enviarem un codi de restabliment.';

  @override
  String get forgotPasswordSubmit => 'Envia el codi de restabliment';

  @override
  String get resetPasswordTitle => 'Crea una contrasenya nova';

  @override
  String get resetPasswordBody =>
      'Introduïu el codi de 6 dígits del vostre correu electrònic i trieu una nova contrasenya.';

  @override
  String get resetPasswordSubmit => 'Actualitza la contrasenya';

  @override
  String get snackPasswordResetSent => 'S\'ha enviat el codi de restabliment';

  @override
  String get snackPasswordResetSentBody =>
      'Comproveu el vostre correu electrònic per obtenir un codi de restabliment de 6 dígits.';

  @override
  String get snackPasswordResetFailed =>
      'No s\'ha pogut enviar el codi de restabliment. Torna-ho a provar.';

  @override
  String get snackPasswordUpdated => 'Contrasenya actualitzada';

  @override
  String get snackPasswordUpdatedBody =>
      'Inicieu la sessió amb la vostra nova contrasenya.';

  @override
  String get snackPasswordResetInvalid =>
      'Codi de restabliment no vàlid o caducat.';

  @override
  String get otpDigitLabel => 'CODI DE 6 DIGITS';

  @override
  String receiveMoreFiles(int count) {
    return '+<<PH0>> més fitxers';
  }
}
