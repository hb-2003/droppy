// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Comparta archivos de vídeo grandes';

  @override
  String get heroAccent => 'instantáneamente.';

  @override
  String get heroTitle => 'Enviar archivos pesados';

  @override
  String get splashLoading => 'Cargando…';

  @override
  String get navSend => 'Panel';

  @override
  String get navHome => 'Hogar';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Recibir';

  @override
  String get navPlans => 'Planes';

  @override
  String get navDownload => 'Descargar';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get modeLink => 'Obtener un enlace';

  @override
  String get modeEmail => 'Enviar por correo electrónico';

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
  String get pickFiles => 'Elige archivos';

  @override
  String get pickFolder => 'Elige carpeta';

  @override
  String get emailFrom => 'Tu correo electrónico';

  @override
  String get mailFromUsesAccount => 'Utiliza su correo electrónico registrado.';

  @override
  String get recipientEmailsHelper =>
      'Múltiples destinatarios: sepárelos con comas, punto y coma o espacios.';

  @override
  String get emailTo => 'Correo electrónico del destinatario';

  @override
  String get messageOptional => 'Mensaje (opcional)';

  @override
  String get passwordOptional => 'Contraseña (opcional)';

  @override
  String get destructAfterDownload => 'Eliminar después de la descarga';

  @override
  String get destructNo => 'Mantener disponible';

  @override
  String get sendButton => 'Enviar';

  @override
  String get uploading => 'Subiendo…';

  @override
  String get uploadComplete => 'Hecho';

  @override
  String get shareLinkTitle => 'Tu enlace';

  @override
  String get copyLink => 'Copiar enlace';

  @override
  String get share => 'Compartir';

  @override
  String get shareQrCode => 'Compartir código QR';

  @override
  String get uploadMore => 'enviar otro';

  @override
  String get emailSentTitle => 'Correos electrónicos enviados';

  @override
  String get verifyEmailTitle => 'Verifica tu correo electrónico';

  @override
  String get verifyCodeHint => 'Introduce el código de tu correo electrónico';

  @override
  String get verifySubmit => 'Verificar';

  @override
  String get verifyResendCode => 'Reenviar código';

  @override
  String get verifyCodeSent =>
      'Se envió un nuevo código de verificación a su correo electrónico.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Es posible que el correo electrónico de verificación no se haya enviado';

  @override
  String get verifyEmailSmtpWarningBody =>
      'El servidor no pudo confirmar la entrega (a menudo SMTP está mal configurado). Pídale al administrador de su sitio que verifique la configuración de correo en el panel de administración y luego toque Reenviar código.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Si no llega: verifique Correo no deseado/Spam y Promociones, espere un minuto, confirme que $email no tenga errores tipográficos y luego toque Reenviar.';
  }

  @override
  String get loginTitle => 'Iniciar sesión';

  @override
  String get signupHint =>
      'Utilice el correo electrónico y la contraseña de su cuenta del sitio.';

  @override
  String get emailHint => 'Correo electrónico';

  @override
  String get passwordHint => 'Contraseña';

  @override
  String get cancel => 'Cancelar';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get downloadIdHint => 'ID de transferencia';

  @override
  String get privateIdHint => 'Identificación privada (opcional)';

  @override
  String get fetchTransfer => 'transferencia abierta';

  @override
  String get downloadFile => 'Descargar';

  @override
  String get unlockDownload => 'Desbloquear descarga';

  @override
  String get downloadSaved => 'Guardado en Descargas';

  @override
  String get errorGeneric => 'algo salió mal';

  @override
  String get errorNetwork => 'error de red';

  @override
  String get errorBadResponse => 'Respuesta inesperada del servidor';

  @override
  String get termsAccept => 'Acepto los términos';

  @override
  String get settingsApiUrl => 'URL del sitio público';

  @override
  String get settingsAccount => 'Cuenta';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get settingsSignedIn => 'Has iniciado sesión.';

  @override
  String get settingsSignedOut => 'No has iniciado sesión.';

  @override
  String get settingsOpenWebsite => 'Abrir sitio web';

  @override
  String get signUp => 'Inscribirse';

  @override
  String get settingsLinks => 'Campo de golf';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get termsOfService => 'Términos de servicio';

  @override
  String get about => 'Acerca de';

  @override
  String get moreApps => 'Más aplicaciones';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Finalizar la sesión';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirmTitle => '¿Eliminar tu cuenta?';

  @override
  String get deleteAccountConfirmBody =>
      'Esto elimina permanentemente su cuenta y cierra su sesión. Tus enlaces de transferencia seguirán funcionando, pero ya no aparecerán en tu historial.';

  @override
  String get deleteAccountSuccess => 'Cuenta eliminada';

  @override
  String get deleteAccountSuccessBody => 'Su cuenta ha sido eliminada.';

  @override
  String get deleteAccountFailed => 'No se pudo eliminar la cuenta';

  @override
  String get deleteAccountFailedBody =>
      'Inténtelo de nuevo o comuníquese con el soporte.';

  @override
  String get maxFilesReached => 'Demasiados archivos';

  @override
  String get fileTooLarge => 'Archivo demasiado grande';

  @override
  String get ipLimit => 'Demasiadas cargas desde esta red';

  @override
  String get fillFields => 'Por favor complete los campos requeridos';

  @override
  String get invalidEmail => 'Correo electrónico no válido';

  @override
  String get maxRecipientsReached => 'Demasiados destinatarios';

  @override
  String get loginRequiredTitle => 'Es necesario iniciar sesión';

  @override
  String get loginRequiredBody =>
      'Este servidor requiere una cuenta para cargar o descargar.';

  @override
  String get settingsSubtitle => 'Preferencias de la aplicación y cuenta.';

  @override
  String get dropHeavyFile => 'Suelte un archivo pesado aquí.';

  @override
  String upToTotal(String max) {
    return 'Hasta $max total';
  }

  @override
  String get removeAll => 'Quitar todo';

  @override
  String get addFiles => 'Agregar archivos';

  @override
  String get adding => 'Añadiendo…';

  @override
  String get options => 'Opciones';

  @override
  String get selfDestruct => 'Autodestrucción después de la descarga';

  @override
  String get expiry => 'Expiración';

  @override
  String get cancelUpload => 'Cancelar carga';

  @override
  String get transferReady => '¡Transferencia lista!';

  @override
  String get emailSentReady => 'Correo electrónico enviado!';

  @override
  String get shareRecipientHint => 'Comparte este enlace con tu destinatario.';

  @override
  String get emailSentBody => 'Hemos notificado a sus destinatarios.';

  @override
  String get scanQr => 'Escanee para abrir el enlace de transferencia.';

  @override
  String get shareLinkButton => 'COMPARTIR ENLACE';

  @override
  String get verifyFourDigit =>
      'Ingrese el código de 4 dígitos enviado a su correo electrónico de remitente.';

  @override
  String get starting => 'A partir de…';

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
  String get fillField => 'Por favor complete este campo.';

  @override
  String get enterValidEmail => 'Ingrese un correo electrónico válido.';

  @override
  String get message => 'Mensaje';

  @override
  String get recipientEmail => 'Correo electrónico del destinatario';

  @override
  String get active => 'Activo';

  @override
  String get expired => 'Venció';

  @override
  String get historyTitle => 'Mis Transferencias';

  @override
  String get signInToSeeTransfers =>
      'Inicia sesión para ver tus transferencias';

  @override
  String get signInTransfersBody =>
      'Usamos su correo electrónico para vincular transferencias a su cuenta, no se necesita contraseña.';

  @override
  String get couldNotLoadTransfers =>
      'No se pudieron cargar las transferencias';

  @override
  String get retry => 'Rever';

  @override
  String get noTransfersYet => 'Aún no hay transferencias';

  @override
  String get noTransfersBody => 'Una vez que envíe un archivo, aparecerá aquí.';

  @override
  String get transferDetails => 'Detalles de la transferencia';

  @override
  String get filesSection => 'Archivos';

  @override
  String get receiveTitle => 'Recibir archivos';

  @override
  String get receiveSubtitle =>
      'Pegue un enlace de transferencia para descargar archivos.';

  @override
  String get pasteTooltip => 'Pasta';

  @override
  String get findTransfer => 'Buscar transferencia';

  @override
  String get receiveScanQr => 'Escanear QR';

  @override
  String get receiveScanQrTitle => 'Escanear transferencia QR';

  @override
  String get receiveScanQrHint => 'Alinee el código QR dentro del marco.';

  @override
  String get receiveScanQrInvalid =>
      'Este código QR no es un enlace de transferencia válido.';

  @override
  String get receiveScanQrCameraDenied =>
      'Se requiere acceso a la cámara para escanear códigos QR.';

  @override
  String get receiveStepGetLink => 'Obtener el enlace';

  @override
  String get receiveStepGetLinkBody =>
      'Pídale al remitente que comparta el enlace de transferencia con usted.';

  @override
  String get receiveStepPaste => 'Pegar y buscar';

  @override
  String get receiveStepPasteBody =>
      'Pega el enlace de arriba y toca \"Buscar transferencia\".';

  @override
  String get receiveStepDownload => 'Descargar archivos';

  @override
  String get receiveStepDownloadBody =>
      'Vea los detalles del archivo y descárguelo todo a la vez.';

  @override
  String get lookingUpTransfer => 'Buscando transferencia…';

  @override
  String get transferNotFound =>
      'Transferencia no encontrada. Comprueba el enlace y vuelve a intentarlo.';

  @override
  String get transferExpired =>
      'Esta transferencia ha caducado y ya no está disponible.';

  @override
  String get transferLoginRequired =>
      'Es necesario iniciar sesión para acceder a esta transferencia.';

  @override
  String get transferBadResponse =>
      'Respuesta inesperada del servidor. Comprueba tu conexión.';

  @override
  String get transferNetworkError =>
      'Error de red. Verifique su conexión a Internet.';

  @override
  String transferLoadFailed(String error) {
    return 'No se pudo cargar la transferencia: $error';
  }

  @override
  String get passwordProtected => 'Protegido con contraseña';

  @override
  String get enterPassword => 'Introduce la contraseña';

  @override
  String get unlock => 'Descubrir';

  @override
  String get downloading => 'Descargando…';

  @override
  String get downloadAllFiles => 'Descargar todos los archivos';

  @override
  String get downloadSingleFile => 'Descargar archivo';

  @override
  String get receiveAnother => 'Recibir otra transferencia';

  @override
  String get plansTitle => 'Planes';

  @override
  String get plansSubtitle =>
      'Actualice para eliminar anuncios y enviar archivos más grandes.';

  @override
  String get storeUnavailable => 'Tienda no disponible';

  @override
  String get storeUnavailableBody =>
      'Las compras dentro de la aplicación no están disponibles en este momento.';

  @override
  String get storeLoadingPrices => 'Cargando precios desde App Store…';

  @override
  String get storePricesUnavailable => 'Precios no disponibles';

  @override
  String get storePricesPartial => 'Algunos precios no se pudieron cargar.';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded de $total productos de suscripción cargados.';
  }

  @override
  String get storeSetupHint =>
      'Pruebe en un iPhone real (no en un simulador), use una ID de Apple Sandbox y asegúrese de que las 6 suscripciones se creen con la ID del paquete de esta aplicación en App Store Connect con el precio establecido.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mes';
  }

  @override
  String get freeVersionAds =>
      'Actualmente estás utilizando nuestra versión gratuita con anuncios.';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get plansContinue => 'Continuar';

  @override
  String get planLinkRestore => 'Restaurar';

  @override
  String get termsAndConditions => 'Términos y condiciones';

  @override
  String get createAccountTitle => 'Crear una cuenta';

  @override
  String get signUpSubtitle =>
      'Regístrate con correo electrónico y contraseña.';

  @override
  String get confirmPassword => 'Confirmar Contraseña';

  @override
  String get passwordMin8 => 'Contraseña (mínimo 8 caracteres)';

  @override
  String get alreadyHaveAccount => '¿Ya tienes una cuenta?';

  @override
  String get checkEmailTitle => 'revisa tu\ncorreo electrónico';

  @override
  String otpSentTo(String email) {
    return 'Enviamos un código de 6 dígitos a\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verificar e iniciar sesión';

  @override
  String get didntReceiveCode => '¿No lo recibiste?';

  @override
  String get tryAgain => 'Intentar otra vez';

  @override
  String get otpExpiresHint =>
      'El código caduca en 5 minutos. Revisa tu carpeta de spam si no la ves.';

  @override
  String get snackError => 'Error';

  @override
  String get snackCopied => 'Copiado';

  @override
  String get snackCopiedBody => 'Enlace copiado al portapapeles';

  @override
  String get snackWelcome => 'Bienvenido';

  @override
  String get snackAccountCreated => 'Cuenta creada';

  @override
  String get snackEnterEmail => 'Por favor ingrese su correo electrónico';

  @override
  String get snackEnterPassword => 'Por favor ingrese su contraseña';

  @override
  String get snackInvalidEmail => 'Dirección de correo electrónico no válida';

  @override
  String get snackInvalidCredentials =>
      'Correo electrónico o contraseña incorrectos';

  @override
  String get snackPasswordMin8 =>
      'La contraseña debe tener al menos 8 caracteres.';

  @override
  String get snackPasswordMismatch => 'Las contraseñas no coinciden.';

  @override
  String get snackAccountExists =>
      'La cuenta ya existe. Por favor inicia sesión.';

  @override
  String get snackSignupFailed =>
      'No se pudo crear la cuenta. Intentar otra vez.';

  @override
  String get snackEnterOtp => 'Por favor ingresa el código de 6 dígitos';

  @override
  String get snackOtpExpired => 'Código caducado';

  @override
  String get snackOtpExpiredBody => 'Solicite un nuevo código.';

  @override
  String get snackInvalidCode => 'código no válido';

  @override
  String get snackInvalidCodeBody =>
      'El código es incorrecto. Por favor inténtalo de nuevo.';

  @override
  String get snackSendCodeFailed =>
      'No se pudo enviar el código. Comprueba tu conexión y vuelve a intentarlo.';

  @override
  String get snackEmptyFolder => 'carpeta vacia';

  @override
  String get snackEmptyFolderBody =>
      'No se encontraron archivos en la carpeta seleccionada.';

  @override
  String get snackFolderUnsupported => 'No compatible';

  @override
  String get snackFolderUnsupportedBody =>
      'La carga de carpetas no está disponible en esta plataforma.';

  @override
  String get snackFolderReadError => 'No se pudo leer la carpeta seleccionada.';

  @override
  String get snackLimitReached => 'Límite alcanzado';

  @override
  String get snackLimitFilesBody =>
      'Algunos archivos no se agregaron debido a límites de tamaño o número de archivos.';

  @override
  String get snackFreePlanLimit =>
      'El plan gratuito permite hasta 5 GB por transferencia. Elimine algunos archivos o actualice.';

  @override
  String get snackSignInEmail =>
      'Por favor inicia sesión para enviar por correo electrónico.';

  @override
  String get snackUploadStartFailed => 'No se pudo iniciar la carga.';

  @override
  String get snackVerifyEnterCode =>
      'Ingresa el código de 4 dígitos de tu correo electrónico.';

  @override
  String get snackVerifyInvalid =>
      'Código no válido o caducado. Revisa el correo electrónico y vuelve a intentarlo.';

  @override
  String get snackVerifyResendFailed =>
      'No se pudo reenviar el código. Intentar otra vez.';

  @override
  String get snackDownloadComplete => 'Descarga completa';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" guardado en Descargas';
  }

  @override
  String get snackDownloadFailed => 'Descarga fallida';

  @override
  String get snackSaved => 'Guardado';

  @override
  String get snackServerUrlUpdated =>
      'URL del servidor actualizada. Reinicie la aplicación para aplicar.';

  @override
  String get snackStoreError => 'error de tienda';

  @override
  String get snackMissingProducts => 'Productos faltantes';

  @override
  String get snackStoreUnavailable => 'Tienda no disponible';

  @override
  String get snackStoreUnavailableBody =>
      'Las compras dentro de la aplicación no están disponibles en este dispositivo.';

  @override
  String get snackProductNotLoaded => 'El producto aún no está cargado.';

  @override
  String get snackRestoreStarted => 'Restauración iniciada';

  @override
  String get snackRestoreStartedBody => 'Estamos revisando tus compras.';

  @override
  String get snackRestoreFailed => 'Restauración fallida';

  @override
  String get snackProcessing => 'Tratamiento';

  @override
  String get snackPleaseWait => 'Espere por favor…';

  @override
  String get snackSuccess => 'Éxito';

  @override
  String get snackPurchaseCompleted => 'Compra completada.';

  @override
  String get snackPurchaseError => 'error de compra';

  @override
  String get snackPurchaseFailed => 'Compra fallida.';

  @override
  String get snackCanceled => 'Cancelado';

  @override
  String get snackPurchaseCanceled => 'Compra cancelada.';

  @override
  String get snackUpload => 'Subir';

  @override
  String get snackVerify => 'Verificar';

  @override
  String get doNotExpire => 'no caducar';

  @override
  String get hourSingular => 'hora';

  @override
  String get hourPlural => 'horas';

  @override
  String get daySingular => 'día';

  @override
  String get dayPlural => 'días';

  @override
  String get emailAddressLabel => 'DIRECCIÓN DE CORREO ELECTRÓNICO';

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
  String get transferLinkOrId => 'ENLACE DE TRANSFERENCIA O ID';

  @override
  String get howToReceive => 'CÓMO RECIBIR';

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
  String get planAdsBullet1 => 'Acceso a la aplicación gratuita de anuncios.';

  @override
  String get planAdsBullet2 => 'Eliminar todos los anuncios';

  @override
  String get planProTitle => 'Plan profesional';

  @override
  String get planProBullet1 => 'Envía archivos de hasta 20 GB';

  @override
  String get planProBullet2 => 'Carga rápida';

  @override
  String get planPremiumTitle => 'Plan Premium';

  @override
  String get planPremiumBullet1 => 'Envía archivos de hasta 100 GB';

  @override
  String get planPremiumBullet2 => 'Subida súper rápida';

  @override
  String get planSubscriptionDisclaimer =>
      'Sin período de prueba: se requiere suscripción para utilizar la funcionalidad adicional de la aplicación. Se le cobrará inmediatamente. Puedes cancelar en cualquier momento.';

  @override
  String get perMonth => '/ mes';

  @override
  String get perYear => '/ año';

  @override
  String get snackConnectionProblem =>
      'Problema de conexión. Por favor inténtalo de nuevo.';

  @override
  String get networkTitle => 'Red';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Archivos: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Hoy · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Ayer · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}hace d · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '${amount}MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining izquierda';
  }

  @override
  String get loadingShort => 'Cargando…';

  @override
  String get colorPaletteTitle => 'Paleta de colores';

  @override
  String get colorPaletteSectionBackgrounds => 'Fondos (escala de tinta)';

  @override
  String get colorPaletteSectionAccent => 'Acento / Primaria';

  @override
  String get colorPaletteSectionText => 'Texto';

  @override
  String get colorPaletteSectionBorders => 'Bordes y vidrio';

  @override
  String get colorPaletteSectionSemantic => 'Semántico';

  @override
  String get colorPaletteSectionLive => 'Tema en vivo (actual)';

  @override
  String get colorPaletteActiveHint => '★ = utilizado activamente en pantallas';

  @override
  String get colorPaletteCopyHint =>
      'Mantenga presionada cualquier muestra para copiar su valor hexadecimal.';

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
  String get settingsAppBrand => 'Compartir grande\nArchivos de vídeo';

  @override
  String get loginEmailPasswordPrompt =>
      'Ingrese su correo electrónico y contraseña para iniciar sesión.';

  @override
  String get forgotPassword => '¿Has olvidado tu contraseña?';

  @override
  String get forgotPasswordTitle => 'Restablecer contraseña';

  @override
  String get forgotPasswordBody =>
      'Ingrese el correo electrónico de su cuenta y le enviaremos un código de reinicio.';

  @override
  String get forgotPasswordSubmit => 'Enviar código de reinicio';

  @override
  String get resetPasswordTitle => 'Crear nueva contraseña';

  @override
  String get resetPasswordBody =>
      'Ingresa el código de 6 dígitos de tu correo electrónico y elige una nueva contraseña.';

  @override
  String get resetPasswordSubmit => 'Actualizar contraseña';

  @override
  String get snackPasswordResetSent => 'Código de reinicio enviado';

  @override
  String get snackPasswordResetSentBody =>
      'Revise su correo electrónico para obtener un código de restablecimiento de 6 dígitos.';

  @override
  String get snackPasswordResetFailed =>
      'No se pudo enviar el código de reinicio. Intentar otra vez.';

  @override
  String get snackPasswordUpdated => 'Contraseña actualizada';

  @override
  String get snackPasswordUpdatedBody =>
      'Inicia sesión con tu nueva contraseña.';

  @override
  String get snackPasswordResetInvalid =>
      'Código de reinicio no válido o caducado.';

  @override
  String get otpDigitLabel => 'CÓDIGO DE 6 DÍGITOS';

  @override
  String receiveMoreFiles(int count) {
    return '+$count más archivos';
  }
}
