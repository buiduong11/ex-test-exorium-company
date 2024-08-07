import 'package:flutter/material.dart';

class CustomTextStyles {
  static get textBottom1 => const TextStyle(
        color: Color.fromARGB(255, 118, 116, 116),
        fontSize: 12,
      );
  static get textBottom2 => const TextStyle(
        color: Color.fromARGB(255, 118, 116, 116),
        fontSize: 14,
      );
  static get textElevatedButton => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      );
  static get textBody => const TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 101, 98, 98),
        fontWeight: FontWeight.w500,
      );
  static get textHeader2 => const TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );
  static get textHeader1 => const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  static get textAppbarRight => const TextStyle(
        fontSize: 10,
        color: Colors.grey,
      );
  static get textAppbarRight1 =>
      const TextStyle(fontSize: 12, color: Colors.black);
}
