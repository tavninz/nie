import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ScanSuccessPage extends StatelessWidget {
  ScanSuccessPage({Key? key}) : super(key: key);

  final logic = Get.find<ScanSuccessLogic>();
  final state = Get.find<ScanSuccessLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          width: Get.width,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                // Grey shadow with 50% opacity
                spreadRadius: 5,
                // How far the shadow spreads
                blurRadius: 7,
                // The blurring radius of the shadow
                offset: Offset(0, 3), // Offset of the shadow (x, y)
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.isOutSide == true
                    ? Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 40,
                      )
                    : Icon(
                        Icons.check_circle_outline_rounded,
                        color: Colors.green,
                        size: 40,
                      ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  state.isOutSide == true ? "Sorry" : "Thank You",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
                Text(
                  "${state.massage.value}",
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: state.isOutSide == true
                      ? Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
