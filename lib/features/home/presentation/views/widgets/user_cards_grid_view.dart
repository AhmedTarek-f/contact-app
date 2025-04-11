import 'package:contact_app/core/common_widgets/animation_loader.dart';
import 'package:contact_app/core/constants/app_images.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:contact_app/features/home/presentation/views/widgets/user_card_item.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCardsGridView extends StatelessWidget {
  const UserCardsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) => current is AddingNewUserState || current is DeletingUserState,
      builder: (context, state) => controller.users.isEmpty?
      Padding(
        padding: EdgeInsets.only(
          top:  controller.users.isEmpty? ScreenSize.getHeight(context)*0.1242:ScreenSize.getHeight(context)*0.03,
          right: ScreenSize.getWidth(context)*0.0398,
          left: ScreenSize.getWidth(context)*0.0398,
        ),
        child: const AnimationLoader(
          animationPath: AppImages.emptyListAnimation,
          title: "There is No Contacts Added Here",
        ),
      ) :
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(
            top:  controller.users.isEmpty? ScreenSize.getHeight(context)*0.1242:ScreenSize.getHeight(context)*0.03,
            right: ScreenSize.getWidth(context)*0.0398,
            left: ScreenSize.getWidth(context)*0.0398,
          ),
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/1.65,
              crossAxisSpacing: ScreenSize.getWidth(context)*0.0398,
              mainAxisSpacing: ScreenSize.getHeight(context)*0.0183,
            ),
            itemBuilder: (_, index) => UserCardItem(userData: controller.users[index],index: index,),
            itemCount: controller.users.length,
          ),
        ),
      ),
    );
  }
}