
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/local/user_cache.dart';
import 'state.dart';

class SettingsLogic extends GetxController {
  final SettingsState state = SettingsState();

  void changeLanguage(String langCode) {
    var locale = Locale(langCode);
    Get.find<UserCache>().setLanguage(langCode);
    Get.updateLocale(locale);
    update();
  }
}
