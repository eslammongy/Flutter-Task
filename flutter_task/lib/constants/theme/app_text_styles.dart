import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle styleRegular32(context) {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular24(context) {
    return const TextStyle(
        fontSize: 24, fontWeight: FontWeight.w400, height: 0.22);
  }

  static TextStyle styleRegular18(context) {
    return const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w400, height: 0.26);
  }

  static TextStyle styleRegular14(context) {
    return const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, height: 0.22);
  }

  static TextStyle styleRegular12(context) {
    return const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w400, height: 0.18);
  }

  static TextStyle styleMedium14(context) {
    return const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, height: 0.18);
  }

  static TextStyle styleMedium14_22(context) {
    return const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, height: 0.22);
  }
}
