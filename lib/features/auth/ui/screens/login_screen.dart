import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_youtube/core/helpers/extensions.dart';
import 'package:ecommerce_youtube/core/routing/routes.dart';
import 'package:ecommerce_youtube/core/theming/app_color.dart';
import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:ecommerce_youtube/core/widgets/app_button.dart';
import 'package:ecommerce_youtube/core/widgets/app_padding.dart';
import 'package:ecommerce_youtube/core/widgets/app_text_form_field.dart';
import 'package:ecommerce_youtube/features/auth/ui/widgets/lang_icon.dart';
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
              LangIcon(),
              15.height,
              Text('login'.tr(), style: AppTextStyle.font24W700),
              23.height,
              Text('welcome_back'.tr(), style: AppTextStyle.font20W700),
              8.height,
              Text(
                'login_message'.tr(),
                style: AppTextStyle.font14W700.copyWith(
                  color: AppColor.blackColor.withValues(alpha: 0.70),
                ),
              ),
              35.height,
              Text('phone_number'.tr(), style: AppTextStyle.font15W700),
              8.height,
              AppTextFormField(
                controller: _phoneController,
                hintText: '(+20)   _ _ _ _ _ _ _ _ _ _',
              ),
              104.height,
              AppButton(
                text: 'login',
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
