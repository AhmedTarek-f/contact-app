import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneRow extends StatelessWidget {
  const PhoneRow({super.key, required this.userPhone});
  final String userPhone;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.phoneIcon,),
        SizedBox(width: ScreenSize.getWidth(context)*0.0199,),
        Text(
          "+20$userPhone",
          style: AppFonts.fontSize10Medium,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}