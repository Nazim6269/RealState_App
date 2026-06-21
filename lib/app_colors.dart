import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Brand
  static const Color navyDark = Color(0xFF0A1B33);
  static const Color navy = Color(0xFF0F2747);
  static const Color navyLight = Color(0xFF1C3A63);

  // Accent
  static const Color gold = Color(0xFFD4AF37);
  static const Color goldLight = Color(0xFFE9CE7C);
  static const Color goldDark = Color(0xFFA8862B);

  // Neutral
  static const Color offWhite = Color(0xFFF7F5F0);
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // Text
  static const Color textPrimary = navyDark;
  static const Color textSecondary = Color(0xFF6B7280);

  // Background
  static const Color background = Color(0xFF0F172A);
  static const Color card = Colors.white;

  // Border
  static const Color border = Color(0xFFE5E7EB);

  static const LinearGradient navyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [navyDark, navy, navyLight],
  );
}

