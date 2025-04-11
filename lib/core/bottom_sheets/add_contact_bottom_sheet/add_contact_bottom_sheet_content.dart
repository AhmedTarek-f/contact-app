import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/bottom_sheet_user_card.dart';
import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_details_form.dart';
import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:flutter/material.dart';

class AddContactBottomSheetContent extends StatelessWidget {
  const AddContactBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.getWidth(context),
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.getWidth(context)*0.0398,
          vertical: ScreenSize.getHeight(context)*0.0183
      ),
      decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(ScreenSize.getWidth(context)*0.0995),
              topLeft: Radius.circular(ScreenSize.getWidth(context)*0.0995)
          )
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: ScreenSize.getKeyBoardHeight(context)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetUserCard(),
            SizedBox(height: ScreenSize.getHeight(context)*0.0183,),
            const UserDetailsForm(),
          ],
        ),
      ),
    );
  }
}


