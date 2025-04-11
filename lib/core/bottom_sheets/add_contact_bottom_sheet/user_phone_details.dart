import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPhoneDetails extends StatelessWidget {
  const UserPhoneDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) => current is ChangeUserPhoneFieldContentState,
      builder: (context, state) => FittedBox(
        child: Text(
          (controller.userPhone?.trim().isNotEmpty ?? false)?
          controller.userPhone! :
          "+200000000000",
          style: AppFonts.fontSize16Medium,
        ),
      ),
    );
  }
}