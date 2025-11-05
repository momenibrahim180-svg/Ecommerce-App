import 'package:ecommerce_youtube/core/helpers/extensions.dart';
import 'package:ecommerce_youtube/core/theming/app_color.dart';
import 'package:ecommerce_youtube/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget {
  final String title;
  const AppAppBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: AppColor.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: 10.radius,
                  side: BorderSide(color: AppColor.greyColor.withAlpha(90)),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
          ],
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          bottom: 0.0,
          top: 0.0,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle.font24W700,
            ),
          ),
        ),
      ],
    );
  }
}
