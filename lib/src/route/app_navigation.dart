
import 'package:get/get.dart';

import '../module/attendance/binding.dart';
import '../module/attendance/view.dart';
import '../module/home/view.dart';
import '../module/login/binding.dart';
import '../module/login/view.dart';
import '../module/home/binding.dart';
import '../module/scan/binding.dart';
import '../module/scan/view.dart';
import '../module/scan_success/binding.dart';
import '../module/scan_success/view.dart';
import '../module/settings/binding.dart';
import '../module/settings/view.dart';
import '../module/start_up/binding.dart';
import '../module/start_up/view.dart';

class AppNavigation {
  AppNavigation._();

  static const LOGIN = "/login";
  static const LANDING = "/landing";
  static const HOME = "/home";
  static const SCAN = "/scan";
  static const STARTUP = "/start_up";
  static const ATTENDANCE = "/attendance";
  static const SETTINGS = "/settings";
  static const SCANSUCCESS = "/scan_success";

  static final pages = [
    //region Shared
    GetPage(name: LOGIN, page: () => LoginPage(), binding: LoginBinding()),

    GetPage(
      name: HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: SCAN,
      page: () => ScanPage(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: STARTUP,
      page: () => StartUpPage(),
      binding: StartUpBinding(),
    ),
    GetPage(
      name: ATTENDANCE,
      page: () => AttendencePage(),
      binding: AttendenceBinding(),
    ),
    GetPage(
      name: SETTINGS,
      page: () => SettingsPage(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: SCANSUCCESS,
      page: () => ScanSuccessPage(),
      binding: ScanSuccessBinding(),
    ),
  ];
}
