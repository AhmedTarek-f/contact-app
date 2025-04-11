import 'package:contact_app/features/home/presentation/views/widgets/route_logo.dart';
import 'package:contact_app/features/home/presentation/views/widgets/user_cards_grid_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RouteLogo(),
        UserCardsGridView()
      ],
    );
  }
}