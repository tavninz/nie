import 'package:get/get.dart';

import 'state.dart';

class ScanSuccessLogic extends GetxController {
  final ScanSuccessState state = ScanSuccessState();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    state.massage.value = Get.arguments["message"];
    state.isOutSide = Get.arguments["isoutside"];
  }
}
