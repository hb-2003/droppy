// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Compartilhe arquivos de vídeo grandes';

  @override
  String get heroAccent => 'imediatamente.';

  @override
  String get heroTitle => 'Envie arquivos pesados';

  @override
  String get splashLoading => 'Carregando…';

  @override
  String get navSend => 'Painel';

  @override
  String get navHome => 'Lar';

  @override
  String get navHistory => 'História';

  @override
  String get navReceive => 'Receber';

  @override
  String get navPlans => 'Planos';

  @override
  String get navDownload => 'Download';

  @override
  String get navSettings => 'Configurações';

  @override
  String get modeLink => 'Obtenha um link';

  @override
  String get modeEmail => 'Enviar por e-mail';

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
  String get pickFiles => 'Escolha os arquivos';

  @override
  String get pickFolder => 'Escolha a pasta';

  @override
  String get emailFrom => 'Seu e-mail';

  @override
  String get mailFromUsesAccount => 'Usa seu e-mail conectado.';

  @override
  String get recipientEmailsHelper =>
      'Vários destinatários: separe com vírgulas, ponto e vírgula ou espaços.';

  @override
  String get emailTo => 'E-mail do destinatário';

  @override
  String get messageOptional => 'Mensagem (opcional)';

  @override
  String get passwordOptional => 'Senha (opcional)';

  @override
  String get destructAfterDownload => 'Excluir após download';

  @override
  String get destructNo => 'Mantenha-se disponível';

  @override
  String get sendButton => 'Enviar';

  @override
  String get uploading => 'Fazendo upload…';

  @override
  String get uploadComplete => 'Feito';

  @override
  String get shareLinkTitle => 'Seu link';

  @override
  String get copyLink => 'Copiar link';

  @override
  String get share => 'Compartilhar';

  @override
  String get shareQrCode => 'Compartilhar código QR';

  @override
  String get uploadMore => 'Envie outro';

  @override
  String get emailSentTitle => 'E-mails enviados';

  @override
  String get verifyEmailTitle => 'Verifique seu e-mail';

  @override
  String get verifyCodeHint => 'Digite o código do seu e-mail';

  @override
  String get verifySubmit => 'Verificar';

  @override
  String get verifyResendCode => 'Reenviar código';

  @override
  String get verifyCodeSent =>
      'Um novo código de verificação foi enviado para seu e-mail.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'O e-mail de verificação pode não ter sido enviado';

  @override
  String get verifyEmailSmtpWarningBody =>
      'O servidor não pôde confirmar a entrega (muitas vezes o SMTP está configurado incorretamente). Peça ao administrador do site para verificar as configurações do Mail no painel de administração e toque em Reenviar código.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Se não chegar: verifique Lixo/Spam e Promoções, espere um minuto, confirme que $email não contém erros de digitação e toque em Reenviar.';
  }

  @override
  String get loginTitle => 'Entrar';

  @override
  String get signupHint => 'Use o e-mail e a senha da sua conta do site.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Senha';

  @override
  String get cancel => 'Cancelar';

  @override
  String get signIn => 'Entrar';

  @override
  String get downloadIdHint => 'ID de transferência';

  @override
  String get privateIdHint => 'ID privado (opcional)';

  @override
  String get fetchTransfer => 'Transferência aberta';

  @override
  String get downloadFile => 'Download';

  @override
  String get unlockDownload => 'Desbloquear download';

  @override
  String get downloadSaved => 'Salvo em downloads';

  @override
  String get errorGeneric => 'Algo deu errado';

  @override
  String get errorNetwork => 'Erro de rede';

  @override
  String get errorBadResponse => 'Resposta inesperada do servidor';

  @override
  String get termsAccept => 'Eu concordo com os termos';

  @override
  String get settingsApiUrl => 'URL do site público';

  @override
  String get settingsAccount => 'Conta';

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Escuro';

  @override
  String get settingsSignedIn => 'Você está conectado.';

  @override
  String get settingsSignedOut => 'Você não está conectado.';

  @override
  String get settingsOpenWebsite => 'Abrir site';

  @override
  String get signUp => 'Inscrever-se';

  @override
  String get settingsLinks => 'Ligações';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get termsOfService => 'Termos de serviço';

  @override
  String get about => 'Sobre';

  @override
  String get moreApps => 'Mais aplicativos';

  @override
  String get settingsLanguage => 'Linguagem';

  @override
  String get languageEnglish => 'Inglês';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Sair';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get deleteAccountConfirmTitle => 'Excluir sua conta?';

  @override
  String get deleteAccountConfirmBody =>
      'Isso exclui permanentemente sua conta e desconecta você. Seus links de transferência continuarão funcionando, mas não aparecerão mais no seu histórico.';

  @override
  String get deleteAccountSuccess => 'Conta excluída';

  @override
  String get deleteAccountSuccessBody => 'Sua conta foi removida.';

  @override
  String get deleteAccountFailed => 'Não foi possível excluir a conta';

  @override
  String get deleteAccountFailedBody =>
      'Tente novamente ou entre em contato com o suporte.';

  @override
  String get maxFilesReached => 'Muitos arquivos';

  @override
  String get fileTooLarge => 'Arquivo muito grande';

  @override
  String get ipLimit => 'Muitos uploads desta rede';

  @override
  String get fillFields => 'Por favor preencha os campos obrigatórios';

  @override
  String get invalidEmail => 'E-mail inválido';

  @override
  String get maxRecipientsReached => 'Muitos destinatários';

  @override
  String get loginRequiredTitle => 'É necessário fazer login';

  @override
  String get loginRequiredBody =>
      'Este servidor requer uma conta para fazer upload ou download.';

  @override
  String get settingsSubtitle => 'Preferências e conta do aplicativo.';

  @override
  String get dropHeavyFile => 'Solte um arquivo pesado aqui.';

  @override
  String upToTotal(String max) {
    return 'Até $max total';
  }

  @override
  String get removeAll => 'Remover tudo';

  @override
  String get addFiles => 'Adicionar arquivos';

  @override
  String get adding => 'Adicionando…';

  @override
  String get options => 'Opções';

  @override
  String get selfDestruct => 'Autodestruição após download';

  @override
  String get expiry => 'Termo';

  @override
  String get cancelUpload => 'Cancelar upload';

  @override
  String get transferReady => 'Transferência pronta!';

  @override
  String get emailSentReady => 'E-mail enviado!';

  @override
  String get shareRecipientHint =>
      'Compartilhe este link com seu destinatário.';

  @override
  String get emailSentBody => 'Notificamos seu(s) destinatário(s).';

  @override
  String get scanQr => 'Digitalize para abrir o link de transferência.';

  @override
  String get shareLinkButton => 'COMPARTILHAR LINK';

  @override
  String get verifyFourDigit =>
      'Digite o código de 4 dígitos enviado para o e-mail do remetente.';

  @override
  String get starting => 'Começando…';

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
  String get fillField => 'Por favor preencha este campo.';

  @override
  String get enterValidEmail => 'Insira um e-mail válido.';

  @override
  String get message => 'Mensagem';

  @override
  String get recipientEmail => 'E-mail do destinatário';

  @override
  String get active => 'Ativo';

  @override
  String get expired => 'Expirado';

  @override
  String get historyTitle => 'Minhas transferências';

  @override
  String get signInToSeeTransfers => 'Faça login para ver suas transferências';

  @override
  String get signInTransfersBody =>
      'Usamos seu e-mail para vincular transferências à sua conta – não é necessária senha.';

  @override
  String get couldNotLoadTransfers =>
      'Não foi possível carregar as transferências';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get noTransfersYet => 'Ainda não há transferências';

  @override
  String get noTransfersBody =>
      'Depois de enviar um arquivo, ele aparecerá aqui.';

  @override
  String get transferDetails => 'Detalhes da transferência';

  @override
  String get filesSection => 'Arquivos';

  @override
  String get receiveTitle => 'Receber arquivos';

  @override
  String get receiveSubtitle =>
      'Cole um link de transferência para baixar os arquivos.';

  @override
  String get pasteTooltip => 'Colar';

  @override
  String get findTransfer => 'Encontrar transferência';

  @override
  String get receiveScanQr => 'Digitalize QR';

  @override
  String get receiveScanQrTitle => 'QR de transferência de digitalização';

  @override
  String get receiveScanQrHint => 'Alinhe o código QR dentro da moldura.';

  @override
  String get receiveScanQrInvalid =>
      'Este código QR não é um link de transferência válido.';

  @override
  String get receiveScanQrCameraDenied =>
      'O acesso à câmera é necessário para digitalizar códigos QR.';

  @override
  String get receiveStepGetLink => 'Obtenha o link';

  @override
  String get receiveStepGetLinkBody =>
      'Peça ao remetente para compartilhar o link de transferência com você.';

  @override
  String get receiveStepPaste => 'Colar e encontrar';

  @override
  String get receiveStepPasteBody =>
      'Cole o link acima e toque em “Encontrar transferência”.';

  @override
  String get receiveStepDownload => 'Baixar arquivos';

  @override
  String get receiveStepDownloadBody =>
      'Veja detalhes do arquivo e baixe tudo de uma vez.';

  @override
  String get lookingUpTransfer => 'Procurando transferência…';

  @override
  String get transferNotFound =>
      'Transferência não encontrada. Verifique o link e tente novamente.';

  @override
  String get transferExpired =>
      'Esta transferência expirou e não está mais disponível.';

  @override
  String get transferLoginRequired =>
      'É necessário fazer login para acessar esta transferência.';

  @override
  String get transferBadResponse =>
      'Resposta inesperada do servidor. Verifique sua conexão.';

  @override
  String get transferNetworkError =>
      'Erro de rede. Verifique sua conexão com a Internet.';

  @override
  String transferLoadFailed(String error) {
    return 'Não foi possível carregar a transferência: $error';
  }

  @override
  String get passwordProtected => 'Protegido por senha';

  @override
  String get enterPassword => 'Digite a senha';

  @override
  String get unlock => 'Desbloquear';

  @override
  String get downloading => 'Baixando…';

  @override
  String get downloadAllFiles => 'Baixe todos os arquivos';

  @override
  String get downloadSingleFile => 'Baixar arquivo';

  @override
  String get receiveAnother => 'Receber outra transferência';

  @override
  String get plansTitle => 'Planos';

  @override
  String get plansSubtitle =>
      'Atualize para remover anúncios e enviar arquivos maiores.';

  @override
  String get storeUnavailable => 'Loja indisponível';

  @override
  String get storeUnavailableBody =>
      'As compras no aplicativo não estão disponíveis no momento.';

  @override
  String get storeLoadingPrices => 'Carregando preços da App Store…';

  @override
  String get storePricesUnavailable => 'Preços indisponíveis';

  @override
  String get storePricesPartial => 'Não foi possível carregar alguns preços';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded de produtos de assinatura $total carregados.';
  }

  @override
  String get storeSetupHint =>
      'Teste em um iPhone real (não no simulador), use um ID Apple Sandbox e certifique-se de que todas as 6 assinaturas sejam criadas sob o ID do pacote deste aplicativo no App Store Connect com preço definido.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mês';
  }

  @override
  String get freeVersionAds =>
      'Atualmente você está usando nossa versão gratuita com anúncios';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get plansContinue => 'Continuar';

  @override
  String get planLinkRestore => 'Restaurar';

  @override
  String get termsAndConditions => 'Termos e Condições';

  @override
  String get createAccountTitle => 'Criar uma conta';

  @override
  String get signUpSubtitle => 'Cadastre-se com e-mail e senha.';

  @override
  String get confirmPassword => 'Confirme sua senha';

  @override
  String get passwordMin8 => 'Senha (mín. 8 caracteres)';

  @override
  String get alreadyHaveAccount => 'Já tem uma conta?';

  @override
  String get checkEmailTitle => 'Verifique o seu\ne-mail';

  @override
  String otpSentTo(String email) {
    return 'Enviamos um código de 6 dígitos para\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifique e faça login';

  @override
  String get didntReceiveCode => 'Não recebeu?';

  @override
  String get tryAgain => 'Tente novamente';

  @override
  String get otpExpiresHint =>
      'O código expira em 5 minutos. Verifique sua pasta de spam se não a encontrar.';

  @override
  String get snackError => 'Erro';

  @override
  String get snackCopied => 'Copiado';

  @override
  String get snackCopiedBody => 'Link copiado para a área de transferência';

  @override
  String get snackWelcome => 'Bem-vindo';

  @override
  String get snackAccountCreated => 'Conta criada';

  @override
  String get snackEnterEmail => 'Por favor insira seu e-mail';

  @override
  String get snackEnterPassword => 'Por favor digite sua senha';

  @override
  String get snackInvalidEmail => 'Endereço de e-mail inválido';

  @override
  String get snackInvalidCredentials => 'E-mail ou senha incorretos';

  @override
  String get snackPasswordMin8 => 'A senha deve ter pelo menos 8 caracteres';

  @override
  String get snackPasswordMismatch => 'As senhas não coincidem.';

  @override
  String get snackAccountExists => 'A conta já existe. Faça login.';

  @override
  String get snackSignupFailed =>
      'Não foi possível criar a conta. Tente novamente.';

  @override
  String get snackEnterOtp => 'Por favor insira o código de 6 dígitos';

  @override
  String get snackOtpExpired => 'Código expirou';

  @override
  String get snackOtpExpiredBody => 'Solicite um novo código.';

  @override
  String get snackInvalidCode => 'Código inválido';

  @override
  String get snackInvalidCodeBody =>
      'O código está incorreto. Por favor, tente novamente.';

  @override
  String get snackSendCodeFailed =>
      'Não foi possível enviar o código. Verifique sua conexão e tente novamente.';

  @override
  String get snackEmptyFolder => 'Pasta vazia';

  @override
  String get snackEmptyFolderBody =>
      'Nenhum arquivo encontrado na pasta selecionada.';

  @override
  String get snackFolderUnsupported => 'Não compatível';

  @override
  String get snackFolderUnsupportedBody =>
      'O upload de pasta não está disponível nesta plataforma.';

  @override
  String get snackFolderReadError =>
      'Não foi possível ler a pasta selecionada.';

  @override
  String get snackLimitReached => 'Limite atingido';

  @override
  String get snackLimitFilesBody =>
      'Alguns arquivos não foram adicionados devido ao tamanho ou aos limites de contagem de arquivos.';

  @override
  String get snackFreePlanLimit =>
      'O plano gratuito permite até 5 GB por transferência. Remova alguns arquivos ou atualize.';

  @override
  String get snackSignInEmail => 'Faça login para enviar por e-mail.';

  @override
  String get snackUploadStartFailed => 'Não foi possível iniciar o upload.';

  @override
  String get snackVerifyEnterCode =>
      'Digite o código de 4 dígitos do seu e-mail.';

  @override
  String get snackVerifyInvalid =>
      'Código inválido ou expirado. Verifique o e-mail e tente novamente.';

  @override
  String get snackVerifyResendFailed =>
      'Não foi possível reenviar o código. Tente novamente.';

  @override
  String get snackDownloadComplete => 'Download concluído';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" salvo em Downloads';
  }

  @override
  String get snackDownloadFailed => 'Falha no download';

  @override
  String get snackSaved => 'Salvo';

  @override
  String get snackServerUrlUpdated =>
      'URL do servidor atualizado. Reinicie o aplicativo para aplicar.';

  @override
  String get snackStoreError => 'Erro de armazenamento';

  @override
  String get snackMissingProducts => 'Produtos ausentes';

  @override
  String get snackStoreUnavailable => 'Loja indisponível';

  @override
  String get snackStoreUnavailableBody =>
      'As compras no aplicativo não estão disponíveis neste dispositivo.';

  @override
  String get snackProductNotLoaded => 'O produto ainda não foi carregado.';

  @override
  String get snackRestoreStarted => 'Restauração iniciada';

  @override
  String get snackRestoreStartedBody => 'Estamos verificando suas compras.';

  @override
  String get snackRestoreFailed => 'Falha na restauração';

  @override
  String get snackProcessing => 'Processamento';

  @override
  String get snackPleaseWait => 'Por favor, aguarde…';

  @override
  String get snackSuccess => 'Sucesso';

  @override
  String get snackPurchaseCompleted => 'Compra concluída.';

  @override
  String get snackPurchaseError => 'Erro de compra';

  @override
  String get snackPurchaseFailed => 'A compra falhou.';

  @override
  String get snackCanceled => 'Cancelado';

  @override
  String get snackPurchaseCanceled => 'Compra cancelada.';

  @override
  String get snackUpload => 'Carregar';

  @override
  String get snackVerify => 'Verificar';

  @override
  String get doNotExpire => 'Não expire';

  @override
  String get hourSingular => 'hora';

  @override
  String get hourPlural => 'horas';

  @override
  String get daySingular => 'dia';

  @override
  String get dayPlural => 'dias';

  @override
  String get emailAddressLabel => 'ENDEREÇO ​​DE EMAIL';

  @override
  String get passwordLabelCaps => 'SENHA';

  @override
  String get confirmPasswordLabelCaps => 'CONFIRME SUA SENHA';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LINK DE TRANSFERÊNCIA OU ID';

  @override
  String get howToReceive => 'COMO RECEBER';

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
  String get planAdsTitle => 'Plano de anúncios';

  @override
  String get planAdsBullet1 => 'Acesso ao aplicativo gratuito de anúncios';

  @override
  String get planAdsBullet2 => 'Remover todos os anúncios';

  @override
  String get planProTitle => 'Plano Profissional';

  @override
  String get planProBullet1 => 'Envie arquivos de até 20 GB';

  @override
  String get planProBullet2 => 'Carregamento rápido';

  @override
  String get planPremiumTitle => 'Plano Premium';

  @override
  String get planPremiumBullet1 => 'Envie arquivos de até 100 GB';

  @override
  String get planPremiumBullet2 => 'Carregamento super rápido';

  @override
  String get planSubscriptionDisclaimer =>
      'Sem período de teste – é necessária assinatura para usar a funcionalidade adicional do aplicativo. Você será cobrado imediatamente. Você pode cancelar a qualquer momento.';

  @override
  String get perMonth => '/ mês';

  @override
  String get perYear => '/ ano';

  @override
  String get snackConnectionProblem =>
      'Problema de conexão. Por favor, tente novamente.';

  @override
  String get networkTitle => 'Rede';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Arquivos: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Hoje · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Ontem · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d atrás · $time';
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
    return '$sent / $total • $remaining esquerda';
  }

  @override
  String get loadingShort => 'Carregando…';

  @override
  String get colorPaletteTitle => 'Paleta de cores';

  @override
  String get colorPaletteSectionBackgrounds =>
      'Planos de fundo (escala de tinta)';

  @override
  String get colorPaletteSectionAccent => 'Sotaque / Primário';

  @override
  String get colorPaletteSectionText => 'Texto';

  @override
  String get colorPaletteSectionBorders => 'Bordas e vidro';

  @override
  String get colorPaletteSectionSemantic => 'Semântica';

  @override
  String get colorPaletteSectionLive => 'Tema ao vivo (atual)';

  @override
  String get colorPaletteActiveHint => '★ = usado ativamente em telas';

  @override
  String get colorPaletteCopyHint =>
      'Mantenha qualquer amostra pressionada para copiar seu valor hexadecimal.';

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
  String get settingsAppBrand => 'Compartilhe grande\nArquivos de vídeo';

  @override
  String get loginEmailPasswordPrompt =>
      'Digite seu e-mail e senha para fazer login.';

  @override
  String get forgotPassword => 'Esqueceu sua senha?';

  @override
  String get forgotPasswordTitle => 'Redefinir senha';

  @override
  String get forgotPasswordBody =>
      'Digite o e-mail da sua conta e enviaremos um código de redefinição.';

  @override
  String get forgotPasswordSubmit => 'Enviar código de redefinição';

  @override
  String get resetPasswordTitle => 'Criar nova senha';

  @override
  String get resetPasswordBody =>
      'Digite o código de 6 dígitos do seu e-mail e escolha uma nova senha.';

  @override
  String get resetPasswordSubmit => 'Atualizar senha';

  @override
  String get snackPasswordResetSent => 'Código de redefinição enviado';

  @override
  String get snackPasswordResetSentBody =>
      'Verifique seu e-mail para obter um código de redefinição de 6 dígitos.';

  @override
  String get snackPasswordResetFailed =>
      'Não foi possível enviar o código de redefinição. Tente novamente.';

  @override
  String get snackPasswordUpdated => 'Senha atualizada';

  @override
  String get snackPasswordUpdatedBody => 'Faça login com sua nova senha.';

  @override
  String get snackPasswordResetInvalid =>
      'Código de redefinição inválido ou expirado.';

  @override
  String get otpDigitLabel => 'CÓDIGO DE 6 DÍGITOS';

  @override
  String receiveMoreFiles(int count) {
    return '+$count mais arquivos';
  }
}
