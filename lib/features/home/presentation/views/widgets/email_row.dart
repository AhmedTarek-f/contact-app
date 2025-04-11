import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailRow extends StatelessWidget {
  const EmailRow({super.key, required this.userEmail});
  final String userEmail;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.mailIcon,),
        SizedBox(width: ScreenSize.getWidth(context)*0.0199,),
        Flexible(
          child: Text(
            userEmail,
            style: AppFonts.fontSize10Medium,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}