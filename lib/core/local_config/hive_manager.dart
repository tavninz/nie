
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

import '../../src/model/response/user_response/user_response.dart';
import 'storage_key.dart';

class HiveManager extends GetxService {
  HiveManager();

  static Future<void> init() async {
    // Initialize Hive for the Flutter app
    await Hive.initFlutter();
    Hive.registerAdapter(UserResponseImplAdapter());

    // Register adapters for different data models
  }

  static Future<void> clearAllBox() {
    EasyLoading.show();
    final futures = <Future>[];
    try {
      final keys = [
        StorageKey.userBox,
      ];
      for (final key in keys) {
        futures.add(Hive.deleteBoxFromDisk(key));
      }
      // Wait for all the futures to complete
      EasyLoading.dismiss();
      Logger().f("Success");
    } catch (e) {
      EasyLoading.dismiss();
      Logger().e(e);
    }
    return Future.wait(futures);
  }
}
