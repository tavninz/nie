import 'package:get/get.dart';

import 'logic.dart';

class ScanSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanSuccessLogic());
  }
}
