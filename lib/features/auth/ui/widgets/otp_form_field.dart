import 'dart:developer';

import 'package:ecommerce_youtube/core/helpers/extensions.dart';
import 'package:ecommerce_youtube/core/theming/app_color.dart';
import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpFormField extends StatelessWidget {
  const OtpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      defaultPinTheme: PinTheme(
        width: 75.0.w,
        height: 60.0.h,
        textStyle: AppTextStyle.font20W700,
        decoration: BoxDecoration(
          borderRadius: 16.radius,
          color: AppColor.greyColor.withAlpha(40),
        ),
      ),

      validator: (s) {
        return s == '5555' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => log(pin),
    );
  }
}
