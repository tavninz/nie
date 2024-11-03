
import 'package:get/get.dart';

import '../../data/network/repo/attendance_repo.dart';
import 'logic.dart';

class ScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceRepo());
    Get.lazyPut(() => ScanLogic(Get.find()));
  }
}
