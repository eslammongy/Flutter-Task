import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/home/widgets/menu_taps.dart';
import 'package:flutter_task/constants/utils/size_config.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class LargeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LargeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.black,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Logo
            SvgPicture.asset(
              AppAssets.logo,
              height: 40,
              fit: BoxFit.contain,
            ),
            const Spacer(), // Space between logo and menu items
            const MenuTaps(),
            buildVerticalLine(),
            // Icons
            buildSvgIconBtn(iconPath: AppAssets.settingIcon, onPressed: () {}),

            buildSvgIconBtn(
                iconPath: AppAssets.notificationIcon, onPressed: () {}),
            buildVerticalLine(),
            // Profile Icon
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset(AppAssets.user),
            ),
            if (SizeConfig.width > SizeConfig.desktop)
              _buildUserProfileBtn(theme)
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize:
            const Size.fromHeight(kToolbarHeight), // Height of the bottom line
        child: Container(
          color: theme.colorScheme.surfaceTint, // Line color
          height: 0.3, // Thickness of the line
        ),
      ),
    );
  }

  TextButton _buildUserProfileBtn(ThemeData theme) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text("John Doe",
              style: AppTextStyle.styleRegular14
                  .copyWith(color: theme.colorScheme.onSecondary)),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 16,
            color: theme.colorScheme.onSecondary,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
