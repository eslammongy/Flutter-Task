import 'package:flutter/material.dart';
import 'package:flutter_task/constants/constants.dart';

abstract class AppTextStyles {
  static TextStyle styleRegular32(context) {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      fontFamily: commonFM,
    );
  }

  static TextStyle styleRegular24(context) {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      height: 0.22,
      fontFamily: commonFM,
    );
  }

  static TextStyle styleRegular18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      height: 0.26,
      fontFamily: commonFM,
    );
  }

  static TextStyle styleRegular14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 0.22,
      fontFamily: commonFM,
    );
  }

  static TextStyle styleRegular12(context) {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 0.18,
      fontFamily: commonFM,
    );
  }

  static TextStyle styleMedium14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 0.18,
      fontFamily: commonFM,
    );
  }

  static TextStyle styleMedium14_22(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 0.22,
      fontFamily: commonFM,
    );
  }
}
