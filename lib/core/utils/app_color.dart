import 'dart:ui';
import 'package:flutter/material.dart';

class AppColor {
  static MaterialColor get primary => MaterialColor(
      CompanyColor.CHIPMONG_RETAIL.value,
      Map.fromIterables(List.generate(10, (i) => i * 100),
          List.filled(10, Color(CompanyColor.CHIPMONG_RETAIL.value))));
  static Color primary25 = const Color(0xFF0367A6);
}

class CompanyColor {
  static const CHIPMONG_GROUP = Color(0xFF009041);
  static const CHIPMONG_INDUSTRIES = Color(0xFFF15323);
  static const CHIPMONG_INSEE = Color(0xFFD51F36);
  static const CHIPMONG_RETAIL = Color(0xFF0367A6);
  static const CHIPMONG_LAND = Color(0xFF16478E);
  static const CHIPMONG_TRADING = Color(0xFF958C8D);
}
