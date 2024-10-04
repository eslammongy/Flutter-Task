import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/utils/size_config.dart';

IconButton buildSvgIconBtn({
  required String iconPath,
  required void Function()? onPressed,
}) {
  return IconButton(
    icon: SvgPicture.asset(iconPath),
    onPressed: onPressed,
  );
}

Container buildVerticalLine() {
  return Container(
    height: 30, // Adjust the height based on design
    width: 0.3, // Thin vertical line
    color: Colors.white, // Line color
    margin: const EdgeInsets.symmetric(horizontal: 16.0),
  );
}

int setCrossAxisCount(double width) {
  if (width < SizeConfig.tablet) {
    return 1;
  } else if (width < SizeConfig.desktop) {
    return 2;
  } else {
    return 4;
  }
}

boxDecoration(ThemeData theme) => BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: theme.colorScheme.surfaceContainer.withOpacity(0.4),
          offset: const Offset(0, -8),
          blurRadius: 2,
          spreadRadius: 12,
        ),
        BoxShadow(
          color: theme.colorScheme.surfaceContainer.withOpacity(0.85),
          offset: const Offset(0, 18),
          blurRadius: 12,
          spreadRadius: 16,
        ),
      ],
    );

get textShadow => [
      const Shadow(
        offset: Offset(4.0, 4.0), // Position of shadow (x, y)
        blurRadius: 10.0, // Softness of the shadow
        color: Color(0xFF000000), // Shadow color
      ),
    ];
