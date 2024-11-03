import '../utils/app_color.dart';
import '../utils/app_ext.dart';
import 'package:flutter/material.dart';

class XButton extends StatelessWidget {
  final String? toolTip;
  final GestureTapCallback? onPress;
  final Widget child;
  final BorderRadius? borderRadius;

  XButton({
    this.toolTip,
    required this.onPress,
    required this.child,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(10.0.d),
            child: Material(
              color: Colors.transparent,
              child: toolTip == null
                  ? InkWell(
                      splashColor: AppColor.primary.withOpacity(0.1),
                      focusColor: AppColor.primary.withOpacity(0.1),
                      highlightColor: AppColor.primary.withOpacity(0.1),
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => AppColor.primary.withOpacity(0.1)),
                      onTap: onPress,
                    )
                  : Tooltip(
                      message: toolTip,
                      child: InkWell(
                        onTap: onPress,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
