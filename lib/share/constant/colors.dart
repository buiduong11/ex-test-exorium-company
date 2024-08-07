import 'package:flutter/material.dart';

class ColorConstants {
  static const Color kPrimaryColor = Color(0xFF0043AB);
  static const Color kPrimaryLightColor = Color(0xFFF1E6FF);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF3A5160);
  static const Color darkerText = Color(0xFF17262A);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color greenColor = Color(0xff00FF00);
  static const Color greyColor = Color(0xffC0C0C0);
  static const Color redColor = Color(0xffFF0000);
  static const Color lightGreenColor = Color(0xFF94E059);
  static const Color orangeColor = Color(0xFFFF5630);
  static const Color lightBlueColor = Color(0xFF5C9CE4);
  static const Color green = Color(0XFF0EA772);
  static const Color blue = Colors.blue;
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
