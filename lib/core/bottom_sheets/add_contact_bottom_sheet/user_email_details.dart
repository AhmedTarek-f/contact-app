import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserEmailDetails extends StatelessWidget {
  const UserEmailDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) => current is ChangeUserEmailFieldContentState,
      builder: (context, state) => FittedBox(
        child: Text(
          (controller.userEmail?.trim().isNotEmpty ?? false)?
          controller.userEmail! :
          "example@email.com",
          style: AppFonts.fontSize16Medium,
        ),
      ),
    );
  }
}