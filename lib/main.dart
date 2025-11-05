import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_youtube/ecommerce_app.dart';
import 'package:flutter/material.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
      child: const EcommerceApp(),
    ),
  );
}
