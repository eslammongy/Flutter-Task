import 'package:flutter/material.dart';
import '../../constants/utils/helper.dart';
import 'package:flutter_task/constants/app_assets.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.black,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(), // Space between logo and menu items
            buildSvgIconBtn(iconPath: AppAssets.settingIcon, onPressed: () {}),

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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
