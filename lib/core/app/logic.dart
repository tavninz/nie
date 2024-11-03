
import 'package:attendence/core/app/state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../src/data/local/user_cache.dart';
import '../utils/app_color.dart';
import '../utils/app_const.dart';

class AppLogic extends GetxController {
  var state = AppState();
  String? language;

  @override
  Future<void> onInit() async {
    super.onInit();
    language = await Get.find<UserCache>().getLanguage();
    changeThemeColor(newColor: AppColor.primary);
    update();
  }

  void changeThemeColor({required Color newColor, Brightness? brightness}) {
    state.themeData.value = ThemeData(
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
          background: Colors.white,
          seedColor: newColor,
          error: Colors.red,
          onTertiary: Colors.orange),
      useMaterial3: true,
      fontFamily: fontFamily(),
    );
    Get.changeTheme(state.themeData.value);
    update();
  }

  String fontFamily() => Get.locale == Locale(AppConst.khmerCode)
      ? AppConst.khmerFont
      : AppConst.englishFont;
}
