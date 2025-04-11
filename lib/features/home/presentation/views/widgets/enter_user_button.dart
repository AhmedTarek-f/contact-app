import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterUserButton extends StatelessWidget {
  const EnterUserButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return SizedBox(
      width: ScreenSize.getWidth(context),
      child: ElevatedButton(
        onPressed: (){
          controller.enterUser(context: context);
        },
        child: Text(
          "Enter user",
          style: AppFonts.fontSize20Normal,
        ),
      ),
    );
  }
}