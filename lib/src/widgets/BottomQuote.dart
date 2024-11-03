
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/app_const.dart';

class BottomQuote extends StatelessWidget {
  const BottomQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      height: 35,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Text(
        'ឧត្តមភាព គុណភាព សុចរិតភាព សមធម៌ នវានុវត្តន៍',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          fontFamily: "Battambang",
        ),
      ),
    );
  }
}
