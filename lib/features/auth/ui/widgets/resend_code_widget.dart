import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class ResendCodeWidget extends StatelessWidget {
  const ResendCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: InkWell(
        child: Text('Resend code', style: AppTextStyle.font12W400MainColor),
      ),
    );
  }
}
