
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../core/network_config/api_handler.dart';
import '../../../../core/widget/snackbar.dart';
import '../../../model/request/attendace_request/attendace_request.dart';
import '../../../model/response/attendance_response/attendance_response.dart';
import '../../../model/response/scan_response/scan_response.dart';
import '../../../route/app_navigation.dart';
import '../api_endpoint.dart';
import '../enum_end_point.dart';

abstract class IAttendance {
  Future<AttendanceResponse?> getAttendanceList({
    String? fromDate,
    String? toDate,
    int? gradeId,
    int? limit,
    int? offset,
  });

  Future<ScanResponse?> scanQR({required AttendaceRequest request});
}

class AttendanceRepo implements IAttendance {
  Future<AttendanceResponse?> getAttendanceList({
    String? fromDate,
    String? toDate,
    int? gradeId,
    int? limit,
    int? offset,
    int? studentId,
  }) async {
    EasyLoading.show();
    ApiHandler<AttendanceResponse> handler = ApiHandler<AttendanceResponse>.get(
        converter: (value) => AttendanceResponse.fromJson(value));
    var result = await handler.execute(
      onComplete: (data) {
        EasyLoading.dismiss();
        return data;
      },
      endPoint: ApiEndpoint.attendance(
        AttendanceEndpoint.GET_LIST,
        fromDate: fromDate,
        toDate: toDate,
        studentId: studentId,
        limit: limit,
        offset: offset,
      ),
    );
    EasyLoading.dismiss();
    return result;
  }

  @override
  Future<ScanResponse?> scanQR({required AttendaceRequest request}) async {
    ApiHandler<ScanResponse> handler = ApiHandler<ScanResponse>.post(
        converter: (value) => ScanResponse.fromJson(value));
    EasyLoading.show();
    try {
      var result = await handler.execute(
          onComplete: (data) {
            if (data.message == "you cannot scan outside NIE") {
              Get.offNamed(
                AppNavigation.SCANSUCCESS,
                arguments: {"message": "${data.message}", "isoutside": true},
              );
            } else if (data.message == "success") {
              Get.offNamed(
                AppNavigation.SCANSUCCESS,
                arguments: {
                  "message": "You scan attendance success",
                  "isoutside": false
                },
              );
            } else {
              Get.offNamed(
                AppNavigation.SCANSUCCESS,
                arguments: {"message": "${data.message}", "isoutside": true},
              );
            }

            EasyLoading.dismiss();
          },
          onFail: (e) {
            showCustomSnackBar(
              isError: true,
              title: "Error rr",
              message: e.toString(),
            );
            Get.offNamed(AppNavigation.HOME);
            EasyLoading.dismiss();
          },
          body: request.toJson(),
          endPoint: ApiEndpoint.attendance(AttendanceEndpoint.SCAN_QR));
      return result;
    } catch (e) {
      showCustomSnackBar(
        isError: true,
        title: "ERrorro",
        message: e.toString(),
      );
    }
  }
}
