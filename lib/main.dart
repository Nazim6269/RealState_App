import 'package:flutter/material.dart';
import 'package:real_estate/app/main_navigation_shell.dart';
import 'package:real_estate/core/theme/app_theme.dart';
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
      initialRoute: '/',
      routes: {
        "/": (_) => SplashScreen(nextScreen: const MainNavigationShell()),
      },
    );
  }
}
