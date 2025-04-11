import 'dart:io';
import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/data/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfileImgAndUserName extends StatelessWidget {
  const ProfileImgAndUserName({super.key, required this.userData});
  final UserModel userData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.getWidth(context),
      height: ScreenSize.getHeight(context)*0.2025,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(ScreenSize.getWidth(context)*0.0398),
            topRight: Radius.circular(ScreenSize.getWidth(context)*0.0398)
        ),
        image: userData.profilePic != null?
        DecorationImage(
            image: FileImage(File(userData.profilePic!),
            ),
            fit: BoxFit.cover
        ):
        const DecorationImage(
            image: AssetImage(
              AppImages.defaultProfilePic,
            ),
            fit: BoxFit.cover
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: ScreenSize.getHeight(context)*0.00915,
          left: ScreenSize.getWidth(context)*0.0199,
          right: ScreenSize.getWidth(context)*0.0199,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenSize.getWidth(context)*0.0199,
                  vertical: ScreenSize.getHeight(context)*0.00915
                ),
                decoration: BoxDecoration(
                    color: AppColors.gold,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Text(
                  userData.name,
                  style: AppFonts.fontSize14Medium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}