import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/data/models/user_model.dart';
import 'package:contact_app/features/home/presentation/views/widgets/delete_button.dart';
import 'package:contact_app/features/home/presentation/views/widgets/email_row.dart';
import 'package:contact_app/features/home/presentation/views/widgets/phone_row.dart';
import 'package:contact_app/features/home/presentation/views/widgets/profile_img_and_user_name.dart';
import 'package:flutter/material.dart';

class UserCardItem extends StatelessWidget {
  const UserCardItem({super.key, required this.userData, required this.index});
  final UserModel userData;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0398),
        color: AppColors.gold,
      ),
      child: Column(
        children: [
          ProfileImgAndUserName(userData: userData,),
          SizedBox(height: ScreenSize.getHeight(context)*0.01716,),
          Padding(
            padding: EdgeInsets.only(
              right: ScreenSize.getWidth(context)*0.0199,
              left: ScreenSize.getWidth(context)*0.0199,
              bottom: ScreenSize.getHeight(context)*0.00915,
            ),
            child: Column(
              children: [
                EmailRow(userEmail: userData.email,),
                SizedBox(height: ScreenSize.getHeight(context)*0.01144,),
                PhoneRow(userPhone: userData.phone),
                SizedBox(height: ScreenSize.getHeight(context)*0.01144,),
                DeleteButton(index: index,),
              ],
            ),
          )
        ],
      ),
    );
  }
}