import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../constants/utils/helper.dart';
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
        padding: const EdgeInsets.only(
          right: 16.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppAssets.logo,
              height: 40,
              fit: BoxFit.contain,
            ),
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
        child: Divider(
          height: 1,
          thickness: 1,
          color: theme.colorScheme.scrim,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
