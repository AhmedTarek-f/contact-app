import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:flutter/material.dart';

class RouteLogo extends StatelessWidget {
  const RouteLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenSize.getHeight(context)*0.02745,
        left: ScreenSize.getWidth(context)*0.06467,
      ),
      child: Image.asset(
        alignment: Alignment.centerLeft,
        AppImages.routeLogo,
        width: ScreenSize.getWidth(context)*0.2835,
        height: ScreenSize.getHeight(context)*0.0446,
      ),
    );
  }
}