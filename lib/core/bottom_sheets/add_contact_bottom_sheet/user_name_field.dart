import 'package:contact_app/core/common_widgets/custom_text_form_field.dart';
import 'package:contact_app/core/utlis/validations.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return CustomTextFormField(
      hintText: "Enter User Name",
      keyboardInputType: TextInputType.text,
      onChanged: (value) => controller.changeUserNameContent(content: value),
      validator: (value) => Validations.userNameValidation(userName: value),
    );
  }
}