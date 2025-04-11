import 'package:contact_app/features/home/presentation/views/widgets/home_floating_action_button.dart';
import 'package:contact_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:contact_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: const Scaffold(
        floatingActionButton: HomeFloatingActionButton(),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}