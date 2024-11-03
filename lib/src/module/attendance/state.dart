
import 'package:get/get.dart';

import '../../model/response/attendance_item/attendance_item.dart';
import '../../model/response/attendance_response/attendance_response.dart';

class AttendenceState {
  List<AttendanceItem> attendanceList = <AttendanceItem>[].obs;
  AttendanceResponse attendanceResponse = AttendanceResponse().obs();
}
