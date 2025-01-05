import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? fontSize;
  final Color? textColor;
  final TextDecoration? decoration;
  final void Function()? onPressed;
  const PrimaryTextButtonWidget({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.fontSize,
    this.textColor,
    this.decoration,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          buttonText ?? "",
          style: TextStyle(
            decoration: decoration ?? TextDecoration.none,
            color: textColor ?? Color(0xff202955),
            fontSize: fontSize ?? 15.sp,
          ),
        ));
  }
}
