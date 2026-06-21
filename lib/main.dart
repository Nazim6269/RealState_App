import 'package:flutter/material.dart';
import 'package:real_estate/home_screen.dart';
import 'package:real_estate/splash_screen.dart';
import 'app_colors.dart';

void main() {
  runApp(const RealState());
}

class RealState extends StatelessWidget {
  const RealState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RealState',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.offWhite,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.navy,
          primary: AppColors.navy,
          secondary: AppColors.gold,
        ),
      ),
      home: SplashScreen(nextScreen: const HomeScreen()),
    );
  }
}
