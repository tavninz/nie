
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/response/user_response/user_response.dart';

class LoginState {
  RxBool isPasswordVisible = false.obs;
  var user = UserResponse().obs;
}
