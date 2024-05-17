import 'package:flutter/material.dart';

class AppColors {
  static const Color text = Color(0xFF001F24);
  static const Color surface = Color(0xFFF6FAFE);
  static const Color activeButtonNavBar = Color(0xFF8ECFF2);
  static const Color buttonBackground = Color(0xFF196585);
  static const Color primaryContainer = Color(0xFFC2E8FF);
}

// TODO: zu widget
class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText(this.text, {super.key, this.fontSize = 12});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
          color: AppColors.text,
        ),
      );
}

final ThemeData appThemeData = ThemeData(
  primarySwatch: Colors.blue,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF001F24),
    secondary: Color(0xFF196585),
    surface: Color(0xFFF6FAFE),
    onSurface: Color(0xFF001F24),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      fontWeight: FontWeight.normal,
      color: Color(0xFF001F24),
    ),
  ),
);
