import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/app/main_navigation_shell.dart';
import 'package:real_estate/core/theme/app_theme.dart';
import 'package:real_estate/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: RealState()));
}

class RealState extends ConsumerWidget {
  const RealState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
