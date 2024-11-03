
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_const.dart';
import '../../../core/app/auth_logic.dart';
import '../../../gen/assets.gen.dart';
import '../../route/app_navigation.dart';
import '../../translation/app_locale.dart';
import '../../widgets/BottomQuote.dart';
import '../../widgets/appBar_Custom.dart';
import '../../widgets/card_home.dart';
import '../login/logic.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.find<HomeLogic>();
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: AppConst.pramiry,
            width: Get.width,
            height: Get.height,
            child: GetBuilder<HomeLogic>(builder: (logic) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const appBarCustom(),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            CardHome(
                              title: AppLocale.scan.tr,
                              icon: Icons.qr_code_scanner,
                              onTap: () {
                                Get.toNamed(AppNavigation.SCAN);
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CardHome(
                              title: AppLocale.attendance.tr,
                              icon: Icons.book,
                              onTap: () {
                                Get.toNamed(AppNavigation.ATTENDANCE);
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CardHome(
                              title: AppLocale.setting.tr,
                              icon: Icons.settings,
                              onTap: () {
                                Get.toNamed(AppNavigation.SETTINGS);
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CardHome(
                              title: AppLocale.logout.tr,
                              onTap: () {
                                Get.find<AuthLogic>()
                                    .logout(clearUserData: true);
                              },
                              icon: Icons.logout,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              );
            }),
          ),
          const Positioned(
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
