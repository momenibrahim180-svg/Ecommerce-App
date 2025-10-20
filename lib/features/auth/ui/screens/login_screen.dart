import 'package:ecommerce_youtube/core/helpers/extensions.dart';
import 'package:ecommerce_youtube/core/routing/routes.dart';
import 'package:ecommerce_youtube/core/theming/app_color.dart';
import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:ecommerce_youtube/core/widgets/app_button.dart';
import 'package:ecommerce_youtube/core/widgets/app_padding.dart';
import 'package:ecommerce_youtube/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: paddingSymmetric(16, 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login', style: AppTextStyle.font24W700),
              23.height,
              Text('Welcome back !', style: AppTextStyle.font20W700),
              8.height,
              Text(
                'To keep connected with us please login to yor account ',
                style: AppTextStyle.font14W700.copyWith(
                  color: AppColor.blackColor.withValues(alpha: 0.70),
                ),
              ),
              35.height,
              Text('Phone number', style: AppTextStyle.font15W700),
              8.height,
              AppTextFormField(
                controller: _phoneController,
                hintText: '(+20)   _ _ _ _ _ _ _ _ _ _',
              ),
              104.height,
              AppButton(
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.otp);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
