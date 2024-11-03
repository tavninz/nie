
import 'package:attendence/core/utils/app_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var textTheme = Theme.of(Get.context!).textTheme;

TextStyle? textDisplayLarge(
        {Color? color, FontWeight? fontWeight, double? fontSize}) =>
    textTheme.displayLarge?.copyWith(
        color: color,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: fontSize ?? 30.0.d);

TextStyle? textDisplayMedium(
        {Color? color, FontWeight? fontWeight, double? fontSize}) =>
    textTheme.displayMedium?.copyWith(
        color: color,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: fontSize ?? 20.0.d);

TextStyle? textDisplaySmall(
        {Color? color, FontWeight? fontWeight, double? fontSize}) =>
    textTheme.displaySmall?.copyWith(
        color: color, fontWeight: fontWeight, fontSize: fontSize ?? 15.0.d);
