import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_const.dart';
import '../../../gen/assets.gen.dart';
import '../../translation/app_locale.dart';
import '../../widgets/BottomQuote.dart';
import 'logic.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final logic = Get.find<LoginLogic>();
  final state = Get.find<LoginLogic>().state;
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final FocusNode userFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
  final ScrollController scrollController = ScrollController();

  Color _textColor = Colors.black;

  @override
  void dispose() {
    userFocusNode.dispose();
    passFocusNode.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Container(
                  color: AppColor.primary,
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: GetBuilder<LoginLogic>(builder: (logic) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: Get.width,
                              height: 270,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Assets.png.nieLogo.path,
                                    width: 120,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    "ប្រព័ន្ធគ្រប់គ្រងវត្តមាន",
                                    style: TextStyle(
                                        fontFamily: "Khmer OS Muol Light",
                                        fontSize: 25,
                                        color: Color(0xFF0367A6)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocale.username.tr,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Color(0xFFFFFFFF),
                                      fontFamily: Get.locale?.languageCode ==
                                              AppConst.englishCode
                                          ? "Poppins"
                                          : "Battambang",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Obx(() {
                                    return TextField(
                                      focusNode: userFocusNode,
                                      onChanged: (value) {
                                        if (value != null) {
                                          logic.usernameError.value = "";
                                          _textColor = Colors.black;
                                        }
                                      },
                                      style: TextStyle(color: _textColor),
                                      decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Colors.blue),
                                          errorText: logic.usernameError.value,
                                          hintText: 'Enter your username',
                                          focusColor: Colors.purple,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          prefixIcon: const Icon(Icons.person,
                                              color: Colors.blue),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.grey, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: logic
                                                  .usernameError.value.isEmpty
                                              ? OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey,
                                                      width: 1.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                )
                                              : OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.red,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.redAccent,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white),
                                      controller: userController,
                                    );
                                  }),
                                  const SizedBox(height: 20),
                                  Text(
                                    AppLocale.password.tr,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Color(0xFFFFFFFF),
                                      fontFamily: Get.locale?.languageCode ==
                                              AppConst.englishCode
                                          ? "Poppins"
                                          : "Battambang",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Obx(() {
                                    return TextField(
                                      focusNode: passFocusNode,
                                      obscureText:
                                          !state.isPasswordVisible.value,
                                      controller: passController,
                                      onChanged: (value) {
                                        if (value != null) {
                                          logic.passwordError.value = "";
                                          _textColor = Colors.black;
                                        }
                                      },
                                      style: TextStyle(color: _textColor),
                                      decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Colors.blue),
                                          errorText: logic.passwordError.value,
                                          hintText: 'Enter your password',
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          prefixIcon: const Icon(Icons.lock,
                                              color: Colors.blue),
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              state.isPasswordVisible.value
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              logic.onShowPassword();
                                            },
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.blue, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.grey, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: logic
                                                  .passwordError.value.isEmpty
                                              ? OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey,
                                                      width: 1.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                )
                                              : OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.red,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.redAccent,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          fillColor: Colors.white,
                                          filled: true),
                                    );
                                  }),
                                  const SizedBox(height: 30),
                                  GestureDetector(
                                    onTap: () {
                                      logic.onLogin(
                                        userName: userController.text,
                                        password: passController.text,
                                      );
                                    },
                                    child: Container(
                                      width: Get.width,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(20)
                                          // You can change the radius here
                                          ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppLocale.login.tr,
                                            style: TextStyle(
                                              color: Color(0xFF0367A6),
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  Get.locale?.languageCode ==
                                                          AppConst.englishCode
                                                      ? "Poppins"
                                                      : "Battambang",
                                            ),
                                          ),
                                          SizedBox(width: 20.0),
                                          Icon(
                                            size: 37.0,
                                            Icons.login,
                                            color: Color(0xFF0367A6),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: BottomQuote(),
            ),
          ],
        ),
      ),
    );
  }
}
