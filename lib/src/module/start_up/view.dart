import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/local/user_cache.dart';
import '../../route/app_navigation.dart';
import 'logic.dart';

class StartUpPage extends StatefulWidget {
  StartUpPage({Key? key}) : super(key: key);

  @override
  State<StartUpPage> createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  final logic = Get.find<StartUpLogic>();
  final state = Get.find<StartUpLogic>().state;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final user = await Get.find<UserCache>().getUser();

      // Check if the user has a valid token
      if (user?.token != null) {
        // Check if the current route is not HOME
        if (Get.currentRoute != AppNavigation.HOME) {
          Get.offAllNamed(AppNavigation.HOME);
        }
      } else {
        Get.offAllNamed(AppNavigation.LOGIN);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
