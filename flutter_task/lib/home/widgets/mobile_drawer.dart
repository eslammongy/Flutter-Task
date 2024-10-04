import 'package:flutter/material.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
            child: Center(
              child: Text(
                'Drawer Header',
                textAlign: TextAlign.center,
                style: AppTextStyle.styleRegular24,
              ),
            ),
          ),
          buildMenuListTile(context, title: "Items"),
          buildMenuListTile(context, title: "Pricing"),
          buildMenuListTile(context, title: "Info"),
          buildMenuListTile(context, title: "Tasks"),
          buildMenuListTile(context, title: "Analysis"),
        ],
      ),
    );
  }

  ListTile buildMenuListTile(
    BuildContext context, {
    bool isSelected = false,
    required String title,
  }) {
    return ListTile(
      trailing: buildVerticalLine(),
      title: Text(
        title,
        style: AppTextStyle.styleRegular14,
      ),
      onTap: () {
        // Close the drawer
        Navigator.pop(context);
      },
    );
  }
}
