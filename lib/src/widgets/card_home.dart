
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/app_const.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key, this.title, this.icon, this.onTap});

  final void Function()? onTap;
  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        alignment: Alignment.center,
        width: Get.width,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFFFFFFF),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? "",
              style: TextStyle(
                fontSize: Get.locale?.languageCode == AppConst.englishCode
                    ? 30.0
                    : 35.0,
                color: Color(0xFF0367A6),
                fontFamily: Get.locale?.languageCode == AppConst.englishCode
                    ? "Poppins"
                    : "Battambang",
              ),
            ),
            Icon(
              icon ?? Icons.qr_code_scanner_sharp,
              size: 50,
              color: Color(0xFF0367A6),
            )
          ],
        ),
      ),
    );
  }
}
