// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Compartir ficheiros de vídeo grandes';

  @override
  String get heroAccent => 'ao instante.';

  @override
  String get heroTitle => 'Enviar ficheiros pesados';

  @override
  String get splashLoading => 'Cargando…';

  @override
  String get navSend => 'Panel de control';

  @override
  String get navHome => 'Casa';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Recibir';

  @override
  String get navPlans => 'Plans';

  @override
  String get navDownload => 'Descargar';

  @override
  String get navSettings => 'Configuración';

  @override
  String get modeLink => 'Obter unha ligazón';

  @override
  String get modeEmail => 'Enviar por correo electrónico';

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
  String get pickFiles => 'Escolle ficheiros';

  @override
  String get pickFolder => 'Escolla cartafol';

  @override
  String get emailFrom => 'O teu correo electrónico';

  @override
  String get mailFromUsesAccount =>
      'Usa o teu correo electrónico de inicio de sesión.';

  @override
  String get recipientEmailsHelper =>
      'Múltiples destinatarios: sepáranse con comas, punto e coma ou espazos.';

  @override
  String get emailTo => 'Correo electrónico do destinatario';

  @override
  String get messageOptional => 'Mensaxe (opcional)';

  @override
  String get passwordOptional => 'Contrasinal (opcional)';

  @override
  String get destructAfterDownload => 'Eliminar despois da descarga';

  @override
  String get destructNo => 'Mantéñase dispoñible';

  @override
  String get sendButton => 'Enviar';

  @override
  String get uploading => 'Cargando…';

  @override
  String get uploadComplete => 'Feito';

  @override
  String get shareLinkTitle => 'A túa ligazón';

  @override
  String get copyLink => 'Copiar ligazón';

  @override
  String get share => 'Compartir';

  @override
  String get shareQrCode => 'Compartir código QR';

  @override
  String get uploadMore => 'Envía outro';

  @override
  String get emailSentTitle => 'Correos electrónicos enviados';

  @override
  String get verifyEmailTitle => 'Verifica o teu correo electrónico';

  @override
  String get verifyCodeHint => 'Introduce o código do teu correo electrónico';

  @override
  String get verifySubmit => 'Verificar';

  @override
  String get verifyResendCode => 'Reenviar o código';

  @override
  String get verifyCodeSent =>
      'Enviouse un novo código de verificación ao teu correo electrónico.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'É posible que non se enviou o correo electrónico de verificación';

  @override
  String get verifyEmailSmtpWarningBody =>
      'O servidor non puido confirmar a entrega (moitas veces SMTP está mal configurado). Pídelle ao administrador do teu sitio que verifique a configuración do correo no panel de administración e, a continuación, toque Reenviar o código.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Se non chega: comproba Correo lixo/Spam e Promocións, agarda un minuto, confirma que $email non ten erros tipográficos e, a continuación, toca Reenviar.';
  }

  @override
  String get loginTitle => 'Inicia sesión';

  @override
  String get signupHint =>
      'Use o correo electrónico e o contrasinal da súa conta do sitio.';

  @override
  String get emailHint => 'Correo electrónico';

  @override
  String get passwordHint => 'Contrasinal';

  @override
  String get cancel => 'Cancelar';

  @override
  String get signIn => 'Inicia sesión';

  @override
  String get downloadIdHint => 'ID de transferencia';

  @override
  String get privateIdHint => 'Identificación privada (opcional)';

  @override
  String get fetchTransfer => 'Transferencia aberta';

  @override
  String get downloadFile => 'Descargar';

  @override
  String get unlockDownload => 'Desbloquear descarga';

  @override
  String get downloadSaved => 'Gardado en Descargas';

  @override
  String get errorGeneric => 'Algo saíu mal';

  @override
  String get errorNetwork => 'Erro de rede';

  @override
  String get errorBadResponse => 'Resposta do servidor inesperada';

  @override
  String get termsAccept => 'Acepto os termos';

  @override
  String get settingsApiUrl => 'URL do sitio público';

  @override
  String get settingsAccount => 'Conta';

  @override
  String get settingsAppearance => 'Aparición';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Escuro';

  @override
  String get settingsSignedIn => 'Iniciaches sesión.';

  @override
  String get settingsSignedOut => 'Non iniciaches sesión.';

  @override
  String get settingsOpenWebsite => 'Sitio web aberto';

  @override
  String get signUp => 'Rexístrate';

  @override
  String get settingsLinks => 'Ligazóns';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get termsOfService => 'Condicións do servizo';

  @override
  String get about => 'Sobre';

  @override
  String get moreApps => 'Máis aplicacións';

  @override
  String get settingsLanguage => 'Linguaxe';

  @override
  String get languageEnglish => 'inglés';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Pechar sesión';

  @override
  String get deleteAccount => 'Eliminar conta';

  @override
  String get deleteAccountConfirmTitle => 'Queres eliminar a túa conta?';

  @override
  String get deleteAccountConfirmBody =>
      'Isto eliminará a túa conta permanentemente e pechará sesión. As túas ligazóns de transferencia seguirán funcionando, pero xa non aparecerán no teu historial.';

  @override
  String get deleteAccountSuccess => 'Eliminouse a conta';

  @override
  String get deleteAccountSuccessBody => 'Eliminouse a túa conta.';

  @override
  String get deleteAccountFailed => 'Non se puido eliminar a conta';

  @override
  String get deleteAccountFailedBody =>
      'Téntao de novo ou ponte en contacto co servizo de asistencia.';

  @override
  String get maxFilesReached => 'Demasiados ficheiros';

  @override
  String get fileTooLarge => 'Ficheiro demasiado grande';

  @override
  String get ipLimit => 'Demasiadas cargas desta rede';

  @override
  String get fillFields => 'Encha os campos obrigatorios';

  @override
  String get invalidEmail => 'Correo electrónico non válido';

  @override
  String get maxRecipientsReached => 'Demasiados destinatarios';

  @override
  String get loginRequiredTitle => 'É necesario iniciar sesión';

  @override
  String get loginRequiredBody =>
      'Este servidor require unha conta para cargar ou descargar.';

  @override
  String get settingsSubtitle => 'Preferencias da aplicación e conta.';

  @override
  String get dropHeavyFile => 'Solta aquí un ficheiro pesado.';

  @override
  String upToTotal(String max) {
    return 'Ata $max total';
  }

  @override
  String get removeAll => 'Eliminar todo';

  @override
  String get addFiles => 'Engadir ficheiros';

  @override
  String get adding => 'Engadindo…';

  @override
  String get options => 'Opcións';

  @override
  String get selfDestruct => 'Autodestruír despois da descarga';

  @override
  String get expiry => 'Caducidade';

  @override
  String get cancelUpload => 'Cancelar a carga';

  @override
  String get transferReady => 'Transferencia lista!';

  @override
  String get emailSentReady => 'Correo electrónico enviado!';

  @override
  String get shareRecipientHint => 'Comparte esta ligazón co teu destinatario.';

  @override
  String get emailSentBody => 'Notificamos aos teus destinatarios.';

  @override
  String get scanQr => 'Escanear para abrir a ligazón de transferencia.';

  @override
  String get shareLinkButton => 'ENLACE COMPARTIR';

  @override
  String get verifyFourDigit =>
      'Introduce o código de 4 díxitos enviado ao correo electrónico do teu remitente.';

  @override
  String get starting => 'Comezando…';

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
    return '$amount MB restantes';
  }

  @override
  String get fillField => 'Enche este campo.';

  @override
  String get enterValidEmail => 'Introduce un correo electrónico válido.';

  @override
  String get message => 'Mensaxe';

  @override
  String get recipientEmail => 'Correo electrónico do destinatario';

  @override
  String get active => 'Activo';

  @override
  String get expired => 'Caducou';

  @override
  String get historyTitle => 'As miñas transferencias';

  @override
  String get signInToSeeTransfers =>
      'Inicia sesión para ver as túas transferencias';

  @override
  String get signInTransfersBody =>
      'Usamos o teu correo electrónico para vincular transferencias á túa conta, sen necesidade de contrasinal.';

  @override
  String get couldNotLoadTransfers =>
      'Non se puideron cargar as transferencias';

  @override
  String get retry => 'Volve tentar';

  @override
  String get noTransfersYet => 'Aínda non hai transferencias';

  @override
  String get noTransfersBody =>
      'Unha vez que envíe un ficheiro, aparecerá aquí.';

  @override
  String get transferDetails => 'Detalles da transferencia';

  @override
  String get filesSection => 'Arquivos';

  @override
  String get receiveTitle => 'Recibir arquivos';

  @override
  String get receiveSubtitle =>
      'Pega unha ligazón de transferencia para descargar ficheiros.';

  @override
  String get pasteTooltip => 'Pegar';

  @override
  String get findTransfer => 'Buscar Transfer';

  @override
  String get receiveScanQr => 'Escanear QR';

  @override
  String get receiveScanQrTitle => 'Escanear transferencia QR';

  @override
  String get receiveScanQrHint => 'Aliña o código QR dentro do marco.';

  @override
  String get receiveScanQrInvalid =>
      'Este código QR non é unha ligazón de transferencia válida.';

  @override
  String get receiveScanQrCameraDenied =>
      'Requírese acceso á cámara para escanear códigos QR.';

  @override
  String get receiveStepGetLink => 'Obter a ligazón';

  @override
  String get receiveStepGetLinkBody =>
      'Pídelle ao remitente que comparta a ligazón de transferencia contigo.';

  @override
  String get receiveStepPaste => 'Pegar e atopar';

  @override
  String get receiveStepPasteBody =>
      'Pega a ligazón anterior e toca \"Buscar transferencia\".';

  @override
  String get receiveStepDownload => 'Descargar ficheiros';

  @override
  String get receiveStepDownloadBody =>
      'Consulta os detalles do ficheiro e descarga todo á vez.';

  @override
  String get lookingUpTransfer => 'Buscando transferencia...';

  @override
  String get transferNotFound =>
      'Non se atopou a transferencia. Comproba a ligazón e téntao de novo.';

  @override
  String get transferExpired =>
      'Esta transferencia caducou e xa non está dispoñible.';

  @override
  String get transferLoginRequired =>
      'É necesario iniciar sesión para acceder a esta transferencia.';

  @override
  String get transferBadResponse =>
      'Resposta do servidor inesperada. Comproba a túa conexión.';

  @override
  String get transferNetworkError =>
      'Erro de rede. Comproba a túa conexión a internet.';

  @override
  String transferLoadFailed(String error) {
    return 'Non se puido cargar a transferencia: $error';
  }

  @override
  String get passwordProtected => 'Protexido por contrasinal';

  @override
  String get enterPassword => 'Introduza o contrasinal';

  @override
  String get unlock => 'Desbloquear';

  @override
  String get downloading => 'Descargando…';

  @override
  String get downloadAllFiles => 'Descarga todos os ficheiros';

  @override
  String get downloadSingleFile => 'Descargar ficheiro';

  @override
  String get receiveAnother => 'Recibir outra transferencia';

  @override
  String get plansTitle => 'Plans';

  @override
  String get plansSubtitle =>
      'Actualiza para eliminar anuncios e enviar ficheiros máis grandes.';

  @override
  String get storeUnavailable => 'Tenda non dispoñible';

  @override
  String get storeUnavailableBody =>
      'As compras integradas na aplicación non están dispoñibles neste momento.';

  @override
  String get storeLoadingPrices => 'Cargando prezos da App Store...';

  @override
  String get storePricesUnavailable => 'Prezos non dispoñibles';

  @override
  String get storePricesPartial => 'Non se puideron cargar algúns prezos';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded dos produtos de subscrición $total cargados.';
  }

  @override
  String get storeSetupHint =>
      'Proba nun iPhone real (non nun simulador), usa un ID de Apple Sandbox e asegúrate de que as 6 subscricións se creen baixo o ID do paquete desta aplicación en App Store Connect co prezo establecido.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mes';
  }

  @override
  String get freeVersionAds =>
      'Actualmente estás usando a nosa versión gratuíta con anuncios';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get plansContinue => 'Continuar';

  @override
  String get planLinkRestore => 'Restaurar';

  @override
  String get termsAndConditions => 'Termos e condicións';

  @override
  String get createAccountTitle => 'Crear conta';

  @override
  String get signUpSubtitle =>
      'Rexístrese con correo electrónico e contrasinal.';

  @override
  String get confirmPassword => 'Confirmar contrasinal';

  @override
  String get passwordMin8 => 'Contrasinal (mínimo 8 caracteres)';

  @override
  String get alreadyHaveAccount => 'Xa tes unha conta?';

  @override
  String get checkEmailTitle => 'Comproba o teu\ncorreo electrónico';

  @override
  String otpSentTo(String email) {
    return 'Enviamos un código de 6 díxitos a\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifica e inicia sesión';

  @override
  String get didntReceiveCode => 'Non o recibiu?';

  @override
  String get tryAgain => 'Téntao de novo';

  @override
  String get otpExpiresHint =>
      'O código caduca en 5 minutos. Comproba o teu cartafol de spam se non o ves.';

  @override
  String get snackError => 'Erro';

  @override
  String get snackCopied => 'Copiouse';

  @override
  String get snackCopiedBody => 'A ligazón copiouse no portapapeis';

  @override
  String get snackWelcome => 'Benvido';

  @override
  String get snackAccountCreated => 'Conta creada';

  @override
  String get snackEnterEmail => 'Introduce o teu correo electrónico';

  @override
  String get snackEnterPassword => 'Introduza o seu contrasinal';

  @override
  String get snackInvalidEmail => 'Enderezo de correo electrónico non válido';

  @override
  String get snackInvalidCredentials =>
      'Correo electrónico ou contrasinal incorrectos';

  @override
  String get snackPasswordMin8 =>
      'O contrasinal debe ter polo menos 8 caracteres';

  @override
  String get snackPasswordMismatch => 'Os contrasinais non coinciden.';

  @override
  String get snackAccountExists => 'A conta xa existe. Inicia sesión.';

  @override
  String get snackSignupFailed => 'Non se puido crear a conta. Téntao de novo.';

  @override
  String get snackEnterOtp => 'Introduce o código de 6 díxitos';

  @override
  String get snackOtpExpired => 'O código caducou';

  @override
  String get snackOtpExpiredBody => 'Solicita un novo código.';

  @override
  String get snackInvalidCode => 'Código non válido';

  @override
  String get snackInvalidCodeBody => 'O código é incorrecto. Téntao de novo.';

  @override
  String get snackSendCodeFailed =>
      'Non se puido enviar o código. Comproba a túa conexión e téntao de novo.';

  @override
  String get snackEmptyFolder => 'Cartafol baleiro';

  @override
  String get snackEmptyFolderBody =>
      'Non se atoparon ficheiros no cartafol seleccionado.';

  @override
  String get snackFolderUnsupported => 'Non é compatible';

  @override
  String get snackFolderUnsupportedBody =>
      'A carga de cartafoles non está dispoñible nesta plataforma.';

  @override
  String get snackFolderReadError =>
      'Non se puido ler o cartafol seleccionado.';

  @override
  String get snackLimitReached => 'Alcanzouse o límite';

  @override
  String get snackLimitFilesBody =>
      'Algúns ficheiros non se engadiron por mor dos límites de tamaño ou número de ficheiros.';

  @override
  String get snackFreePlanLimit =>
      'O plan gratuíto permite ata 5 GB por transferencia. Elimina algúns ficheiros ou actualiza.';

  @override
  String get snackSignInEmail =>
      'Inicia sesión para enviar por correo electrónico.';

  @override
  String get snackUploadStartFailed => 'Non se puido iniciar a carga.';

  @override
  String get snackVerifyEnterCode =>
      'Introduce o código de 4 díxitos do teu correo electrónico.';

  @override
  String get snackVerifyInvalid =>
      'Código non válido ou caducado. Comproba o correo electrónico e téntao de novo.';

  @override
  String get snackVerifyResendFailed =>
      'Non se puido reenviar o código. Téntao de novo.';

  @override
  String get snackDownloadComplete => 'Descarga completa';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" gardouse en Descargas';
  }

  @override
  String get snackDownloadFailed => 'Fallou a descarga';

  @override
  String get snackSaved => 'Gardado';

  @override
  String get snackServerUrlUpdated =>
      'URL do servidor actualizado. Reinicia a aplicación para aplicar.';

  @override
  String get snackStoreError => 'Erro de almacenamento';

  @override
  String get snackMissingProducts => 'Faltan produtos';

  @override
  String get snackStoreUnavailable => 'Tenda non dispoñible';

  @override
  String get snackStoreUnavailableBody =>
      'As compras integradas na aplicación non están dispoñibles neste dispositivo.';

  @override
  String get snackProductNotLoaded => 'O produto aínda non está cargado.';

  @override
  String get snackRestoreStarted => 'Comezou a restauración';

  @override
  String get snackRestoreStartedBody => 'Estamos comprobando as túas compras.';

  @override
  String get snackRestoreFailed => 'Fallou a restauración';

  @override
  String get snackProcessing => 'Procesamento';

  @override
  String get snackPleaseWait => 'Agarde…';

  @override
  String get snackSuccess => 'Éxito';

  @override
  String get snackPurchaseCompleted => 'Compra rematada.';

  @override
  String get snackPurchaseError => 'Erro de compra';

  @override
  String get snackPurchaseFailed => 'Produciuse un erro na compra.';

  @override
  String get snackCanceled => 'Cancelado';

  @override
  String get snackPurchaseCanceled => 'Compra cancelada.';

  @override
  String get snackUpload => 'Cargar';

  @override
  String get snackVerify => 'Verificar';

  @override
  String get doNotExpire => 'Non caduque';

  @override
  String get hourSingular => 'hora';

  @override
  String get hourPlural => 'horas';

  @override
  String get daySingular => 'día';

  @override
  String get dayPlural => 'días';

  @override
  String get emailAddressLabel => 'ENDEREZO DE CORREO ELECTRÓNICO';

  @override
  String get passwordLabelCaps => 'CONTRASEÑA';

  @override
  String get confirmPasswordLabelCaps => 'CONFIRMAR CONTRASEÑA';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ENLACE DE TRANSFERENCIA OU DNI';

  @override
  String get howToReceive => 'COMO RECIBIR';

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
  String get planAdsTitle => 'Plan de anuncios';

  @override
  String get planAdsBullet1 => 'Acceso á aplicación gratuíta de anuncios';

  @override
  String get planAdsBullet2 => 'Elimina todos os anuncios';

  @override
  String get planProTitle => 'Plan Pro';

  @override
  String get planProBullet1 => 'Envía ficheiros de ata 20 GB';

  @override
  String get planProBullet2 => 'Carga rápida';

  @override
  String get planPremiumTitle => 'Plan Premium';

  @override
  String get planPremiumBullet1 => 'Envía ficheiros de ata 100 GB';

  @override
  String get planPremiumBullet2 => 'Carga super rápida';

  @override
  String get planSubscriptionDisclaimer =>
      'Sen período de proba: é necesaria unha subscrición para usar a funcionalidade adicional da aplicación. Cobraráseche inmediatamente. Podes cancelar en calquera momento.';

  @override
  String get perMonth => '/mes';

  @override
  String get perYear => '/ano';

  @override
  String get snackConnectionProblem => 'Problema de conexión. Téntao de novo.';

  @override
  String get networkTitle => 'Rede';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Ficheiros: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Hoxe · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Onte · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Hai ${days}d · $time';
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
    return '$sent / $total • $remaining á esquerda';
  }

  @override
  String get loadingShort => 'Cargando…';

  @override
  String get colorPaletteTitle => 'Paleta de cores';

  @override
  String get colorPaletteSectionBackgrounds => 'Fondos (escala de tinta)';

  @override
  String get colorPaletteSectionAccent => 'Acento / Primaria';

  @override
  String get colorPaletteSectionText => 'Texto';

  @override
  String get colorPaletteSectionBorders => 'Bordes e Vidro';

  @override
  String get colorPaletteSectionSemantic => 'Semántica';

  @override
  String get colorPaletteSectionLive => 'Tema en directo (actual)';

  @override
  String get colorPaletteActiveHint => '★ = usado activamente nas pantallas';

  @override
  String get colorPaletteCopyHint =>
      'Mantén presionado calquera mostra para copiar o seu valor hexadecimal.';

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
  String get settingsAppBrand => 'Compartir en grande\nArquivos de vídeo';

  @override
  String get loginEmailPasswordPrompt =>
      'Introduce o teu correo electrónico e contrasinal para iniciar sesión.';

  @override
  String get forgotPassword => 'Esqueciches o contrasinal?';

  @override
  String get forgotPasswordTitle => 'Restablecer o contrasinal';

  @override
  String get forgotPasswordBody =>
      'Introduce o correo electrónico da túa conta e enviarémosche un código de restablecemento.';

  @override
  String get forgotPasswordSubmit => 'Enviar código de reinicio';

  @override
  String get resetPasswordTitle => 'Crea un novo contrasinal';

  @override
  String get resetPasswordBody =>
      'Introduce o código de 6 díxitos do teu correo electrónico e escolle un novo contrasinal.';

  @override
  String get resetPasswordSubmit => 'Actualizar contrasinal';

  @override
  String get snackPasswordResetSent => 'Enviouse o código de restablecemento';

  @override
  String get snackPasswordResetSentBody =>
      'Consulta o teu correo electrónico para ver un código de restablecemento de 6 díxitos.';

  @override
  String get snackPasswordResetFailed =>
      'Non se puido enviar o código de restablecemento. Téntao de novo.';

  @override
  String get snackPasswordUpdated => 'Contrasinal actualizado';

  @override
  String get snackPasswordUpdatedBody =>
      'Inicia sesión co teu novo contrasinal.';

  @override
  String get snackPasswordResetInvalid =>
      'Código de restablecemento non válido ou caducado.';

  @override
  String get otpDigitLabel => 'CÓDIGO DE 6 DÍXITOS';

  @override
  String receiveMoreFiles(int count) {
    return '+$count máis ficheiros';
  }
}
