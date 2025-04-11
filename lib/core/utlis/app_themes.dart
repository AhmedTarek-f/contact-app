import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

abstract final class AppThemes{

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.darkBlue,
    filled: true,
    hintStyle: AppFonts.fontSize16Normal.copyWith(color: AppColors.white.withValues(alpha: 0.6)),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
    border: outlineInputBorder(),
    errorBorder: outlineInputBorder(borderColor: AppColors.red),
    contentPadding: const EdgeInsets.all(16),
  );

  static OutlineInputBorder outlineInputBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(width: 2,color: borderColor ?? AppColors.gold),
    );
  }

  static TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
    cursorColor: AppColors.gold,
    selectionHandleColor: AppColors.lightBlue,
    selectionColor: AppColors.gold.withValues(alpha: 0.6),
  );

  static ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.gold,
      foregroundColor: AppColors.darkBlue,
      overlayColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(16),
    )
  );

}