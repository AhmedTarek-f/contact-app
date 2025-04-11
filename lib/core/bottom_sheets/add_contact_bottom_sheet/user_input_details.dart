import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_email_details.dart';
import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_name_details.dart';
import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_phone_details.dart';
import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInputDetails extends StatelessWidget {
  const UserInputDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) => Padding(
        padding: EdgeInsets.only(
            left: ScreenSize.getWidth(context)*0.012437,
            right: ScreenSize.getWidth(context)*0.0572
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserNameDetails(),
            Divider(
              color: AppColors.gold,
              height: ScreenSize.getHeight(context)*0.033,
            ),
            const UserEmailDetails(),
            Divider(
              color: AppColors.gold,
              height: ScreenSize.getHeight(context)*0.033,
            ),
            const UserPhoneDetails()
          ],
        ),
      ),
    );
  }
}