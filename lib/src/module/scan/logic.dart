import 'dart:convert';
import 'dart:io';
import 'dart:math';


import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../core/widget/snackbar.dart';
import '../../data/local/user_cache.dart';
import '../../data/network/repo/attendance_repo.dart';
import '../../model/request/attendace_request/attendace_request.dart';
import '../../model/response/qr_response/qr_response.dart';
import '../../model/response/scan_response/scan_response.dart';
import 'state.dart';

class ScanLogic extends GetxController {
  final AttendanceRepo _attendanceRepo;
  final ScanState state = ScanState();
  QRViewController? controller;

  ScanLogic(this._attendanceRepo);

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    await getDeviceId();
    await getCurrentLocation();
    super.onInit();

  }

  @override
  Future<void> onClose() async {
    // TODO: implement onClose
    await getCurrentLocation();
    controller?.dispose();
    super.onClose();

  }

  @override
  Future<void> onReady() async {
    // TODO: implement onReady
    await getCurrentLocation();
    super.onReady();
  }

  void convertQrCodeToModel(String qrCode) {
    Map<String, dynamic> jsonMap = json.decode(qrCode);
    state.qrResponse.value = QrResponse.fromJson(jsonMap);
    if (state.qrResponse.value != null) {
      scanAttendacne();
    }

    update();
  }

// Convert degrees to radians
  double toRadians(double degree) {
    return degree * pi / 180;
  }

// Calculate the cross product of vectors AB and AC
  double crossProduct(double lat1, double lon1, double lat2, double lon2,
      double lat3, double lon3) {
    return (lat2 - lat1) * (lon3 - lon1) - (lon2 - lon1) * (lat3 - lat1);
  }

// Calculate the dot product of vectors AB and AC
  double dotProduct(double lat1, double lon1, double lat2, double lon2,
      double lat3, double lon3) {
    return (lat3 - lat1) * (lat2 - lat1) + (lon3 - lon1) * (lon2 - lon1);
  }

// Check if the point (lat3, lon3) is between (lat1, lon1) and (lat2, lon2)
  bool isBetween(double lat1, double lon1, double lat2, double lon2,
      double lat3, double lon3) {
    // First, check if the cross product is close to 0 (point is on the line)
    if (crossProduct(lat1, lon1, lat2, lon2, lat3, lon3).abs() > 1e-6) {
      return false;
    }

    // Then, check if the point lies within the bounds of the segment
    double dotProd = dotProduct(lat1, lon1, lat2, lon2, lat3, lon3);
    if (dotProd < 0) {
      return false;
    }

    double squaredLengthBA =
        pow(lat2 - lat1, 2).toDouble() + pow(lon2 - lon1, 2).toDouble();
    if (dotProd > squaredLengthBA) {
      return false;
    }

    return true;
  }


  Future<void> scanAttendacne() async {
    controller?.dispose();
    try {
      await getCurrentLocation();
      var user = await Get.find<UserCache>().getUser();
      AttendaceRequest request = AttendaceRequest(
        qrId: state.qrResponse.value.id,
        deviceId: state.deviceId.value,
         lat: state.let.value,
         // lat: 11.556694,
         lon: state.loong.value,
         // lon: 104.927339,
        userId: user?.userId,
        studentId: user?.studentId,
      );
      // if (state.let.value == 0.0 || state.loong.value == 0.0) {
      //   Get.back();
      // }
      await _attendanceRepo.scanQR(request: request);
    } catch (e) {
      showCustomSnackBar(
        isError: true,
        title: "Error",
        message: e.toString(),
      );
    }
  }

  Future<String?> getDeviceId() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String? deviceId;

    try {
      if (Platform.isAndroid) {
        // Get Android device info
        final androidInfo = await deviceInfo.androidInfo;
        deviceId = androidInfo.id; // Android ID
      } else if (Platform.isIOS) {
        // Get iOS device info
        final iosInfo = await deviceInfo.iosInfo;
        deviceId = iosInfo.identifierForVendor; // iOS identifierForVendor
      }
    } catch (e) {
      print("Error getting device info: $e");
    }
    state.deviceId.value = deviceId ?? "";
    update();
    return deviceId;
  }

  Future<void> getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        state.locationMessage.value = "Location services are disabled.";
        update();
        return;
      }
      // Check permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.whileInUse &&
            permission != LocationPermission.always) {
          state.locationMessage.value = "Location permissions are denied.";
          update();
          return;
        }
      }
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      state.locationMessage.value =
          "Location: ${position.latitude}, ${position.longitude}";
      state.let.value = position.latitude;
      state.loong.value = position.longitude;

      update();
    } catch (e) {
      state.locationMessage.value = "Error getting location: $e";
      update();
    }
  }
}
