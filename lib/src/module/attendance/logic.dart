
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../data/local/user_cache.dart';
import '../../data/network/repo/attendance_repo.dart';
import 'state.dart';

class AttendenceLogic extends GetxController {
  final AttendanceRepo _attendanceRepo;
  final AttendenceState state = AttendenceState();

  @override
  Future<void> onInit() async {
    super.onInit();
    DateTime now = DateTime.now();
    var startDate =
        DateFormat("yyyy-MM-dd").format(DateTime(now.year, now.month, 1));
    var endDate =
        DateFormat("yyyy-MM-dd").format(DateTime(now.year, now.month + 1, 0));

    await getAttendanceList(fromDate: "${startDate}", toDate: "${endDate}");
  }

  AttendenceLogic(this._attendanceRepo);

  Future<void> getAttendanceList({
    String? fromDate,
    String? toDate,
  }) async {
    var user = await Get.find<UserCache>().getUser();
    var result = await _attendanceRepo.getAttendanceList(
      fromDate: fromDate,
      toDate: toDate,
      studentId: user?.studentId,
      offset: 0,
      limit: 50,
    );
    if (result != null) {
      state.attendanceList = result.data ?? [];
      state.attendanceList.sort((a, b) {
        DateTime dateA = a.createdAt ?? DateTime.now();
        DateTime dateB = b.createdAt ?? DateTime.now();
        return dateB.compareTo(dateA); // Sort in descending order
      });
      state.attendanceResponse = result;

      update();
    }
  }
}
