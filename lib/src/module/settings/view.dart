import 'dart:io'; // Required for exit(0)

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart'; // Required for SystemNavigator.pop()

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_const.dart';
import '../../../gen/assets.gen.dart';
import '../../translation/app_locale.dart';
import '../../widgets/BottomQuote.dart';
import '../../widgets/appBar_Custom.dart';
import 'logic.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  final logic = Get.find<SettingsLogic>();
  final state = Get.find<SettingsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: AppColor.primary,
              width: Get.width,
              height: Get.height,
              child: GetBuilder<SettingsLogic>(builder: (logic) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        appBarCustom(),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            alignment: Alignment.center,
                            width: Get.width,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Text(
                              AppLocale.change_language.tr,
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Color(0xFF0367A6),
                                fontFamily: Get.locale?.languageCode ==
                                        AppConst.englishCode
                                    ? "Poppins"
                                    : "Battambang",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            alignment: Alignment.center,
                            width: Get.width,
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    logic.changeLanguage(AppConst.khmerCode);
                                    // Add logic to save language preference and restart app if necessary.
                                  },
                                  child: ListTile(
                                    title: Text(
                                      AppLocale.khmer.tr,
                                      style: TextStyle(
                                        fontFamily: Get.locale?.languageCode ==
                                                AppConst.englishCode
                                            ? "Poppins"
                                            : "Battambang",
                                      ),
                                    ),
                                    trailing: Get.locale?.languageCode ==
                                            AppConst.khmerCode
                                        ? Icon(
                                            Icons.check,
                                            color: Colors.blueAccent,
                                          )
                                        : null,
                                  ),
                                ),
                                ListTile(
                                  onTap: () {
                                    logic.changeLanguage(AppConst.englishCode);
                                  },
                                  title: Text(
                                    AppLocale.english.tr,
                                    style: TextStyle(
                                      fontFamily: Get.locale?.languageCode ==
                                              AppConst.englishCode
                                          ? "Poppins"
                                          : "Battambang",
                                    ),
                                  ),
                                  trailing: Get.locale?.languageCode ==
                                          AppConst.englishCode
                                      ? Icon(
                                          Icons.check,
                                          color: Colors.blueAccent,
                                        )
                                      : null,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                );
              }),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            left: 0,
            child: Center(
                child: Text(
              AppLocale.version.tr,
              style: TextStyle(
                color: Colors.white,
                fontFamily: Get.locale?.languageCode == AppConst.englishCode
                    ? "Poppins"
                    : "Battambang",
              ),
            )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: BottomQuote(),
          )
        ],
      ),
    );
  }
}
