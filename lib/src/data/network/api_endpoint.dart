
import 'package:flutter/material.dart';
import '../../../const/app_const.dart';
import 'enum_end_point.dart';

@immutable
class ApiEndpoint {
  static String auth(AuthEndpoint endPoint) {
    var path = '${AppConst.baseUrl}/auth';
    switch (endPoint) {
      case AuthEndpoint.LOGIN:
        return '$path/login';
    }
  }

  static String attendance(
    AttendanceEndpoint endPoint, {
    String? fromDate,
    String? toDate,
    int? gradeId,
    int? limit,
    int? offset,
    int? studentId,
  }) {
    var path = '${AppConst.baseUrl}/attendant';
    switch (endPoint) {
      case AttendanceEndpoint.GET_LIST:
        return '$path/details?fromDate=$fromDate&toDate=$toDate&limit=$limit&offset=0&studentId=$studentId';
      case AttendanceEndpoint.SCAN_QR:
        return '$path/scan';
    }
  }
}
