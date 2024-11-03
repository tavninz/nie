import '../utils/app_color.dart';
import '../utils/app_style.dart';
import '../utils/app_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../src/translation/app_locale.dart';
import '../utils/app_text.dart';
import 'decorated_input_border.dart';

class XTextField extends StatelessWidget {
  final int? maxLine, minLine, maxLength;
  final bool? obscureText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Color? textColor;
  final Color? borderColor;
  final double? fontSize;
  final String? hintText;
  final EdgeInsets? contentPadding;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconPress;
  final String? initValue;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool shouldValidate;
  final String? Function(String?)? validator;
  final void Function(String value)? onTextChanged;
  final void Function()? onEditingComplete;
  final void Function(String?)? onFieldSubmitted;
  final String? errorMessage;
  final bool noBorder;
  final bool? enable;
  final bool autofocus;
  final bool hasShadow;
  final bool isShowCounter;
  final Color? fillColor;
  List<TextInputFormatter>? inputFormatters;
  BorderRadius? borderRadius;

  XTextField({
    Key? key,
    this.maxLine,
    this.minLine,
    this.maxLength,
    this.obscureText,
    this.textStyle,
    this.hintStyle,
    this.textColor,
    this.borderColor,
    this.fontSize,
    this.hintText,
    this.contentPadding,
    this.suffixIcon,
    this.onSuffixIconPress,
    this.initValue,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.onTextChanged,
    this.shouldValidate = false,
    this.autofocus = false,
    this.noBorder = false,
    this.hasShadow = true,
    this.enable,
    this.errorMessage,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.isShowCounter = false,
    this.inputFormatters,
    this.fillColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      maxLines: maxLine,
      minLines: minLine,
      maxLength: maxLength,
      focusNode: focusNode,
      enabled: enable,
      // initialValue: initValue,
      // initValue not update when don't have controller
      controller: controller ?? TextEditingController(text: initValue),
      obscuringCharacter: '*',
      onChanged: onTextChanged,
      obscureText: obscureText ?? false,
      validator: validator ?? _defaultValidate,
      onFieldSubmitted: onFieldSubmitted,
      style: textStyle ?? textDisplaySmall(),
      inputFormatters: inputFormatters,
      cursorColor: AppColor.primary,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        errorText: errorMessage,
        filled: true,
        fillColor: fillColor ?? Colors.white,
        disabledBorder: getBorder(Colors.transparent,
            hasShadow: hasShadow, borderRadius: borderRadius),
        focusedBorder: getBorder(AppColor.primary,
            hasShadow: hasShadow, borderRadius: borderRadius),
        border: getBorder(Colors.transparent,
            hasShadow: hasShadow, borderRadius: borderRadius),
        enabledBorder: getBorder(borderColor ?? Colors.transparent,
            hasShadow: hasShadow, borderRadius: borderRadius),
        focusedErrorBorder: getBorder(Colors.red,
            hasShadow: hasShadow, borderRadius: borderRadius),
        errorBorder: getBorder(Colors.red,
            hasShadow: hasShadow, borderRadius: borderRadius),
        hintText: hintText,
        counter: isShowCounter == true && maxLength != null
            ? null
            : const SizedBox(),
        contentPadding: contentPadding ?? EdgeInsets.all(15.0.d),
        hintStyle: hintStyle ?? textDisplaySmall(color: Colors.grey),
        suffixIcon: suffixIcon == null
            ? null
            : ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onSuffixIconPress,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: suffixIcon,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  String? _defaultValidate(String? value) {
    return shouldValidate
        ? value == null || value.isEmpty
            ? AppLocale.valueCantBeEmpty.tr
            : null
        : null;
  }

  InputBorder getBorder(Color color,
      {bool hasShadow = true, BorderRadius? borderRadius}) {
    final border = OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10.0.d),
        borderSide: BorderSide(color: color));
    if (!hasShadow) {
      return border;
    }
    return DecoratedInputBorder(
        child: border,
        shadow: const BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 2),
            blurRadius: 5));
  }
}
