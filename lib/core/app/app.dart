
import 'package:google_fonts/google_fonts.dart';

import '../../src/route/app_navigation.dart';
import '../../src/translation/app_translation.dart';
import 'logic.dart';
import '../utils/app_const.dart';
import '../utils/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import '../widget/x_loading.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final logic = Get.find<AppLogic>();
  final state = Get.find<AppLogic>().state;

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [GestureType.onTap, GestureType.onPanUpdateDownDirection],
      child: GetMaterialApp(
        enableLog: true,
        navigatorKey: navigatorKey,
        defaultTransition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 500),
        popGesture: Get.isPopGestureEnable,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: Get.locale?.languageCode == AppConst.englishCode
              ? "Poppins"
              : "Khmer OS Muol Light",
          textTheme: TextTheme(
            titleMedium: TextStyle(
              fontFamily: Get.locale?.languageCode == AppConst.englishCode
                  ? "Poppins"
                  : "Khmer OS Muol Light",
              color: Colors.white,
            ),

            // Add other text styles if needed
          ),
        ),
        initialRoute: AppNavigation.STARTUP,
        translations: AppTranslation(),
        locale: Locale(logic.language ?? "kh"),
        getPages: AppNavigation.pages,
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(builder: (context, child) {
          return MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          );
        }),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _easyLoadingConfig();
  }

  void _easyLoadingConfig() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false;
  }
}
