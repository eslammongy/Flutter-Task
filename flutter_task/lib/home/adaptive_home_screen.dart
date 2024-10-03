import 'large_home_screen.dart';
import 'small_home_screen.dart';
import 'medium_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/home/adaptive_layout.dart';
import 'package:flutter_task/constants/utils/size_config.dart';

class AdaptiveHomeScreen extends StatelessWidget {
  const AdaptiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    debugPrint("Main Screen Width::${SizeConfig.width}");
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SmallHomeScreen(),
        tabletLayout: (context) => const MediumHomeScreen(),
        desktopLayout: (context) => const LargeHomeScreen(),
      ),
    );
  }
}
