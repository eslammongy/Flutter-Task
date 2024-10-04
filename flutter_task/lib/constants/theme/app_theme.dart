import 'package:flutter/material.dart';

class AppThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
  static ThemeData lightTheme = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkTheme = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      cardColor: colorScheme.surfaceContainer,
      scaffoldBackgroundColor: colorScheme.surface,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFFFC268),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Colors.white,
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    surfaceDim: Colors.white,
    surfaceTint: Color(0xff999999),
    onSurface: Color(0xFF070707),
    surfaceContainer: Color.fromARGB(255, 215, 215, 215),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFFC268),
    secondary: Color(0xFF854422),
    surface: Color(0xFF000000),
    onSurface: Color(0xFFFFFFFF),
    error: Colors.red,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    surfaceDim: Colors.white,
    surfaceTint: Color(0xff999999),
    surfaceContainer: Color(0xff171717),
    brightness: Brightness.dark,
  );
}
