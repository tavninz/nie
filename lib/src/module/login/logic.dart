
import 'package:get/get.dart';

import '../../../core/widget/snackbar.dart';
import '../../data/network/repo/auth_repo.dart';
import 'state.dart';

class LoginLogic extends GetxController {
  final AuthRepo _authRepo;
  final LoginState state = LoginState();

  LoginLogic(this._authRepo);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  // Observable variables to track error states
  var usernameError = RxString("");
  var passwordError = RxString("");

  Future<void> onLogin({String? userName, String? password}) async {
    // Validate the fields
    if ((userName ?? "").isEmpty) {
      usernameError.value = "Username cannot be empty";
    }
    if ((password ?? "").isEmpty) {
      passwordError.value = "Password cannot be empty";
    }
    try {
      if (usernameError.value != "" || passwordError.value != "") {
        return;
      }
      var result =
          await _authRepo.login(userName: userName, password: password);
      if (result != null) {
        state.user.value = result;
      }
    } catch (e) {
      showCustomSnackBar(
        isError: true,
        title: "Error",
        message: e.toString(),
      );
    }
  }

  void onShowPassword() {
    state.isPasswordVisible.value = !state.isPasswordVisible.value;
    update();
  }
}
