
import 'package:logger/logger.dart';

import '../../src/data/local/user_cache.dart';
import '../local_config/hive_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../utils/app_log.dart';
import 'auth_logic.dart';
import 'logic.dart';

initServices() async {
  xLog(message: "Starting services ⚙️");

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.put(HiveManager.init(), permanent: true);
  xLog(message: "DB Done ✅");
  Get.put(UserCache());
  Get.put(AppLogic(), permanent: true);
  Get.put(AuthLogic(Get.find()));

  xLog(message: "Theme Done ✅");

  xLog(message: "All services started ✅");
}
