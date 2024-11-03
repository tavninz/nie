
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../core/network_config/api_handler.dart';
import '../../../../core/widget/snackbar.dart';
import '../../../model/response/user_response/user_response.dart';
import '../../../route/app_navigation.dart';
import '../../local/user_cache.dart';
import '../api_endpoint.dart';
import '../enum_end_point.dart';

abstract class IAuthRepo {
  Future<UserResponse?> login({String? userName, String? password});
}

class AuthRepo implements IAuthRepo {
  @override
  Future<UserResponse?> login({String? userName, String? password}) async {
    ApiHandler<UserResponse> handler = ApiHandler<UserResponse>.post(
        converter: (value) => UserResponse.fromJson(value));
    EasyLoading.show();
    var result = await handler.execute(
        onComplete: (data) {
          var user = data;
          if (user.token != null) {
            Get.find<UserCache>().setUser(user);
            Get.offAllNamed(AppNavigation.HOME);
          } else {
            showCustomSnackBar(
              isError: true,
              title: "Error",
              message: "username or password incorrect",
            );
          }

          EasyLoading.dismiss();
        },
        onFail: (e) {
          showCustomSnackBar(
            isError: true,
            title: "Error",
            message: e.toString(),
          );
          EasyLoading.dismiss();
        },
        body: {"username": userName, "password": password},
        endPoint: ApiEndpoint.auth(AuthEndpoint.LOGIN));
    return result;
  }
}
