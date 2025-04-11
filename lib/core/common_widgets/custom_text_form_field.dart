import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.hintText, this.keyboardInputType, this.onChanged, this.validator});
  final String? hintText;
  final TextInputType? keyboardInputType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppFonts.fontSize16Medium.copyWith(color: AppColors.lightBlue),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardInputType,
      decoration: InputDecoration(
          hintText: hintText
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}