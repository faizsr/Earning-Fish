import 'package:flutter/material.dart';

class AppTextstyles {
  static const TextStyle bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle medium13 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static TextStyle medium16([Color? color]) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static const TextStyle medium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle regularLight10([Color? color]) => TextStyle(
        color: color ?? const Color(0xFFA5A2A1),
        fontSize: 10,
      );

  static TextStyle regularLight13([Color? color]) => TextStyle(
        fontSize: 13,
        color: color ?? const Color(0xFF333333),
      );

  static const TextStyle regularLight14 = TextStyle(
    fontSize: 14,
    color: Color(0xFF707070),
  );
}
