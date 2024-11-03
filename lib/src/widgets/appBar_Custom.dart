import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/assets.gen.dart';

class appBarCustom extends StatelessWidget {
  const appBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        // You can change the radius here
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "កម្មវិធីគ្រប់គ្រងវត្តមាន",
            style: TextStyle(
                fontFamily: "Khmer OS Muol Light",
                fontSize: 20,
                color: Color(0xFF0367A6)),
          ),
          SizedBox(
            width: 20,
          ),
          Image.asset(
            Assets.png.nieLogo.path,
            width: 30,
          )
        ],
      ),
    );
  }
}
