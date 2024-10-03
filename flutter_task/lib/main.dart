import 'package:flutter/material.dart';
import 'package:flutter_task/constants/theme/app_theme.dart';
import 'package:flutter_task/home/adaptive_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark, //or ThemeMode.dark
      theme: AppThemData.lightTheme,
      darkTheme: AppThemData.darkTheme,
      home: const AdaptiveHomeScreen(),
    );
  }
}
