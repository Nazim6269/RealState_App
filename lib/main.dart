import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/app_theme.dart';
import 'package:real_estate/home_screen.dart';
import 'package:real_estate/splash_screen.dart';

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
      theme: AppTheme.darkTheme,
      home: SplashScreen(nextScreen: const HomeScreen()),
    );
  }
}
