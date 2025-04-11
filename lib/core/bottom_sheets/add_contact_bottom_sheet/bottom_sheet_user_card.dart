import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/add_image_container.dart';
import 'package:contact_app/core/bottom_sheets/add_contact_bottom_sheet/user_input_details.dart';
import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:flutter/material.dart';

class BottomSheetUserCard extends StatelessWidget {
  const BottomSheetUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.getHeight(context)*0.167,
      child: const Row(
        children: [
          AddImageContainer(),
          Expanded(child: UserInputDetails())
        ],
      ),
    );
  }
}