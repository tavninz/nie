import 'package:cached_network_image/cached_network_image.dart';
import '../utils/app_color.dart';
import '../utils/app_style.dart';
import '../utils/app_ext.dart';
import 'package:flutter/material.dart';

import '../utils/app_text.dart';

class XNetworkImage extends StatelessWidget {
  String src;
  BoxFit? fit;
  double? height;
  double? width;
  String loadingDescription;
  String errorDescription;
  double? errorSize;

  XNetworkImage({
    super.key,
    required this.src,
    this.fit,
    this.height,
    this.width,
    this.loadingDescription = "",
    this.errorDescription = "",
    this.errorSize,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: src,
      fit: fit ?? BoxFit.fitWidth,
      height: height,
      width: width,
      errorWidget: (_, __, ___) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error,
                size: errorSize ?? 10.0.d,
                color: Colors.red,
              ),
              if (errorDescription.isNotEmpty)
                Column(
                  children: [
                    spaceV(size: 10.0.d),
                    Text(
                      errorDescription,
                      textAlign: TextAlign.center,
                      style: textDisplaySmall(color: Colors.red),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
      progressIndicatorBuilder: (context, url, downloadProgress) {
        if (loadingDescription.isNotEmpty) {
          return Text(
            loadingDescription,
            textAlign: TextAlign.center,
            style: textDisplaySmall(color: Colors.red),
          );
        }
        return Padding(
          padding: EdgeInsets.all(2.0.d),
          child: Center(
            child: CircularProgressIndicator(
                color: AppColor.primary,
                strokeWidth: 0.25.d,
                value: downloadProgress.progress),
          ),
        );
      },
    );
  }
}
