
import 'package:get/get.dart';

import '../../data/network/repo/auth_repo.dart';
import 'logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRepo());
    Get.lazyPut(() => LoginLogic(Get.find()));
  }
}
