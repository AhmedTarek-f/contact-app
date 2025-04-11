import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLoader extends StatelessWidget {
  const AnimationLoader({super.key, required this.animationPath, this.title});
  final String animationPath;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          animationPath,
        ),
        title != null? Text(
          title!,
          style: AppFonts.fontSize20Medium,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ):
        const SizedBox.shrink(),
      ],
    );
  }
}