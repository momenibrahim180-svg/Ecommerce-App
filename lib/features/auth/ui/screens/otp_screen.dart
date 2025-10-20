import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Otp Screen', style: AppTextStyle.font24W700)),
    );
  }
}
