import 'package:flutter/material.dart';
import 'package:flutter_task/constants/constants.dart';

abstract class AppTextStyle {
  static TextStyle get styleRegular32 {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      fontFamily: commonFM,
    );
  }

  static TextStyle get styleRegular24 {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      height: 0.22,
      fontFamily: commonFM,
    );
  }

  static TextStyle get styleRegular18 {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      height: 0.26,
      fontFamily: commonFM,
    );
  }

  static TextStyle get styleRegular14 {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 0.22,
      fontFamily: commonFM,
    );
  }

  static TextStyle get styleRegular12 {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 0.18,
      fontFamily: commonFM,
    );
  }

  static TextStyle get styleMedium14 {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 0.18,
      fontFamily: commonFM,
    );
  }

  static TextStyle get styleMedium14_22 {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 0.22,
      fontFamily: commonFM,
    );
  }
}
