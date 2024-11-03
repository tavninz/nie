import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../const/app_const.dart';
import '../../../core/widget/snackbar.dart';
import '../../../gen/assets.gen.dart';
import '../login/logic.dart';
import 'logic.dart';

class ScanPage extends StatefulWidget {
  ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  Barcode? result;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  final logic = Get.find<ScanLogic>();
  final state = Get.find<ScanLogic>().state;

  @override
  void reassemble() {
    super.reassemble();
    logic.controller!.pauseCamera();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: _buildQrView(context),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Color(0x880367A6),
                      Color(0x4D0367A6),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.2, 1]),
                color: AppConst.pramiry,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      await logic.controller?.toggleFlash();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.flashlight_on),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Scan QR",
                    style: TextStyle(
                      color: AppConst.pramiry,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Align camera with QR ",
                    style: TextStyle(
                      color: AppConst.pramiry,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 500.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          overlayColor: Colors.white,
          borderColor: AppConst.pramiry,
          cutOutBottomOffset: 0,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    logic.controller = controller;
    try {
      controller.scannedDataStream.listen((scanData) {
        if (scanData != null) {
          controller.stopCamera();
          logic.convertQrCodeToModel(scanData.code.toString());
        }
      });
    } catch (e) {
      showCustomSnackBar(
        isError: true,
        title: "Error",
        message: e.toString(),
      );
    }
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    logic.controller?.dispose();
    super.dispose();
  }
}
