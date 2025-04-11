import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/add_contact_bottom_sheet_content.dart';
import 'package:contact_app/core/bottom_sheets/open_image_picker_bottom_sheet/open_image_picker_content.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class AppBottomSheets{

  static Future addContactBottomSheet({required BuildContext context ,required HomeCubit homeController}){
    return showModalBottomSheet(
      context: context,
      builder: (context) => BlocProvider<HomeCubit>.value(
        value: homeController,
          child: const AddContactBottomSheetContent()
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0995)),
      isScrollControlled: true
    );
  }

  static Future openImagePickerBottomSheet({required BuildContext context ,required HomeCubit homeController}){
    return showModalBottomSheet(
        context: context,
        builder: (context) => BlocProvider<HomeCubit>.value(
            value: homeController,
            child: const OpenImagePickerContent()
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0495)),
    );
  }

}