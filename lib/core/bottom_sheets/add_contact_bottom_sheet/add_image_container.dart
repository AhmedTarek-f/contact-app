import 'dart:io';

import 'package:contact_app/core/common_widgets/animation_loader.dart';
import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/app_bottom_sheets.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddImageContainer extends StatelessWidget {
  const AddImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return GestureDetector(
      onTap: (){
        AppBottomSheets.openImagePickerBottomSheet(context: context, homeController: BlocProvider.of<HomeCubit>(context));
      },
      child: Container(
        width: ScreenSize.getWidth(context)*0.3557,
        height: ScreenSize.getHeight(context)*0.167,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0696),
            border: Border.all(width: 1,color: AppColors.gold)
        ),
        child: BlocBuilder<HomeCubit,HomeState>(
          buildWhen: (previous, current) => current is PickImageState,
          builder: (context, state) => controller.image == null?
          const AnimationLoader(animationPath: AppImages.imagePickerAnimation):
          ClipRRect(
            borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0696),
            child: Image.file(
              File(controller.image!.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}