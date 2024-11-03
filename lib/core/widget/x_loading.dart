import 'package:get/get.dart';

import '../../gen/assets.gen.dart';
import '../utils/app_color.dart';
import '../utils/app_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class xLoading extends StatelessWidget {
  const xLoading({Key? key, this.size = 100, this.color}) : super(key: key);

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    /*return SizedBox(
      height: Get.height * 0.7,
      child: Center(
        child: Container(
          width: size + 10..d,
          height: size + 10..d,
          padding: EdgeInsets.all(5.0.d),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // SpinKitDualRing(
              //   size: size - 5.0.d,
              //   lineWidth: 5.0.d,
              //   duration: const Duration(milliseconds: 1800),
              //   color: color ?? AppColor.primary,
              // ),
              SizedBox.square(
                dimension: size - 2.0.d,
                child: Image.asset(
                  Assets.gif.cmrtLoading.path,
                  width: 20.0.d,
                  height: 20.0.d,
                ),
              ),
            ],
          ),
        ),
      ),
    );*/
    return SizedBox(
      height: Get.height * 0.7,
      child: Image.asset(
        Assets.gif.cmrtLoading.path,
        width: 100.0.d,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
