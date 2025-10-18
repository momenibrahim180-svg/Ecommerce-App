import 'package:ecommerce_youtube/core/theming/app_color.dart';
import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double width;
  final double height;
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = double.infinity,
    this.height = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColor.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0.r),
          ),
        ),
        child: Text(text, style: AppTextStyle.font16W700White),
      ),
    );
  }
}
