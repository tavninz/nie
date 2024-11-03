
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../model/response/qr_response/qr_response.dart';

class ScanState {
  var qrResponse = QrResponse().obs;
  var locationMessage = "".obs;
  var deviceId = "".obs;
  var let = 0.0.obs;
  var loong = 0.0.obs;
  RxBool isBetween = false.obs;
}
