import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XFutureBuilder<T> extends StatelessWidget {
  final Widget loadingWidget;
  final Widget completeWidget;
  final RxStatus status;

  const XFutureBuilder(
      {super.key,
      required this.loadingWidget,
      required this.completeWidget,
      required this.status});

  @override
  Widget build(BuildContext context) {
    if (status.isLoading) {
      return loadingWidget;
    } else if (status.isSuccess) {
      return completeWidget;
    } else {
      return const SizedBox.shrink();
    }
  }
}
