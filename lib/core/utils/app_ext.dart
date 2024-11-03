import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';


import '../../const/app_const.dart';
import '../network_config/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';

extension EmptyString on String? {
  String get ets {
    return this ?? "";
  }

  String? toImageUrl() {
    return this == null || (this?.isEmpty ?? true)
        ? null
        : "${AppConst.baseUrl}/${(this?.replaceAll("\\", "/"))}";
  }
}

extension ImagePngToUint8List on String {
  Future<Uint8List> get toUint8List async {
    ByteData data = await rootBundle.load(this);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: 100);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}

extension ModelToJson on dynamic {
  JSON get toJSON {
    return const JsonDecoder().convert(jsonEncode(this));
  }
}

extension IntToSeparateCommaExt on int {
  String get separateComma {
    return NumberFormat('#,##,000').format(this);
  }

  bool get boolFromInt {
    return this == 1;
  }
}

extension ScreenUtil on double {
  double get d {
    var deviceHeight = Get.height;
    var deviceWidth = Get.width;
    var deviceDiagonal = sqrt(pow(deviceHeight, 2) + pow(deviceWidth, 2));
    return deviceDiagonal * (this / 1000);
  }
}

extension GetWidth on Widget {
  double getWidth(BuildContext context) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    return renderBox.size.width;
  }
}

extension DateTimeExtension on DateTime? {
  DateTime? setTimeOfDay(TimeOfDay time) {
    if (this == null) return null;
    return DateTime(this!.year, this!.month, this!.day, time.hour, time.minute);
  }

  DateTime? setTime(
      {int hours = 0,
      int minutes = 0,
      int seconds = 0,
      int milliSeconds = 0,
      int microSeconds = 0}) {
    if (this == null) return null;
    return DateTime(this!.year, this!.month, this!.day, hours, minutes, seconds,
        milliSeconds, microSeconds);
  }

  DateTime? clearTime() {
    if (this == null) return null;
    return DateTime(this!.year, this!.month, this!.day, 0, 0, 0, 0, 0);
  }

  String get formatToString {
    return DateFormat("dd, MMMM, yyyy").format(this!);
  }

  String get formatTimeToString {
    return DateFormat("d, MMMM, yyyy ' | ' h:mm a").format(this!);
  }
}

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.fromARGB(
      alpha,
      (red + ((255 - red) * value)).round(),
      (green + ((255 - green) * value)).round(),
      (blue + ((255 - blue) * value)).round(),
    );
  }

  Color avg(Color other) {
    final red = (this.red + other.red) ~/ 2;
    final green = (this.green + other.green) ~/ 2;
    final blue = (this.blue + other.blue) ~/ 2;
    final alpha = (this.alpha + other.alpha) ~/ 2;
    return Color.fromARGB(alpha, red, green, blue);
  }
}
