// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'แชร์ไฟล์วิดีโอขนาดใหญ่';

  @override
  String get heroAccent => 'ทันที';

  @override
  String get heroTitle => 'ส่งหนักๆ files';

  @override
  String get splashLoading => 'กำลังโหลด…';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Home';

  @override
  String get navHistory => 'History';

  @override
  String get navReceive => 'Receive';

  @override
  String get navPlans => 'Plans';

  @override
  String get navDownload => 'ดาวน์โหลด';

  @override
  String get navSettings => 'Settings';

  @override
  String get modeLink => 'รับ link';

  @override
  String get modeEmail => 'ส่งทางอีเมล';

  @override
  String get pickFiles => 'เลือกไฟล์';

  @override
  String get pickFolder => 'เลือกโฟลเดอร์';

  @override
  String get emailFrom => 'อีเมลของคุณ';

  @override
  String get mailFromUsesAccount => 'ใช้อีเมลที่คุณลงชื่อเข้าใช้';

  @override
  String get recipientEmailsHelper =>
      'ผู้รับหลายคน: คั่นด้วยเครื่องหมายจุลภาค อัฒภาค หรือ ช่องว่าง';

  @override
  String get emailTo => 'อีเมลผู้รับ';

  @override
  String get messageOptional => 'ข้อความ (ไม่บังคับ)';

  @override
  String get passwordOptional => 'รหัสผ่าน (ไม่บังคับ)';

  @override
  String get destructAfterDownload => 'ลบหลังจากดาวน์โหลด';

  @override
  String get destructNo => 'Keep ใช้ได้';

  @override
  String get sendButton => 'ส่ง';

  @override
  String get uploading => 'กำลังอัปโหลด…';

  @override
  String get uploadComplete => 'เสร็จสิ้น';

  @override
  String get shareLinkTitle => 'ลิงก์ของคุณ';

  @override
  String get copyLink => 'คัดลอกลิงก์';

  @override
  String get share => 'Share';

  @override
  String get shareQrCode => 'แชร์รหัส QR';

  @override
  String get uploadMore => 'ส่ง another';

  @override
  String get emailSentTitle => 'อีเมลที่ส่งแล้ว';

  @override
  String get verifyEmailTitle => 'ยืนยันอีเมลของคุณ';

  @override
  String get verifyCodeHint => 'ป้อนรหัสจากอีเมลของคุณ';

  @override
  String get verifySubmit => 'ยืนยัน';

  @override
  String get verifyResendCode => 'ส่งรหัสอีกครั้ง';

  @override
  String get verifyCodeSent => 'รหัสยืนยันใหม่ถูกส่งไปยังอีเมลของคุณ';

  @override
  String get verifyEmailSmtpWarningTitle => 'อีเมลยืนยันอาจไม่ได้รับ send';

  @override
  String get verifyEmailSmtpWarningBody =>
      'เซิร์ฟเวอร์ไม่สามารถยืนยันการจัดส่งได้ (มักมีการกำหนดค่า SMTP ไม่ถูกต้อง) ขอให้ผู้ดูแลไซต์ของคุณตรวจสอบการตั้งค่าเมลในแผงผู้ดูแลระบบ จากนั้นแตะส่งรหัสอีกครั้ง';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'หากมาไม่ถึง: ตรวจสอบขยะ/สแปมและโปรโมชัน รอสักครู่ ยืนยันว่า $email ไม่มีการพิมพ์ผิด จากนั้นแตะส่งอีกครั้ง';
  }

  @override
  String get loginTitle => 'ลงชื่อเข้าใช้';

  @override
  String get signupHint => 'ใช้อีเมลบัญชีไซต์ของคุณและ รหัสผ่าน';

  @override
  String get emailHint => 'อีเมล';

  @override
  String get passwordHint => 'รหัสผ่าน';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get signIn => 'ลงชื่อเข้าใช้';

  @override
  String get downloadIdHint => 'โอน ID';

  @override
  String get privateIdHint => 'รหัสส่วนตัว (ไม่จำเป็น)';

  @override
  String get fetchTransfer => 'เปิดการถ่ายโอน';

  @override
  String get downloadFile => 'ดาวน์โหลด';

  @override
  String get unlockDownload => 'ปลดล็อคการดาวน์โหลด';

  @override
  String get downloadSaved => 'บันทึกลงในการดาวน์โหลด';

  @override
  String get errorGeneric => 'มีบางอย่างผิดพลาด';

  @override
  String get errorNetwork => 'ข้อผิดพลาดของเครือข่าย';

  @override
  String get errorBadResponse => 'การตอบสนองของเซิร์ฟเวอร์ที่ไม่คาดคิด';

  @override
  String get termsAccept => 'ฉันยอมรับข้อกำหนด';

  @override
  String get settingsApiUrl => 'เว็บไซต์สาธารณะ URL';

  @override
  String get settingsAccount => 'บัญชี';

  @override
  String get settingsAppearance => 'ลักษณะที่ปรากฏ';

  @override
  String get settingsTheme => 'ธีม';

  @override
  String get themeSystem => 'ระบบ';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsSignedIn => 'คุณลงชื่อเข้าใช้แล้ว';

  @override
  String get settingsSignedOut => 'คุณไม่ได้ลงนาม ใน';

  @override
  String get settingsOpenWebsite => 'เปิดเว็บไซต์';

  @override
  String get signUp => 'ลงทะเบียน';

  @override
  String get settingsLinks => 'ลิงก์';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get termsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get moreApps => 'เพิ่มเติม แอป';

  @override
  String get settingsLanguage => 'ภาษา';

  @override
  String get languageEnglish => 'อังกฤษ';

  @override
  String get languageHindi => 'ภาษาฮินดี';

  @override
  String get logout => 'ออกจากระบบ';

  @override
  String get deleteAccount => 'ลบบัญชี';

  @override
  String get deleteAccountConfirmTitle => 'ลบบัญชีของคุณ?';

  @override
  String get deleteAccountConfirmBody =>
      'การดำเนินการนี้จะลบบัญชีของคุณอย่างถาวรและออกจากระบบ ลิงก์ถ่ายโอนของคุณจะยังคงใช้งานได้ แต่จะไม่ปรากฏในประวัติของคุณอีกต่อไป';

  @override
  String get deleteAccountSuccess => 'บัญชีถูกลบ';

  @override
  String get deleteAccountSuccessBody => 'บัญชีของคุณถูกลบแล้ว';

  @override
  String get deleteAccountFailed => 'ไม่สามารถลบบัญชี';

  @override
  String get deleteAccountFailedBody => 'โปรดลองอีกครั้งหรือติดต่อฝ่ายสนับสนุน';

  @override
  String get maxFilesReached => 'มีไฟล์มากเกินไป';

  @override
  String get fileTooLarge => 'ไฟล์ด้วย ใหญ่';

  @override
  String get ipLimit => 'อัปโหลดจากเครือข่ายนี้มากเกินไป';

  @override
  String get fillFields => 'กรุณากรอกข้อมูลในช่องที่ต้องกรอก';

  @override
  String get invalidEmail => 'อีเมลไม่ถูกต้อง';

  @override
  String get maxRecipientsReached => 'มีผู้รับมากเกินไป';

  @override
  String get loginRequiredTitle => 'ต้องลงชื่อเข้าใช้';

  @override
  String get loginRequiredBody =>
      'เซิร์ฟเวอร์นี้ต้องมีบัญชีในการอัปโหลดหรือดาวน์โหลด';

  @override
  String get settingsSubtitle => 'การตั้งค่าแอปและ บัญชี';

  @override
  String get dropHeavyFile => 'วางไฟล์จำนวนมากที่นี่';

  @override
  String upToTotal(String max) {
    return 'สูงสุด $max ทั้งหมด';
  }

  @override
  String get removeAll => 'ลบทั้งหมด';

  @override
  String get addFiles => 'เพิ่มไฟล์';

  @override
  String get adding => 'การเพิ่ม…';

  @override
  String get options => 'ตัวเลือก';

  @override
  String get selfDestruct => 'ทำลายตัวเองหลังจาก ดาวน์โหลด';

  @override
  String get expiry => 'หมดอายุ';

  @override
  String get cancelUpload => 'ยกเลิกการอัปโหลด';

  @override
  String get transferReady => 'โอนพร้อมแล้ว!';

  @override
  String get emailSentReady => 'ส่งอีเมลแล้ว!';

  @override
  String get shareRecipientHint => 'แชร์ลิงก์นี้กับผู้รับของคุณ';

  @override
  String get emailSentBody => 'เราได้แจ้งผู้รับของคุณแล้ว';

  @override
  String get scanQr => 'สแกนเพื่อเปิดลิงก์โอน';

  @override
  String get shareLinkButton => 'แชร์ LINK';

  @override
  String get verifyFourDigit => 'ป้อนรหัส 4 หลักที่ส่งไปยังอีเมลผู้ส่งของคุณ';

  @override
  String get starting => 'กำลังเริ่มต้น…';

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
    return '$amount MB เหลือ';
  }

  @override
  String get fillField => 'กรุณากรอกข้อมูลในช่องนี้';

  @override
  String get enterValidEmail => 'ป้อนที่ถูกต้อง อีเมล';

  @override
  String get message => 'ข้อความ';

  @override
  String get recipientEmail => 'อีเมลผู้รับ';

  @override
  String get active => 'ใช้งานอยู่';

  @override
  String get expired => 'หมดอายุ';

  @override
  String get historyTitle => 'การโอนเงินของฉัน';

  @override
  String get signInToSeeTransfers => 'ลงชื่อเข้าใช้เพื่อดูการโอนเงินของคุณ';

  @override
  String get signInTransfersBody =>
      'เราใช้อีเมลของคุณเพื่อเชื่อมโยงการโอนเงินไปยังบัญชีของคุณ — ไม่ต้องใช้รหัสผ่าน';

  @override
  String get couldNotLoadTransfers => 'ไม่สามารถโหลดได้ การถ่ายโอน';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get noTransfersYet => 'ยังไม่มีการถ่ายโอน';

  @override
  String get noTransfersBody => 'เมื่อคุณส่งไฟล์ ไฟล์นั้นจะปรากฏที่นี่';

  @override
  String get transferDetails => 'รายละเอียดการถ่ายโอน';

  @override
  String get filesSection => 'ไฟล์';

  @override
  String get receiveTitle => 'รับไฟล์';

  @override
  String get receiveSubtitle => 'วางลิงก์การถ่ายโอนเพื่อดาวน์โหลด ไฟล์';

  @override
  String get pasteTooltip => 'Paste';

  @override
  String get findTransfer => 'ค้นหาการถ่ายโอน';

  @override
  String get receiveScanQr => 'สแกน QR';

  @override
  String get receiveScanQrTitle => 'สแกนถ่ายโอน QR';

  @override
  String get receiveScanQrHint => 'จัดแนวรหัส QR ภายในกรอบ';

  @override
  String get receiveScanQrInvalid => 'รหัส QR นี้ไม่ใช่ลิงก์ถ่ายโอนที่ถูกต้อง';

  @override
  String get receiveScanQrCameraDenied =>
      'จำเป็นต้องเข้าถึงกล้องเพื่อสแกน QR รหัส';

  @override
  String get receiveStepGetLink => 'รับลิงก์';

  @override
  String get receiveStepGetLinkBody => 'ขอให้ผู้ส่งแชร์ลิงก์การโอนกับคุณ';

  @override
  String get receiveStepPaste => 'วางและค้นหา';

  @override
  String get receiveStepPasteBody => 'วางลิงก์ด้านบนแล้วแตะ \"ค้นหาการโอน\"';

  @override
  String get receiveStepDownload => 'ดาวน์โหลดไฟล์';

  @override
  String get receiveStepDownloadBody =>
      'ดูรายละเอียดไฟล์และดาวน์โหลดทุกอย่างที่ หนึ่งครั้ง';

  @override
  String get lookingUpTransfer => 'กำลังค้นหาการถ่ายโอน…';

  @override
  String get transferNotFound => 'ไม่พบการถ่ายโอน ตรวจสอบลิงก์แล้วลองอีกครั้ง';

  @override
  String get transferExpired =>
      'การถ่ายโอนนี้หมดอายุแล้วและไม่มีให้บริการอีกต่อไป';

  @override
  String get transferLoginRequired =>
      'ต้องลงชื่อเข้าใช้เพื่อเข้าถึงการถ่ายโอนนี้';

  @override
  String get transferBadResponse =>
      'การตอบสนองของเซิร์ฟเวอร์ที่ไม่คาดคิด ตรวจสอบการเชื่อมต่อของคุณ';

  @override
  String get transferNetworkError =>
      'ข้อผิดพลาดของเครือข่าย ตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณ';

  @override
  String transferLoadFailed(String error) {
    return 'ไม่สามารถโหลดการถ่ายโอน: $error';
  }

  @override
  String get passwordProtected => 'ป้องกันด้วยรหัสผ่าน';

  @override
  String get enterPassword => 'ป้อนรหัสผ่าน';

  @override
  String get unlock => 'ปลดล็อค';

  @override
  String get downloading => 'กำลังดาวน์โหลด…';

  @override
  String get downloadAllFiles => 'ดาวน์โหลดไฟล์ทั้งหมด';

  @override
  String get downloadSingleFile => 'ดาวน์โหลดไฟล์';

  @override
  String get receiveAnother => 'รับการถ่ายโอนอีกครั้ง';

  @override
  String get plansTitle => 'Plans';

  @override
  String get plansSubtitle => 'อัปเกรดเพื่อลบโฆษณาและส่งไฟล์ที่ใหญ่ขึ้น';

  @override
  String get storeUnavailable => 'ร้านค้าไม่พร้อมใช้งาน';

  @override
  String get storeUnavailableBody => 'การซื้อในแอปไม่สามารถใช้งานได้ในขณะนี้';

  @override
  String get storeLoadingPrices => 'กำลังโหลด ราคาจาก App Store…';

  @override
  String get storePricesUnavailable => 'ไม่มีราคา';

  @override
  String get storePricesPartial => 'ไม่สามารถโหลดราคาบางราคา';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded ของ $total ผลิตภัณฑ์ที่สมัครสมาชิกโหลดแล้ว';
  }

  @override
  String get storeSetupHint =>
      'ทดสอบบน iPhone จริง (ไม่ใช่โปรแกรมจำลอง) ใช้ Sandbox Apple ID และตรวจสอบให้แน่ใจว่าการสมัครสมาชิกทั้ง 6 รายการถูกสร้างขึ้นภายใต้ ID บันเดิลของแอพนี้ใน App Store Connect พร้อมราคา set.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/เดือน';
  }

  @override
  String get freeVersionAds => 'ขณะนี้คุณกำลังใช้เวอร์ชันฟรีของเรากับโฆษณา';

  @override
  String get restorePurchases => 'คืนค่าการซื้อ';

  @override
  String get plansContinue => 'ดำเนินการต่อ';

  @override
  String get planLinkRestore => 'คืนค่า';

  @override
  String get termsAndConditions => 'ข้อกำหนดและเงื่อนไข';

  @override
  String get createAccountTitle => 'สร้าง บัญชี';

  @override
  String get signUpSubtitle => 'ลงทะเบียนด้วยอีเมลและรหัสผ่าน';

  @override
  String get confirmPassword => 'ยืนยันรหัสผ่าน';

  @override
  String get passwordMin8 => 'รหัสผ่าน (ขั้นต่ำ 8 ตัวอักษร)';

  @override
  String get alreadyHaveAccount => 'มีบัญชีอยู่แล้ว?';

  @override
  String get checkEmailTitle => 'ตรวจสอบของคุณ\nemail';

  @override
  String otpSentTo(String email) {
    return 'เราได้ส่งรหัส 6 หลักไปที่\n$email';
  }

  @override
  String get verifyAndSignIn => 'ยืนยันและลงชื่อเข้าใช้';

  @override
  String get didntReceiveCode => 'ไม่ได้รับหรือไม่';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get otpExpiresHint =>
      'รหัสจะหมดอายุใน 5 นาที ตรวจสอบโฟลเดอร์สแปมของคุณหากคุณไม่เห็น';

  @override
  String get snackError => 'ข้อผิดพลาด';

  @override
  String get snackCopied => 'คัดลอก';

  @override
  String get snackCopiedBody => 'คัดลอกลิงก์ไปยังคลิปบอร์ด';

  @override
  String get snackWelcome => 'ยินดีต้อนรับ';

  @override
  String get snackAccountCreated => 'สร้างบัญชีแล้ว';

  @override
  String get snackEnterEmail => 'กรุณากรอกอีเมลของคุณ';

  @override
  String get snackEnterPassword => 'กรุณากรอกอีเมลของคุณ รหัสผ่าน';

  @override
  String get snackInvalidEmail => 'ที่อยู่อีเมลไม่ถูกต้อง';

  @override
  String get snackInvalidCredentials => 'อีเมลหรือรหัสผ่านไม่ถูกต้อง';

  @override
  String get snackPasswordMin8 => 'รหัสผ่านต้องมีอักขระอย่างน้อย 8 ตัว';

  @override
  String get snackPasswordMismatch => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get snackAccountExists => 'มีบัญชีอยู่แล้ว กรุณาเข้าสู่ระบบ';

  @override
  String get snackSignupFailed => 'ไม่สามารถสร้างบัญชีได้ ลองอีกครั้ง';

  @override
  String get snackEnterOtp => 'กรุณากรอกรหัส 6 หลัก';

  @override
  String get snackOtpExpired => 'รหัสหมดอายุ';

  @override
  String get snackOtpExpiredBody => 'กรุณาขอรหัสใหม่';

  @override
  String get snackInvalidCode => 'รหัสไม่ถูกต้อง';

  @override
  String get snackInvalidCodeBody => 'รหัสไม่ถูกต้อง โปรดลองอีกครั้ง';

  @override
  String get snackSendCodeFailed =>
      'ไม่สามารถส่งรหัสได้ ตรวจสอบการเชื่อมต่อของคุณแล้วลองอีกครั้ง';

  @override
  String get snackEmptyFolder => 'โฟลเดอร์ว่าง';

  @override
  String get snackEmptyFolderBody => 'ไม่พบไฟล์ในโฟลเดอร์ที่เลือก';

  @override
  String get snackFolderUnsupported => 'ไม่รองรับ';

  @override
  String get snackFolderUnsupportedBody =>
      'การอัปโหลดโฟลเดอร์ไม่พร้อมใช้งานบนแพลตฟอร์มนี้';

  @override
  String get snackFolderReadError => 'ไม่สามารถอ่านโฟลเดอร์ที่เลือกได้';

  @override
  String get snackLimitReached => 'ถึงขีดจำกัด';

  @override
  String get snackLimitFilesBody =>
      'บางไฟล์ไม่ได้ถูกเพิ่มเนื่องจากขนาดหรือขีดจำกัดจำนวนไฟล์';

  @override
  String get snackFreePlanLimit =>
      'แผนฟรีอนุญาต สูงสุด 5GB ต่อการถ่ายโอน โปรดลบไฟล์บางไฟล์หรืออัปเกรด';

  @override
  String get snackSignInEmail => 'กรุณาลงชื่อเข้าใช้เพื่อส่งทางอีเมล';

  @override
  String get snackUploadStartFailed => 'ไม่สามารถเริ่มการอัปโหลดได้';

  @override
  String get snackVerifyEnterCode => 'ป้อนรหัส 4 หลักจากอีเมลของคุณ';

  @override
  String get snackVerifyInvalid =>
      'รหัสไม่ถูกต้องหรือหมดอายุ ตรวจสอบอีเมลแล้วลองอีกครั้ง';

  @override
  String get snackVerifyResendFailed =>
      'ไม่สามารถส่งรหัสอีกครั้งได้ ลองอีกครั้ง';

  @override
  String get snackDownloadComplete => 'การดาวน์โหลดเสร็จสมบูรณ์';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" บันทึกไปยังการดาวน์โหลด';
  }

  @override
  String get snackDownloadFailed => 'การดาวน์โหลดล้มเหลว';

  @override
  String get snackSaved => 'บันทึก';

  @override
  String get snackServerUrlUpdated =>
      'URL ของเซิร์ฟเวอร์อัปเดตแล้ว รีสตาร์ทแอปเพื่อใช้';

  @override
  String get snackStoreError => 'ข้อผิดพลาดในร้านค้า';

  @override
  String get snackMissingProducts => 'ผลิตภัณฑ์ที่หายไป';

  @override
  String get snackStoreUnavailable => 'ร้านค้าไม่พร้อมใช้งาน';

  @override
  String get snackStoreUnavailableBody => 'ไม่มีการซื้อในแอปบนอุปกรณ์นี้';

  @override
  String get snackProductNotLoaded => 'ยังไม่ได้โหลดผลิตภัณฑ์';

  @override
  String get snackRestoreStarted => 'เริ่มการคืนค่าแล้ว';

  @override
  String get snackRestoreStartedBody => 'เรากำลังตรวจสอบของคุณ การซื้อ';

  @override
  String get snackRestoreFailed => 'การกู้คืนล้มเหลว';

  @override
  String get snackProcessing => 'กำลังประมวลผล';

  @override
  String get snackPleaseWait => 'โปรดรอสักครู่…';

  @override
  String get snackSuccess => 'สำเร็จ';

  @override
  String get snackPurchaseCompleted => 'การซื้อเสร็จสมบูรณ์';

  @override
  String get snackPurchaseError => 'ข้อผิดพลาดในการซื้อ';

  @override
  String get snackPurchaseFailed => 'การซื้อเสร็จสมบูรณ์ ล้มเหลว';

  @override
  String get snackCanceled => 'ยกเลิก';

  @override
  String get snackPurchaseCanceled => 'การซื้อถูกยกเลิก';

  @override
  String get snackUpload => 'อัปโหลด';

  @override
  String get snackVerify => 'ยืนยัน';

  @override
  String get doNotExpire => 'อย่า หมดอายุ';

  @override
  String get hourSingular => 'ชั่วโมง';

  @override
  String get hourPlural => 'ชั่วโมง';

  @override
  String get daySingular => 'วัน';

  @override
  String get dayPlural => 'วัน';

  @override
  String get emailAddressLabel => 'ที่อยู่อีเมล';

  @override
  String get passwordLabelCaps => 'รหัสผ่าน';

  @override
  String get confirmPasswordLabelCaps => 'ยืนยันรหัสผ่าน';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ลิงก์โอนหรือ ID';

  @override
  String get howToReceive => 'วิธีรับ';

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
  String get planAdsTitle => 'แผนโฆษณา';

  @override
  String get planAdsBullet1 => 'เข้าถึงแอปฟรีโฆษณา';

  @override
  String get planAdsBullet2 => 'ลบโฆษณาทั้งหมด';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'ส่งไฟล์สูงสุด 20GB';

  @override
  String get planProBullet2 => 'อัปโหลดเร็ว';

  @override
  String get planPremiumTitle => 'แผนพรีเมียม';

  @override
  String get planPremiumBullet1 => 'ส่งไฟล์สูงสุด 100GB';

  @override
  String get planPremiumBullet2 => 'อัปโหลดเร็วสุด';

  @override
  String get planSubscriptionDisclaimer =>
      'ไม่มีช่วงทดลองใช้ — จำเป็นต้องสมัครสมาชิกเพื่อใช้ฟังก์ชันแอปเพิ่มเติม คุณจะถูกเรียกเก็บเงินทันที คุณสามารถยกเลิกได้ตลอดเวลา';

  @override
  String get perMonth => '/ เดือน';

  @override
  String get perYear => '/ ปี';

  @override
  String get snackConnectionProblem => 'ปัญหาการเชื่อมต่อ โปรดลองอีกครั้ง';

  @override
  String get networkTitle => 'เครือข่าย';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ไฟล์: $count · $size ไบต์';
  }

  @override
  String todayAt(String time) {
    return 'วันนี้ · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'เมื่อวาน · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d ที่แล้ว · $time';
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
    return '$sent / $total • $remaining ซ้าย';
  }

  @override
  String get loadingShort => 'กำลังโหลด…';

  @override
  String get colorPaletteTitle => 'สี จานสี';

  @override
  String get colorPaletteSectionBackgrounds => 'พื้นหลัง (ขนาดหมึก)';

  @override
  String get colorPaletteSectionAccent => 'สำเนียง / หลัก';

  @override
  String get colorPaletteSectionText => 'ข้อความ';

  @override
  String get colorPaletteSectionBorders => 'เส้นขอบและกระจก';

  @override
  String get colorPaletteSectionSemantic => 'ความหมาย';

  @override
  String get colorPaletteSectionLive => 'ธีมสด (ปัจจุบัน)';

  @override
  String get colorPaletteActiveHint => '★ = ใช้งานอยู่ใน หน้าจอ';

  @override
  String get colorPaletteCopyHint =>
      'กดสวอตช์ใดๆ ค้างไว้เพื่อคัดลอกค่าเลขฐานสิบหก';

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
  String get settingsAppBrand => 'แบ่งปันขนาดใหญ่\nไฟล์วิดีโอ';

  @override
  String get loginEmailPasswordPrompt =>
      'ป้อนอีเมลและรหัสผ่านของคุณเพื่อลงชื่อเข้าใช้';

  @override
  String get forgotPassword => 'ลืมรหัสผ่าน?';

  @override
  String get forgotPasswordTitle => 'รีเซ็ตรหัสผ่าน';

  @override
  String get forgotPasswordBody => 'ป้อนอีเมลบัญชีของคุณแล้วเราจะส่งรหัสรีเซ็ต';

  @override
  String get forgotPasswordSubmit => 'ส่งรหัสรีเซ็ต';

  @override
  String get resetPasswordTitle => 'สร้างรหัสผ่านใหม่';

  @override
  String get resetPasswordBody =>
      'ป้อน รหัส 6 หลักจากอีเมลของคุณและเลือกรหัสผ่านใหม่';

  @override
  String get resetPasswordSubmit => 'อัปเดตรหัสผ่าน';

  @override
  String get snackPasswordResetSent => 'รีเซ็ตรหัสที่ส่งแล้ว';

  @override
  String get snackPasswordResetSentBody =>
      'ตรวจสอบอีเมลของคุณเพื่อหารหัสรีเซ็ต 6 หลัก';

  @override
  String get snackPasswordResetFailed =>
      'ไม่สามารถส่งรหัสรีเซ็ตได้ ลองอีกครั้ง';

  @override
  String get snackPasswordUpdated => 'อัปเดตรหัสผ่าน';

  @override
  String get snackPasswordUpdatedBody => 'ลงชื่อเข้าใช้ด้วยรหัสผ่านใหม่ของคุณ';

  @override
  String get snackPasswordResetInvalid => 'รหัสรีเซ็ตไม่ถูกต้องหรือหมดอายุ';

  @override
  String get otpDigitLabel => '6-DIGIT CODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count ไฟล์เพิ่มเติม';
  }
}
