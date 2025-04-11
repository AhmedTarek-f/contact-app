import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_email_field.dart';
import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_name_field.dart';
import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_phone_field.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views/widgets/enter_user_button.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsForm extends StatelessWidget {
  const UserDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return Form(
      key: controller.userFormKey,
      child: Column(
        children: [
         const UserNameField(),
          SizedBox(height: ScreenSize.getHeight(context)*0.00915,),
          const UserEmailField(),
          SizedBox(height: ScreenSize.getHeight(context)*0.00915,),
          const UserPhoneField(),
          SizedBox(height: ScreenSize.getHeight(context)*0.0183,),
          const EnterUserButton()
        ],
      ),
    );
  }
}