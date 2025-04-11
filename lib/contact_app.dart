import 'package:contact_app/core/constants/app_colors.dart';
import 'package:contact_app/core/utlis/app_themes.dart';
import 'package:contact_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.darkBlue,
        elevatedButtonTheme: AppThemes.elevatedButtonThemeData,
        inputDecorationTheme: AppThemes.inputDecorationTheme,
        textSelectionTheme: AppThemes.textSelectionThemeData,
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}