import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/home/widgets/menu_taps.dart';
import 'package:flutter_task/home/widgets/mobile_appbar.dart';

class MediumHomeScreen extends StatelessWidget {
  const MediumHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Logo
              SvgPicture.asset(
                AppAssets.logo,
                height: 30,
                fit: BoxFit.contain,
              ),
              const Spacer(), // Space between logo and menu items
              const MenuTaps(),
              buildSvgIconBtn(
                  iconPath: AppAssets.settingIcon, onPressed: () {}),

              buildSvgIconBtn(
                  iconPath: AppAssets.notificationIcon, onPressed: () {}),
              buildVerticalLine(),
              // Profile Icon
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(AppAssets.user),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(
              kToolbarHeight - 45), // Height of the bottom line
          child: Container(
            color: theme.colorScheme.surfaceTint, // Line color
            height: 0.3, // Thickness of the line
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Weather Icon, Temp, and Date
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent.withOpacity(0.2),
              ),
              child: const Column(
                children: [
                  SizedBox(height: 10),
                  Text('24°C',
                      style: TextStyle(
                          fontSize: 48, fontWeight: FontWeight.bold)), // Temp
                  SizedBox(height: 5),
                  Text('Sept 17, 2024', style: TextStyle(fontSize: 20)), // Date
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Grid for other weather data
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent.withOpacity(0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
