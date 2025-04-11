import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return SizedBox(
      width: ScreenSize.getWidth(context),
      height: ScreenSize.getHeight(context)*0.03546,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0199))
          ),
          onPressed: (){
            controller.deleteUser(index: index);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.deleteIcon),
              SizedBox(width: ScreenSize.getWidth(context)*0.0199,),
              Text(
                "Delete",
                style: AppFonts.fontSize10Medium.copyWith(color: AppColors.white),
              )
            ],
          )
      ),
    );
  }
}