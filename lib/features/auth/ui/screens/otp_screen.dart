import 'package:ecommerce_youtube/core/helpers/extensions.dart';
import 'package:ecommerce_youtube/core/theming/app_color.dart';
import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:ecommerce_youtube/core/widgets/app_appbar.dart';
import 'package:ecommerce_youtube/core/widgets/app_button.dart';
import 'package:ecommerce_youtube/core/widgets/app_padding.dart';
import 'package:ecommerce_youtube/features/auth/ui/widgets/otp_form_field.dart';
import 'package:ecommerce_youtube/features/auth/ui/widgets/resend_code_widget.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: paddingHorizontal(16),
          child: Column(
            children: [
              AppAppBar(title: 'OTP Verfication',),
              42.height,
              Text(
                'Please enter the 4 digit code we have sent to yor email',
                style: AppTextStyle.font16W700Black.copyWith(
                  color: AppColor.blackColor.withValues(alpha: 0.7),
                ),
              ),
              54.height,
              OtpFormField(),
              16.height,
              ResendCodeWidget(),
              82.height,
              AppButton(text: 'Verify', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
