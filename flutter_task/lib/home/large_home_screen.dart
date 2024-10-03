import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/constants/app_assets.dart';

class LargeHomeScreen extends StatelessWidget {
  const LargeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black, // Black background color
      titleSpacing: 0, // No spacing for the logo
      title: Row(
        children: [
          // Logo
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'logo',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(), // Space between logo and menu items

          // Menu items
          TextButton(
            onPressed: () {},
            child: const Text('Items', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Pricing', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Info', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Tasks', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child:
                const Text('Analytics', style: TextStyle(color: Colors.white)),
          ),

          const Spacer(), // Space between menu items and icons

          // Icons
          IconButton(
            icon: SvgPicture.asset(AppAssets.settingIcon),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(AppAssets.notificationIcon),
            onPressed: () {},
          ),
          // Profile Icon
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(AppAssets.user),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
