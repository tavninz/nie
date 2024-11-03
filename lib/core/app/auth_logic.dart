
import 'package:get/get.dart';

import '../../src/data/local/user_cache.dart';
import '../../src/model/response/user_response/user_response.dart';
import '../../src/route/app_navigation.dart';
import '../local_config/hive_manager.dart';

class AuthLogic extends GetxController {
  final UserCache _userCache;
  final _user = Rxn<UserResponse>();

  AuthLogic(
    this._userCache,
  );

  UserResponse? get user => _user();

  set user(UserResponse? user) {
    _user(user);
    update();
  }

  Future<void> logout({bool clearUserData = false}) async {
    clearManager(clearUserData: clearUserData);
    Get.offAllNamed(AppNavigation.LOGIN);
  }

  Future<void> clearManager({bool clearUserData = false}) {
    // final locale = AppLocal.getLanguage();
    final futures = Future.wait([
      if (clearUserData) HiveManager.clearAllBox(),
      // _secureStorage.delete(key: AppStorageKey.accessToken),
      // NotificationService.deleteToken(),
    ]);
    return futures;
  }
}
