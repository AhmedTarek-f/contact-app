import 'package:contact_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

sealed class AppFonts{
  static TextStyle fontSize20Medium = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.gold
  );
  static TextStyle fontSize20Normal = GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.darkBlue
  );
  static TextStyle fontSize16Medium = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.gold
  );
  static TextStyle fontSize16Normal = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.lightBlue
  );
  static TextStyle fontSize14Medium = GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlue
  );
  static TextStyle fontSize10Medium = GoogleFonts.inter(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlue
  );
}