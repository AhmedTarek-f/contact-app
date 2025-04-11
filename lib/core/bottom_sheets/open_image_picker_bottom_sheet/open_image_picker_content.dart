import 'package:contact_app/core/common_widgets/rounded_container_image.dart';
import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpenImagePickerContent extends StatelessWidget {
  const OpenImagePickerContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return Container(
      height: ScreenSize.getHeight(context)*0.16,
      padding: EdgeInsets.symmetric(
          vertical: ScreenSize.getHeight(context)*0.0183
      ),
      decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(ScreenSize.getWidth(context)*0.0495),
              topLeft: Radius.circular(ScreenSize.getWidth(context)*0.0495)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundedContainerImage(
            onTap: () async{
             await controller.pickGalleryImage(context: context);
            },
              image: AppImages.galleryIcon,
          ),
          RoundedContainerImage(
            onTap: ()async{
              await controller.pickCameraImage(context: context);
            },
            image: AppImages.cameraIcon,
          ),
        ],
      ),
    );
  }
}
