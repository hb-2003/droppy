// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Condividi file video di grandi dimensioni';

  @override
  String get heroAccent => 'immediatamente.';

  @override
  String get heroTitle => 'Invia file pesanti';

  @override
  String get splashLoading => 'Caricamento…';

  @override
  String get navSend => 'Pannello di controllo';

  @override
  String get navHome => 'Casa';

  @override
  String get navHistory => 'Storia';

  @override
  String get navReceive => 'Ricevere';

  @override
  String get navPlans => 'Piani';

  @override
  String get navDownload => 'Scaricamento';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get modeLink => 'Ottieni un collegamento';

  @override
  String get modeEmail => 'Invia tramite e-mail';

  @override
  String get pickFiles => 'Scegli i file';

  @override
  String get pickFolder => 'Scegli la cartella';

  @override
  String get emailFrom => 'La tua email';

  @override
  String get mailFromUsesAccount =>
      'Utilizza l\'e-mail con cui hai effettuato l\'accesso.';

  @override
  String get recipientEmailsHelper =>
      'Destinatari multipli: separarli con virgole, punto e virgola o spazi.';

  @override
  String get emailTo => 'E-mail del destinatario';

  @override
  String get messageOptional => 'Messaggio (facoltativo)';

  @override
  String get passwordOptional => 'Password (facoltativa)';

  @override
  String get destructAfterDownload => 'Elimina dopo il download';

  @override
  String get destructNo => 'Mantieniti disponibile';

  @override
  String get sendButton => 'Inviare';

  @override
  String get uploading => 'Caricamento…';

  @override
  String get uploadComplete => 'Fatto';

  @override
  String get shareLinkTitle => 'Il tuo collegamento';

  @override
  String get copyLink => 'Copia collegamento';

  @override
  String get share => 'Condividere';

  @override
  String get shareQrCode => 'Condividi il codice QR';

  @override
  String get uploadMore => 'Mandane un altro';

  @override
  String get emailSentTitle => 'E-mail inviate';

  @override
  String get verifyEmailTitle => 'Verifica la tua email';

  @override
  String get verifyCodeHint => 'Inserisci il codice dalla tua email';

  @override
  String get verifySubmit => 'Verificare';

  @override
  String get verifyResendCode => 'Invia nuovamente il codice';

  @override
  String get verifyCodeSent =>
      'Un nuovo codice di verifica è stato inviato alla tua email.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'L\'e-mail di verifica potrebbe non essere stata inviata';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Il server non è riuscito a confermare la consegna (spesso SMTP non è configurato correttamente). Chiedi all\'amministratore del tuo sito di controllare le impostazioni della posta nel pannello di amministrazione, quindi tocca Invia nuovamente il codice.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Se non arriva: controlla Posta indesiderata/Spam e Promozioni, attendi un minuto, conferma che $email non contiene errori di battitura, quindi tocca Invia di nuovo.';
  }

  @override
  String get loginTitle => 'Registrazione';

  @override
  String get signupHint =>
      'Utilizza l\'e-mail e la password dell\'account del tuo sito.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Password';

  @override
  String get cancel => 'Cancellare';

  @override
  String get signIn => 'Registrazione';

  @override
  String get downloadIdHint => 'Trasferimento ID';

  @override
  String get privateIdHint => 'ID privato (facoltativo)';

  @override
  String get fetchTransfer => 'Trasferimento aperto';

  @override
  String get downloadFile => 'Scaricamento';

  @override
  String get unlockDownload => 'Sblocca il download';

  @override
  String get downloadSaved => 'Salvato in Download';

  @override
  String get errorGeneric => 'Qualcosa è andato storto';

  @override
  String get errorNetwork => 'Errore di rete';

  @override
  String get errorBadResponse => 'Risposta del server imprevista';

  @override
  String get termsAccept => 'Accetto i termini';

  @override
  String get settingsApiUrl => 'URL del sito pubblico';

  @override
  String get settingsAccount => 'Account';

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Leggero';

  @override
  String get themeDark => 'Buio';

  @override
  String get settingsSignedIn => 'Hai effettuato l\'accesso.';

  @override
  String get settingsSignedOut => 'Non hai effettuato l\'accesso.';

  @override
  String get settingsOpenWebsite => 'Apri il sito web';

  @override
  String get signUp => 'Iscrizione';

  @override
  String get settingsLinks => 'Collegamenti';

  @override
  String get privacyPolicy => 'Politica sulla riservatezza';

  @override
  String get termsOfService => 'Termini di servizio';

  @override
  String get about => 'Di';

  @override
  String get moreApps => 'Altre app';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get languageEnglish => 'Inglese';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Esci';

  @override
  String get deleteAccount => 'Elimina account';

  @override
  String get deleteAccountConfirmTitle => 'Eliminare il tuo account?';

  @override
  String get deleteAccountConfirmBody =>
      'Questo eliminerà permanentemente il tuo account e ti disconnetterà. I tuoi link di trasferimento continueranno a funzionare, ma non verranno più visualizzati nella tua cronologia.';

  @override
  String get deleteAccountSuccess => 'Conto eliminato';

  @override
  String get deleteAccountSuccessBody => 'Il tuo account è stato rimosso.';

  @override
  String get deleteAccountFailed => 'Impossibile eliminare l\'account';

  @override
  String get deleteAccountFailedBody => 'Riprova o contatta l\'assistenza.';

  @override
  String get maxFilesReached => 'Troppi file';

  @override
  String get fileTooLarge => 'File troppo grande';

  @override
  String get ipLimit => 'Troppi caricamenti da questa rete';

  @override
  String get fillFields => 'Si prega di compilare i campi obbligatori';

  @override
  String get invalidEmail => 'E-mail non valida';

  @override
  String get maxRecipientsReached => 'Troppi destinatari';

  @override
  String get loginRequiredTitle => 'È richiesto l\'accesso';

  @override
  String get loginRequiredBody =>
      'Questo server richiede un account per caricare o scaricare.';

  @override
  String get settingsSubtitle => 'Preferenze e account dell\'app.';

  @override
  String get dropHeavyFile => 'Metti qui un file pesante.';

  @override
  String upToTotal(String max) {
    return 'Fino a $max totale';
  }

  @override
  String get removeAll => 'Rimuovi tutto';

  @override
  String get addFiles => 'Aggiungi file';

  @override
  String get adding => 'Aggiunta…';

  @override
  String get options => 'Opzioni';

  @override
  String get selfDestruct => 'Autodistruzione dopo il download';

  @override
  String get expiry => 'Scadenza';

  @override
  String get cancelUpload => 'Annulla caricamento';

  @override
  String get transferReady => 'Trasferimento pronto!';

  @override
  String get emailSentReady => 'E-mail inviata!';

  @override
  String get shareRecipientHint =>
      'Condividi questo collegamento con il tuo destinatario.';

  @override
  String get emailSentBody => 'Abbiamo avvisato i tuoi destinatari.';

  @override
  String get scanQr =>
      'Eseguire la scansione per aprire il collegamento di trasferimento.';

  @override
  String get shareLinkButton => 'CONDIVIDI LINK';

  @override
  String get verifyFourDigit =>
      'Inserisci il codice di 4 cifre inviato all\'e-mail del mittente.';

  @override
  String get starting => 'Di partenza…';

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
    return '$amount MB rimasti';
  }

  @override
  String get fillField => 'Si prega di compilare questo campo.';

  @override
  String get enterValidEmail => 'Inserisci un\'e-mail valida.';

  @override
  String get message => 'Messaggio';

  @override
  String get recipientEmail => 'E-mail del destinatario';

  @override
  String get active => 'Attivo';

  @override
  String get expired => 'Scaduto';

  @override
  String get historyTitle => 'I miei trasferimenti';

  @override
  String get signInToSeeTransfers => 'Accedi per vedere i tuoi trasferimenti';

  @override
  String get signInTransfersBody =>
      'Utilizziamo la tua email per collegare i trasferimenti al tuo account: non è necessaria alcuna password.';

  @override
  String get couldNotLoadTransfers => 'Impossibile caricare i trasferimenti';

  @override
  String get retry => 'Riprova';

  @override
  String get noTransfersYet => 'Nessun trasferimento ancora';

  @override
  String get noTransfersBody =>
      'Una volta inviato un file, verrà visualizzato qui.';

  @override
  String get transferDetails => 'Dettagli del trasferimento';

  @override
  String get filesSection => 'File';

  @override
  String get receiveTitle => 'Ricevi file';

  @override
  String get receiveSubtitle =>
      'Incolla un collegamento di trasferimento per scaricare i file.';

  @override
  String get pasteTooltip => 'Impasto';

  @override
  String get findTransfer => 'Trova Trasferimento';

  @override
  String get receiveScanQr => 'Scansione QR';

  @override
  String get receiveScanQrTitle => 'Scansiona il QR di trasferimento';

  @override
  String get receiveScanQrHint =>
      'Allinea il codice QR all\'interno della cornice.';

  @override
  String get receiveScanQrInvalid =>
      'Questo codice QR non è un collegamento di trasferimento valido.';

  @override
  String get receiveScanQrCameraDenied =>
      'Per scansionare i codici QR è necessario l\'accesso alla fotocamera.';

  @override
  String get receiveStepGetLink => 'Ottieni il collegamento';

  @override
  String get receiveStepGetLinkBody =>
      'Chiedi al mittente di condividere con te il link di trasferimento.';

  @override
  String get receiveStepPaste => 'Incolla e trova';

  @override
  String get receiveStepPasteBody =>
      'Incolla il link qui sopra e tocca \"Trova trasferimento\".';

  @override
  String get receiveStepDownload => 'Scarica file';

  @override
  String get receiveStepDownloadBody =>
      'Visualizza i dettagli del file e scarica tutto in una volta.';

  @override
  String get lookingUpTransfer => 'Ricerca del trasferimento…';

  @override
  String get transferNotFound =>
      'Trasferimento non trovato. Controlla il collegamento e riprova.';

  @override
  String get transferExpired =>
      'Questo trasferimento è scaduto e non è più disponibile.';

  @override
  String get transferLoginRequired =>
      'Per accedere a questo trasferimento è necessario effettuare l\'accesso.';

  @override
  String get transferBadResponse =>
      'Risposta del server imprevista. Controlla la tua connessione.';

  @override
  String get transferNetworkError =>
      'Errore di rete. Controlla la tua connessione Internet.';

  @override
  String transferLoadFailed(String error) {
    return 'Impossibile caricare il trasferimento: $error';
  }

  @override
  String get passwordProtected => 'Protetto da password';

  @override
  String get enterPassword => 'Inserisci la password';

  @override
  String get unlock => 'Sbloccare';

  @override
  String get downloading => 'Download in corso...';

  @override
  String get downloadAllFiles => 'Scarica tutti i file';

  @override
  String get downloadSingleFile => 'Scarica file';

  @override
  String get receiveAnother => 'Ricevi un altro trasferimento';

  @override
  String get plansTitle => 'Piani';

  @override
  String get plansSubtitle =>
      'Esegui l\'upgrade per rimuovere annunci e inviare file più grandi.';

  @override
  String get storeUnavailable => 'Negozio non disponibile';

  @override
  String get storeUnavailableBody =>
      'Gli acquisti in-app non sono disponibili al momento.';

  @override
  String get storeLoadingPrices => 'Caricamento dei prezzi dall\'App Store…';

  @override
  String get storePricesUnavailable => 'Prezzi non disponibili';

  @override
  String get storePricesPartial => 'Impossibile caricare alcuni prezzi';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded di $total prodotti in abbonamento caricati.';
  }

  @override
  String get storeSetupHint =>
      'Prova su un vero iPhone (non sul simulatore), utilizza un ID Apple Sandbox e assicurati che tutti e 6 gli abbonamenti vengano creati con l\'ID bundle di questa app nell\'App Store. Connettiti con i prezzi impostati.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mese';
  }

  @override
  String get freeVersionAds =>
      'Attualmente stai utilizzando la nostra versione gratuita con annunci';

  @override
  String get restorePurchases => 'Ripristina gli acquisti';

  @override
  String get plansContinue => 'Continuare';

  @override
  String get planLinkRestore => 'Ripristinare';

  @override
  String get termsAndConditions => 'Termini e Condizioni';

  @override
  String get createAccountTitle => 'Creare un account';

  @override
  String get signUpSubtitle => 'Iscriviti con email e password.';

  @override
  String get confirmPassword => 'Conferma password';

  @override
  String get passwordMin8 => 'Password (minimo 8 caratteri)';

  @override
  String get alreadyHaveAccount => 'Hai già un account?';

  @override
  String get checkEmailTitle => 'Controlla il tuo\ne-mail';

  @override
  String otpSentTo(String email) {
    return 'Abbiamo inviato un codice di 6 cifre a\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifica e accedi';

  @override
  String get didntReceiveCode => 'Non l\'hai ricevuto?';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get otpExpiresHint =>
      'Il codice scade tra 5 minuti. Controlla la cartella spam se non la vedi.';

  @override
  String get snackError => 'Errore';

  @override
  String get snackCopied => 'Copiato';

  @override
  String get snackCopiedBody => 'Link copiato negli appunti';

  @override
  String get snackWelcome => 'Benvenuto';

  @override
  String get snackAccountCreated => 'Conto creato';

  @override
  String get snackEnterEmail => 'Per favore inserisci la tua email';

  @override
  String get snackEnterPassword => 'Inserisci la tua password';

  @override
  String get snackInvalidEmail => 'Indirizzo e-mail non valido';

  @override
  String get snackInvalidCredentials => 'E-mail o password errati';

  @override
  String get snackPasswordMin8 =>
      'La password deve contenere almeno 8 caratteri';

  @override
  String get snackPasswordMismatch => 'Le password non corrispondono.';

  @override
  String get snackAccountExists => 'L\'account esiste già. Per favore accedi.';

  @override
  String get snackSignupFailed => 'Impossibile creare l\'account. Riprova.';

  @override
  String get snackEnterOtp => 'Inserisci il codice a 6 cifre';

  @override
  String get snackOtpExpired => 'Codice scaduto';

  @override
  String get snackOtpExpiredBody => 'Si prega di richiedere un nuovo codice.';

  @override
  String get snackInvalidCode => 'Codice non valido';

  @override
  String get snackInvalidCodeBody =>
      'Il codice non è corretto. Per favore riprova.';

  @override
  String get snackSendCodeFailed =>
      'Impossibile inviare il codice. Controlla la connessione e riprova.';

  @override
  String get snackEmptyFolder => 'Cartella vuota';

  @override
  String get snackEmptyFolderBody =>
      'Nessun file trovato nella cartella selezionata.';

  @override
  String get snackFolderUnsupported => 'Non supportato';

  @override
  String get snackFolderUnsupportedBody =>
      'Il caricamento delle cartelle non è disponibile su questa piattaforma.';

  @override
  String get snackFolderReadError =>
      'Impossibile leggere la cartella selezionata.';

  @override
  String get snackLimitReached => 'Limite raggiunto';

  @override
  String get snackLimitFilesBody =>
      'Alcuni file non sono stati aggiunti a causa delle dimensioni o dei limiti del numero di file.';

  @override
  String get snackFreePlanLimit =>
      'Il piano gratuito consente fino a 5 GB per trasferimento. Rimuovi alcuni file o esegui l\'aggiornamento.';

  @override
  String get snackSignInEmail =>
      'Effettua l\'accesso per inviare tramite e-mail.';

  @override
  String get snackUploadStartFailed => 'Impossibile avviare il caricamento.';

  @override
  String get snackVerifyEnterCode =>
      'Inserisci il codice di 4 cifre dalla tua email.';

  @override
  String get snackVerifyInvalid =>
      'Codice non valido o scaduto. Controlla l\'e-mail e riprova.';

  @override
  String get snackVerifyResendFailed =>
      'Impossibile inviare nuovamente il codice. Riprova.';

  @override
  String get snackDownloadComplete => 'Scaricamento completato';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" salvato in Download';
  }

  @override
  String get snackDownloadFailed => 'Download non riuscito';

  @override
  String get snackSaved => 'Salvato';

  @override
  String get snackServerUrlUpdated =>
      'URL del server aggiornato. Riavvia l\'app per applicare.';

  @override
  String get snackStoreError => 'Errore di memorizzazione';

  @override
  String get snackMissingProducts => 'Prodotti mancanti';

  @override
  String get snackStoreUnavailable => 'Negozio non disponibile';

  @override
  String get snackStoreUnavailableBody =>
      'Gli acquisti in-app non sono disponibili su questo dispositivo.';

  @override
  String get snackProductNotLoaded =>
      'Il prodotto non è stato ancora caricato.';

  @override
  String get snackRestoreStarted => 'Ripristino avviato';

  @override
  String get snackRestoreStartedBody => 'Stiamo controllando i tuoi acquisti.';

  @override
  String get snackRestoreFailed => 'Ripristino non riuscito';

  @override
  String get snackProcessing => 'Elaborazione';

  @override
  String get snackPleaseWait => 'Attendere prego…';

  @override
  String get snackSuccess => 'Successo';

  @override
  String get snackPurchaseCompleted => 'Acquisto completato.';

  @override
  String get snackPurchaseError => 'Errore di acquisto';

  @override
  String get snackPurchaseFailed => 'Acquisto fallito.';

  @override
  String get snackCanceled => 'Annullato';

  @override
  String get snackPurchaseCanceled => 'Acquisto annullato.';

  @override
  String get snackUpload => 'Caricamento';

  @override
  String get snackVerify => 'Verificare';

  @override
  String get doNotExpire => 'Non scadere';

  @override
  String get hourSingular => 'ora';

  @override
  String get hourPlural => 'ore';

  @override
  String get daySingular => 'giorno';

  @override
  String get dayPlural => 'giorni';

  @override
  String get emailAddressLabel => 'INDIRIZZO E-MAIL';

  @override
  String get passwordLabelCaps => 'PASSWORD';

  @override
  String get confirmPasswordLabelCaps => 'CONFERMA PASSWORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'TRASFERIMENTO LINK O ID';

  @override
  String get howToReceive => 'COME RICEVERE';

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
  String get planAdsTitle => 'Piano pubblicitario';

  @override
  String get planAdsBullet1 => 'Accesso all\'app senza annunci';

  @override
  String get planAdsBullet2 => 'Rimuovi tutti gli annunci';

  @override
  String get planProTitle => 'Piano Pro';

  @override
  String get planProBullet1 => 'Invia file fino a 20 GB';

  @override
  String get planProBullet2 => 'Caricamento veloce';

  @override
  String get planPremiumTitle => 'Piano Premium';

  @override
  String get planPremiumBullet1 => 'Invia file fino a 100 GB';

  @override
  String get planPremiumBullet2 => 'Caricamento super veloce';

  @override
  String get planSubscriptionDisclaimer =>
      'Nessun periodo di prova: per utilizzare le funzionalità aggiuntive dell\'app è necessario un abbonamento. Ti verrà addebitato immediatamente. Puoi annullare in qualsiasi momento.';

  @override
  String get perMonth => '/ mese';

  @override
  String get perYear => '/ anno';

  @override
  String get snackConnectionProblem =>
      'Problema di connessione. Per favore riprova.';

  @override
  String get networkTitle => 'Rete';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'File: $count · $size byte';
  }

  @override
  String todayAt(String time) {
    return 'Oggi · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Ieri · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d fa · $time';
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
    return '$sent / $total • $remaining a sinistra';
  }

  @override
  String get loadingShort => 'Caricamento…';

  @override
  String get colorPaletteTitle => 'Tavolozza dei colori';

  @override
  String get colorPaletteSectionBackgrounds =>
      'Sfondi (scala dell\'inchiostro)';

  @override
  String get colorPaletteSectionAccent => 'Accento/Primario';

  @override
  String get colorPaletteSectionText => 'Testo';

  @override
  String get colorPaletteSectionBorders => 'Bordi e vetro';

  @override
  String get colorPaletteSectionSemantic => 'Semantico';

  @override
  String get colorPaletteSectionLive => 'Tema dal vivo (attuale)';

  @override
  String get colorPaletteActiveHint =>
      '★ = utilizzato attivamente negli schermi';

  @override
  String get colorPaletteCopyHint =>
      'Premi a lungo qualsiasi campione per copiarne il valore esadecimale.';

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
  String get settingsAppBrand => 'Condividi in grande\nFile video';

  @override
  String get loginEmailPasswordPrompt =>
      'Inserisci la tua email e la password per accedere.';

  @override
  String get forgotPassword => 'Ha dimenticato la password?';

  @override
  String get forgotPasswordTitle => 'Reimposta la password';

  @override
  String get forgotPasswordBody =>
      'Inserisci l\'e-mail del tuo account e ti invieremo un codice di ripristino.';

  @override
  String get forgotPasswordSubmit => 'Invia il codice di ripristino';

  @override
  String get resetPasswordTitle => 'Crea una nuova password';

  @override
  String get resetPasswordBody =>
      'Inserisci il codice di 6 cifre dalla tua email e scegli una nuova password.';

  @override
  String get resetPasswordSubmit => 'Aggiorna password';

  @override
  String get snackPasswordResetSent => 'Codice di reset inviato';

  @override
  String get snackPasswordResetSentBody =>
      'Controlla la tua email per un codice di ripristino di 6 cifre.';

  @override
  String get snackPasswordResetFailed =>
      'Impossibile inviare il codice di ripristino. Riprova.';

  @override
  String get snackPasswordUpdated => 'Password aggiornata';

  @override
  String get snackPasswordUpdatedBody => 'Accedi con la tua nuova password.';

  @override
  String get snackPasswordResetInvalid =>
      'Codice di ripristino non valido o scaduto.';

  @override
  String get otpDigitLabel => 'CODICE A 6 CIFRE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count altri file';
  }
}
