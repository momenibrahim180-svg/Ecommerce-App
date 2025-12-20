// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "login": "Login",
  "welcome_back": "Welcome back!",
  "login_message": "To keep connected with us please login to your account",
  "phone_number": "Phone number",
  "otp_verfication": "OTP Verfication",
  "please_enter_4_digit_code": "Please enter the 4 digit code we have sent to yor email",
  "verify": "Verify",
  "resend_code": "Resend code"
};
static const Map<String,dynamic> _ar = {
  "login": "تسجيل الدخول",
  "welcome_back": "مرحبًا بعودتك!",
  "login_message": "للبقاء على اتصال معنا، يرجى تسجيل الدخول إلى حسابك",
  "phone_number": "رقم الهاتف",
  "please_enter_4_digit_code": "يرجى ادخال الرقم المكون من 4 ارقام المرسل لك على البريد الالكتروني",
  "verify": "تحقق",
  "resend_code": "اعادة ارسال الكود"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en, "ar": _ar};
}
