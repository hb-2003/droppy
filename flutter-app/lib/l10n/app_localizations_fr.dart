// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Partager des fichiers vidéo volumineux';

  @override
  String get heroAccent => 'immédiatement.';

  @override
  String get heroTitle => 'Envoyer des fichiers lourds';

  @override
  String get splashLoading => 'Chargement…';

  @override
  String get navSend => 'Tableau de bord';

  @override
  String get navHome => 'Maison';

  @override
  String get navHistory => 'Histoire';

  @override
  String get navReceive => 'Recevoir';

  @override
  String get navPlans => 'Forfaits';

  @override
  String get navDownload => 'Télécharger';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get modeLink => 'Obtenez un lien';

  @override
  String get modeEmail => 'Envoyer par email';

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
  String get pickFiles => 'Choisir des fichiers';

  @override
  String get pickFolder => 'Choisir un dossier';

  @override
  String get emailFrom => 'Votre email';

  @override
  String get mailFromUsesAccount =>
      'Utilise votre adresse e-mail de connexion.';

  @override
  String get recipientEmailsHelper =>
      'Destinataires multiples : séparez-les par des virgules, des points-virgules ou des espaces.';

  @override
  String get emailTo => 'E-mail du destinataire';

  @override
  String get messageOptional => 'Message (facultatif)';

  @override
  String get passwordOptional => 'Mot de passe (facultatif)';

  @override
  String get destructAfterDownload => 'Supprimer après le téléchargement';

  @override
  String get destructNo => 'Rester disponible';

  @override
  String get sendButton => 'Envoyer';

  @override
  String get uploading => 'Téléchargement…';

  @override
  String get uploadComplete => 'Fait';

  @override
  String get shareLinkTitle => 'Votre lien';

  @override
  String get copyLink => 'Copier le lien';

  @override
  String get share => 'Partager';

  @override
  String get shareQrCode => 'Partager le code QR';

  @override
  String get uploadMore => 'En envoyer un autre';

  @override
  String get emailSentTitle => 'E-mails envoyés';

  @override
  String get verifyEmailTitle => 'Vérifiez votre email';

  @override
  String get verifyCodeHint => 'Entrez le code de votre email';

  @override
  String get verifySubmit => 'Vérifier';

  @override
  String get verifyResendCode => 'Renvoyer le code';

  @override
  String get verifyCodeSent =>
      'Un nouveau code de vérification a été envoyé à votre adresse e-mail.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'L\'e-mail de vérification n\'a peut-être pas été envoyé';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Le serveur n\'a pas pu confirmer la livraison (souvent SMTP est mal configuré). Demandez à l\'administrateur de votre site de vérifier les paramètres de messagerie dans le panneau d\'administration, puis appuyez sur Renvoyer le code.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'S\'il n\'arrive pas : vérifiez les courriers indésirables/spam et les promotions, attendez une minute, confirmez que << PH1>> n\'a pas de fautes de frappe, puis appuyez sur Renvoyer.';
  }

  @override
  String get loginTitle => 'Se connecter';

  @override
  String get signupHint =>
      'Utilisez l\'e-mail et le mot de passe de votre compte de site.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Mot de passe';

  @override
  String get cancel => 'Annuler';

  @override
  String get signIn => 'Se connecter';

  @override
  String get downloadIdHint => 'ID de transfert';

  @override
  String get privateIdHint => 'ID privé (facultatif)';

  @override
  String get fetchTransfer => 'Transfert ouvert';

  @override
  String get downloadFile => 'Télécharger';

  @override
  String get unlockDownload => 'Déverrouiller le téléchargement';

  @override
  String get downloadSaved => 'Enregistré dans les téléchargements';

  @override
  String get errorGeneric => 'Quelque chose s\'est mal passé';

  @override
  String get errorNetwork => 'Erreur réseau';

  @override
  String get errorBadResponse => 'Réponse inattendue du serveur';

  @override
  String get termsAccept => 'J\'accepte les conditions';

  @override
  String get settingsApiUrl => 'URL du site public';

  @override
  String get settingsAccount => 'Compte';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Lumière';

  @override
  String get themeDark => 'Sombre';

  @override
  String get settingsSignedIn => 'Vous êtes connecté.';

  @override
  String get settingsSignedOut => 'Vous n\'êtes pas connecté.';

  @override
  String get settingsOpenWebsite => 'Ouvrir le site Web';

  @override
  String get signUp => 'S\'inscrire';

  @override
  String get settingsLinks => 'Links';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get termsOfService => 'Conditions d\'utilisation';

  @override
  String get about => 'À propos';

  @override
  String get moreApps => 'Plus d\'applications';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageHindi => 'hindi';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteAccountConfirmTitle => 'Supprimer votre compte ?';

  @override
  String get deleteAccountConfirmBody =>
      'Cela supprime définitivement votre compte et vous déconnecte. Vos liens de transfert continueront de fonctionner, mais ils n\'apparaîtront plus dans votre historique.';

  @override
  String get deleteAccountSuccess => 'Compte supprimé';

  @override
  String get deleteAccountSuccessBody => 'Votre compte a été supprimé.';

  @override
  String get deleteAccountFailed => 'Impossible de supprimer le compte';

  @override
  String get deleteAccountFailedBody =>
      'Veuillez réessayer ou contacter l\'assistance.';

  @override
  String get maxFilesReached => 'Trop de fichiers';

  @override
  String get fileTooLarge => 'Fichier trop volumineux';

  @override
  String get ipLimit => 'Trop de téléchargements depuis ce réseau';

  @override
  String get fillFields => 'Veuillez remplir les champs obligatoires';

  @override
  String get invalidEmail => 'E-mail invalide';

  @override
  String get maxRecipientsReached => 'Trop de destinataires';

  @override
  String get loginRequiredTitle => 'Connexion requise';

  @override
  String get loginRequiredBody =>
      'Ce serveur nécessite un compte pour télécharger ou télécharger.';

  @override
  String get settingsSubtitle => 'Préférences et compte de l\'application.';

  @override
  String get dropHeavyFile => 'Déposez un gros fichier ici.';

  @override
  String upToTotal(String max) {
    return 'Jusqu\'à $max total';
  }

  @override
  String get removeAll => 'Supprimer tout';

  @override
  String get addFiles => 'Ajouter des fichiers';

  @override
  String get adding => 'Ajout…';

  @override
  String get options => 'Possibilités';

  @override
  String get selfDestruct => 'Autodestruction après téléchargement';

  @override
  String get expiry => 'Expiration';

  @override
  String get cancelUpload => 'Annuler le téléchargement';

  @override
  String get transferReady => 'Transfert prêt !';

  @override
  String get emailSentReady => 'E-mail envoyé !';

  @override
  String get shareRecipientHint => 'Partagez ce lien avec votre destinataire.';

  @override
  String get emailSentBody => 'Nous avons informé votre(vos) destinataire(s).';

  @override
  String get scanQr => 'Scannez pour ouvrir le lien de transfert.';

  @override
  String get shareLinkButton => 'PARTAGER LE LIEN';

  @override
  String get verifyFourDigit =>
      'Saisissez le code à 4 chiffres envoyé à l\'adresse e-mail de votre expéditeur.';

  @override
  String get starting => 'Départ…';

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
    return '$amount Mo restants';
  }

  @override
  String get fillField => 'Merci de remplir ce champ.';

  @override
  String get enterValidEmail => 'Entrez un email valide.';

  @override
  String get message => 'Message';

  @override
  String get recipientEmail => 'E-mail du destinataire';

  @override
  String get active => 'Actif';

  @override
  String get expired => 'Expiré';

  @override
  String get historyTitle => 'Mes transferts';

  @override
  String get signInToSeeTransfers => 'Connectez-vous pour voir vos transferts';

  @override
  String get signInTransfersBody =>
      'Nous utilisons votre adresse e-mail pour lier les transferts à votre compte – aucun mot de passe n\'est requis.';

  @override
  String get couldNotLoadTransfers => 'Impossible de charger les transferts';

  @override
  String get retry => 'Réessayer';

  @override
  String get noTransfersYet => 'Aucun transfert pour l\'instant';

  @override
  String get noTransfersBody =>
      'Une fois que vous aurez envoyé un fichier, il apparaîtra ici.';

  @override
  String get transferDetails => 'Détails du transfert';

  @override
  String get filesSection => 'Fichiers';

  @override
  String get receiveTitle => 'Recevoir des fichiers';

  @override
  String get receiveSubtitle =>
      'Collez un lien de transfert pour télécharger des fichiers.';

  @override
  String get pasteTooltip => 'Coller';

  @override
  String get findTransfer => 'Trouver un transfert';

  @override
  String get receiveScanQr => 'Scanner le QR';

  @override
  String get receiveScanQrTitle => 'Scanner le transfert QR';

  @override
  String get receiveScanQrHint => 'Alignez le code QR à l\'intérieur du cadre.';

  @override
  String get receiveScanQrInvalid =>
      'Ce code QR n\'est pas un lien de transfert valide.';

  @override
  String get receiveScanQrCameraDenied =>
      'L\'accès à la caméra est requis pour scanner les codes QR.';

  @override
  String get receiveStepGetLink => 'Obtenez le lien';

  @override
  String get receiveStepGetLinkBody =>
      'Demandez à l\'expéditeur de partager le lien de transfert avec vous.';

  @override
  String get receiveStepPaste => 'Coller et trouver';

  @override
  String get receiveStepPasteBody =>
      'Collez le lien ci-dessus et appuyez sur « Rechercher un transfert ».';

  @override
  String get receiveStepDownload => 'Télécharger des fichiers';

  @override
  String get receiveStepDownloadBody =>
      'Consultez les détails du fichier et téléchargez tout en même temps.';

  @override
  String get lookingUpTransfer => 'Recherche de transfert…';

  @override
  String get transferNotFound =>
      'Transfert introuvable. Vérifiez le lien et réessayez.';

  @override
  String get transferExpired =>
      'Ce transfert a expiré et n\'est plus disponible.';

  @override
  String get transferLoginRequired =>
      'Une connexion est requise pour accéder à ce transfert.';

  @override
  String get transferBadResponse =>
      'Réponse inattendue du serveur. Vérifiez votre connexion.';

  @override
  String get transferNetworkError =>
      'Erreur réseau. Vérifiez votre connexion Internet.';

  @override
  String transferLoadFailed(String error) {
    return 'Impossible de charger le transfert : $error';
  }

  @override
  String get passwordProtected => 'Protégé par mot de passe';

  @override
  String get enterPassword => 'Entrez le mot de passe';

  @override
  String get unlock => 'Ouvrir';

  @override
  String get downloading => 'Téléchargement…';

  @override
  String get downloadAllFiles => 'Téléchargez tous les fichiers';

  @override
  String get downloadSingleFile => 'Télécharger le fichier';

  @override
  String get receiveAnother => 'Recevoir un autre transfert';

  @override
  String get plansTitle => 'Forfaits';

  @override
  String get plansSubtitle =>
      'Mettez à niveau pour supprimer les publicités et envoyer des fichiers plus volumineux.';

  @override
  String get storeUnavailable => 'Magasin indisponible';

  @override
  String get storeUnavailableBody =>
      'Les achats intégrés ne sont pas disponibles pour le moment.';

  @override
  String get storeLoadingPrices => 'Chargement des prix depuis l’App Store…';

  @override
  String get storePricesUnavailable => 'Prix ​​indisponibles';

  @override
  String get storePricesPartial => 'Certains prix n\'ont pas pu être chargés';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded des produits d\'abonnement $total chargés.';
  }

  @override
  String get storeSetupHint =>
      'Testez sur un vrai iPhone (pas sur un simulateur), utilisez un identifiant Apple Sandbox et assurez-vous que les 6 abonnements sont créés sous l\'ID de bundle de cette application dans App Store Connect avec la tarification définie.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/mois';
  }

  @override
  String get freeVersionAds =>
      'Vous utilisez actuellement notre version gratuite avec des publicités';

  @override
  String get restorePurchases => 'Restaurer les achats';

  @override
  String get plansContinue => 'Continuer';

  @override
  String get planLinkRestore => 'Restaurer';

  @override
  String get termsAndConditions => 'Termes et conditions';

  @override
  String get createAccountTitle => 'Créer un compte';

  @override
  String get signUpSubtitle => 'Inscrivez-vous avec email et mot de passe.';

  @override
  String get confirmPassword => 'Confirmez le mot de passe';

  @override
  String get passwordMin8 => 'Mot de passe (min 8 caractères)';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ?';

  @override
  String get checkEmailTitle => 'Vérifiez votre\nemail';

  @override
  String otpSentTo(String email) {
    return 'Nous avons envoyé un code à 6 chiffres à\n$email';
  }

  @override
  String get verifyAndSignIn => 'Vérifier et se connecter';

  @override
  String get didntReceiveCode => 'Vous ne l\'avez pas reçu ?';

  @override
  String get tryAgain => 'Essayer à nouveau';

  @override
  String get otpExpiresHint =>
      'Le code expire dans 5 minutes. Vérifiez votre dossier spam si vous ne le voyez pas.';

  @override
  String get snackError => 'Erreur';

  @override
  String get snackCopied => 'Copié';

  @override
  String get snackCopiedBody => 'Lien copié dans le presse-papier';

  @override
  String get snackWelcome => 'Accueillir';

  @override
  String get snackAccountCreated => 'Compte créé';

  @override
  String get snackEnterEmail => 'Veuillez entrer votre email';

  @override
  String get snackEnterPassword => 'Veuillez entrer votre mot de passe';

  @override
  String get snackInvalidEmail => 'Adresse e-mail invalide';

  @override
  String get snackInvalidCredentials => 'Email ou mot de passe incorrect';

  @override
  String get snackPasswordMin8 =>
      'Le mot de passe doit contenir au moins 8 caractères';

  @override
  String get snackPasswordMismatch => 'Les mots de passe ne correspondent pas.';

  @override
  String get snackAccountExists =>
      'Le compte existe déjà. Veuillez vous connecter.';

  @override
  String get snackSignupFailed =>
      'Impossible de créer un compte. Essayer à nouveau.';

  @override
  String get snackEnterOtp => 'Veuillez saisir le code à 6 chiffres';

  @override
  String get snackOtpExpired => 'Code expiré';

  @override
  String get snackOtpExpiredBody => 'Veuillez demander un nouveau code.';

  @override
  String get snackInvalidCode => 'Code invalide';

  @override
  String get snackInvalidCodeBody =>
      'Le code est incorrect. Veuillez réessayer.';

  @override
  String get snackSendCodeFailed =>
      'Impossible d\'envoyer le code. Vérifiez votre connexion et réessayez.';

  @override
  String get snackEmptyFolder => 'Dossier vide';

  @override
  String get snackEmptyFolderBody =>
      'Aucun fichier trouvé dans le dossier sélectionné.';

  @override
  String get snackFolderUnsupported => 'Non pris en charge';

  @override
  String get snackFolderUnsupportedBody =>
      'Le téléchargement de dossiers n\'est pas disponible sur cette plateforme.';

  @override
  String get snackFolderReadError =>
      'Impossible de lire le dossier sélectionné.';

  @override
  String get snackLimitReached => 'Limite atteinte';

  @override
  String get snackLimitFilesBody =>
      'Certains fichiers n\'ont pas été ajoutés en raison de limites de taille ou de nombre de fichiers.';

  @override
  String get snackFreePlanLimit =>
      'Le forfait gratuit permet jusqu\'à 5 Go par transfert. Veuillez supprimer certains fichiers ou effectuer une mise à niveau.';

  @override
  String get snackSignInEmail =>
      'Veuillez vous connecter pour envoyer par email.';

  @override
  String get snackUploadStartFailed =>
      'Impossible de démarrer le téléchargement.';

  @override
  String get snackVerifyEnterCode =>
      'Saisissez le code à 4 chiffres de votre email.';

  @override
  String get snackVerifyInvalid =>
      'Code invalide ou expiré. Vérifiez l\'e-mail et réessayez.';

  @override
  String get snackVerifyResendFailed =>
      'Impossible de renvoyer le code. Essayer à nouveau.';

  @override
  String get snackDownloadComplete => 'Téléchargement terminé';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" enregistré dans les téléchargements';
  }

  @override
  String get snackDownloadFailed => 'Le téléchargement a échoué';

  @override
  String get snackSaved => 'Enregistré';

  @override
  String get snackServerUrlUpdated =>
      'URL du serveur mise à jour. Redémarrez l\'application pour postuler.';

  @override
  String get snackStoreError => 'Erreur de stockage';

  @override
  String get snackMissingProducts => 'Produits manquants';

  @override
  String get snackStoreUnavailable => 'Magasin indisponible';

  @override
  String get snackStoreUnavailableBody =>
      'Les achats intégrés ne sont pas disponibles sur cet appareil.';

  @override
  String get snackProductNotLoaded => 'Le produit n\'est pas encore chargé.';

  @override
  String get snackRestoreStarted => 'Restauration démarrée';

  @override
  String get snackRestoreStartedBody => 'Nous vérifions vos achats.';

  @override
  String get snackRestoreFailed => 'La restauration a échoué';

  @override
  String get snackProcessing => 'Traitement';

  @override
  String get snackPleaseWait => 'S\'il vous plaît, attendez…';

  @override
  String get snackSuccess => 'Succès';

  @override
  String get snackPurchaseCompleted => 'Achat terminé.';

  @override
  String get snackPurchaseError => 'Erreur d\'achat';

  @override
  String get snackPurchaseFailed => 'L\'achat a échoué.';

  @override
  String get snackCanceled => 'Annulé';

  @override
  String get snackPurchaseCanceled => 'Achat annulé.';

  @override
  String get snackUpload => 'Télécharger';

  @override
  String get snackVerify => 'Vérifier';

  @override
  String get doNotExpire => 'N\'expire pas';

  @override
  String get hourSingular => 'heure';

  @override
  String get hourPlural => 'heures';

  @override
  String get daySingular => 'jour';

  @override
  String get dayPlural => 'jours';

  @override
  String get emailAddressLabel => 'ADRESSE EMAIL';

  @override
  String get passwordLabelCaps => 'MOT DE PASSE';

  @override
  String get confirmPasswordLabelCaps => 'CONFIRMEZ LE MOT DE PASSE';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LIEN DE TRANSFERT OU ID';

  @override
  String get howToReceive => 'COMMENT RECEVOIR';

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
  String get planAdsTitle => 'Plan publicitaire';

  @override
  String get planAdsBullet1 => 'Accès à l\'application gratuite de publicité';

  @override
  String get planAdsBullet2 => 'Supprimer toutes les annonces';

  @override
  String get planProTitle => 'Forfait Pro';

  @override
  String get planProBullet1 => 'Envoyez des fichiers jusqu\'à 20 Go';

  @override
  String get planProBullet2 => 'Téléchargement rapide';

  @override
  String get planPremiumTitle => 'Forfait Premium';

  @override
  String get planPremiumBullet1 => 'Envoyez des fichiers jusqu\'à 100 Go';

  @override
  String get planPremiumBullet2 => 'Téléchargement ultra rapide';

  @override
  String get planSubscriptionDisclaimer =>
      'Aucune période d\'essai : un abonnement est requis pour utiliser les fonctionnalités supplémentaires de l\'application. Vous serez facturé immédiatement. Vous pouvez annuler à tout moment.';

  @override
  String get perMonth => '/ mois';

  @override
  String get perYear => '/ année';

  @override
  String get snackConnectionProblem =>
      'Problème de connexion. Veuillez réessayer.';

  @override
  String get networkTitle => 'Réseau';

  @override
  String transferIdLabel(String id) {
    return 'Identifiant : $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Fichiers : $count · $size octets';
  }

  @override
  String todayAt(String time) {
    return 'Aujourd\'hui · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Hier · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return 'Il y a ${days}j · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount Mo';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining gauche';
  }

  @override
  String get loadingShort => 'Chargement…';

  @override
  String get colorPaletteTitle => 'Palette de couleurs';

  @override
  String get colorPaletteSectionBackgrounds =>
      'Arrière-plans (échelle d\'encre)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primaire';

  @override
  String get colorPaletteSectionText => 'Texte';

  @override
  String get colorPaletteSectionBorders => 'Bordures et verre';

  @override
  String get colorPaletteSectionSemantic => 'Sémantique';

  @override
  String get colorPaletteSectionLive => 'Thème en direct (actuel)';

  @override
  String get colorPaletteActiveHint => '★ = activement utilisé dans les écrans';

  @override
  String get colorPaletteCopyHint =>
      'Appuyez longuement sur n’importe quel échantillon pour copier sa valeur hexadécimale.';

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
  String get settingsAppBrand => 'Partager en grand\nFichiers vidéo';

  @override
  String get loginEmailPasswordPrompt =>
      'Entrez votre email et votre mot de passe pour vous connecter.';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get forgotPasswordTitle => 'Réinitialiser le mot de passe';

  @override
  String get forgotPasswordBody =>
      'Entrez l\'e-mail de votre compte et nous vous enverrons un code de réinitialisation.';

  @override
  String get forgotPasswordSubmit => 'Envoyer le code de réinitialisation';

  @override
  String get resetPasswordTitle => 'Créer un nouveau mot de passe';

  @override
  String get resetPasswordBody =>
      'Saisissez le code à 6 chiffres de votre email et choisissez un nouveau mot de passe.';

  @override
  String get resetPasswordSubmit => 'Mettre à jour le mot de passe';

  @override
  String get snackPasswordResetSent => 'Code de réinitialisation envoyé';

  @override
  String get snackPasswordResetSentBody =>
      'Vérifiez votre courrier électronique pour un code de réinitialisation à 6 chiffres.';

  @override
  String get snackPasswordResetFailed =>
      'Impossible d\'envoyer le code de réinitialisation. Essayer à nouveau.';

  @override
  String get snackPasswordUpdated => 'Mot de passe mis à jour';

  @override
  String get snackPasswordUpdatedBody =>
      'Connectez-vous avec votre nouveau mot de passe.';

  @override
  String get snackPasswordResetInvalid =>
      'Code de réinitialisation invalide ou expiré.';

  @override
  String get otpDigitLabel => 'CODE À 6 CHIFFRES';

  @override
  String receiveMoreFiles(int count) {
    return '+$count plus de fichiers';
  }
}
