import 'package:get/get.dart';

import 'logic.dart';

class StartUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartUpLogic());
  }
}
