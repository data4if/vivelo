import 'package:flutter/material.dart';

class AppTheme {
  // Constante de diseno
  static final Color primaryColor = const Color.fromRGBO(0, 99, 65, 1);
  static final Color accentColor = const Color.fromRGBO(239, 185, 38, 1);

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'AlcaldiaFont',
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch:
            Colors.green, // Use a default color for the primary swatch
        accentColor: accentColor,
        backgroundColor: primaryColor,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: accentColor,
        foregroundColor: Colors.white,
      ),
    );
  }
}
