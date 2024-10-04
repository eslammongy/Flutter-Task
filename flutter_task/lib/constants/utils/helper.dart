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
