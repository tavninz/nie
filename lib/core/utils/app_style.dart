import 'app_ext.dart';
import 'package:flutter/material.dart';

getBoxDecoration({
  Color? background,
  Color? borderColor,
  bool hasShadow = false,
  bool hasBorder = false,
  BorderRadius? borderRadius,
}) =>
    BoxDecoration(
        color: background ?? Colors.white.withOpacity(0.25),
        borderRadius: borderRadius ?? BorderRadius.circular(10.0.d),
        boxShadow: hasShadow == true
            ? [
                const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 2),
                    blurRadius: 2)
              ]
            : null,
        border: hasBorder == true
            ? Border.all(
                color: borderColor ?? Colors.white.withOpacity(0.25), width: 1)
            : null);

getPaddingScreen() => EdgeInsets.all(30.0.d);

spaceV({double? size}) => SizedBox(height: size ?? 15.0.d);

spaceH({double? size}) => SizedBox(width: size ?? 10.0.d);
