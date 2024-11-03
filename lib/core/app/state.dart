import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_const.dart';

class AppState {
  /// Define an observable variable to hold the current theme data
  Rx<ThemeData> themeData = ThemeData.light().obs;
  Uint8List? markIcons;
}
