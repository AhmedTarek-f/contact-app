import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/app_bottom_sheets.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) => current is AddingNewUserState || current is DeletingUserState,
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if(controller.users.isNotEmpty) FloatingActionButton(
            onPressed: (){
              controller.deleteLastAddedUser();
            },
            backgroundColor: AppColors.red,
            child: SvgPicture.asset(AppImages.deleteIcon,),
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.00915,),
          if(controller.users.length <6) FloatingActionButton(
            onPressed: (){
              AppBottomSheets.addContactBottomSheet(context: context,homeController: BlocProvider.of<HomeCubit>(context));
            },
            backgroundColor: AppColors.gold,
            child: const Icon(Icons.add,size: 28,color: AppColors.darkBlue,),
          ),
        ],
      ),
    );
  }
}