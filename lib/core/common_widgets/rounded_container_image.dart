import 'package:contact_app/core/utlis/screen_size.dart';
import 'package:flutter/material.dart';

class RoundedContainerImage extends StatelessWidget {
  const RoundedContainerImage({super.key, required this.image, this.fit = BoxFit.cover,this.onTap});
  final String image;
  final BoxFit fit;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.getWidth(context)*0.2,
      height: ScreenSize.getHeight(context)*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            image,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
