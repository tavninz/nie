import '../../const/app_const.dart';
import '../utils/app_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showCustomSnackBar({
  required String title,
  required String message,
  Color? backgroundColor,
  Color? color,
  bool isError = false,
  IconData? icons = Icons.sms_outlined,
}) {
  if (isError) {
    icons = Icons.error_outline;
  }
  Get.snackbar(title, message,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 2),
      backgroundColor: isError ? Colors.red : AppConst.pramiry,
      colorText: color ?? Colors.white,
      icon: Icon(icons, color: color ?? Colors.white),
      margin: EdgeInsets.symmetric(vertical: 5.0.d, horizontal: 2.0.d));
}
