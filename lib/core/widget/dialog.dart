import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> showAppDialog(
    {required VoidCallback onActionPress,
    String? title,
    String? content,
    String? dismissText,
    required String actionText,
    bool showDismissButton = true,
    Color actionColor = Colors.blue,
    Color textActionColor = Colors.white}) {
  final disMissText = dismissText ?? "Close";
  return showDialog(
    context: Get.context!,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: AlertDialog(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          title: Text(title ?? ""),
          content: SingleChildScrollView(
            child: Text(content ?? ""),
          ),
          actions: [
            if (showDismissButton)
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(disMissText),
              ),
            TextButton(
              onPressed: onActionPress,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(actionColor),
              ),
              child: Text(
                actionText,
                style: TextStyle(color: textActionColor),
              ),
            ),
          ],
        ),
      );
    },
  );
}
