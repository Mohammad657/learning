import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? textColor;
  final void Function()? onPressed;
  final double? fonstSize;
  const PrimaryButtonWidget(
      {super.key,
      this.buttonText,
      this.buttonColor,
      this.width,
      this.height,
      this.borderRadius,
      this.fontSize,
      this.textColor,
      this.onPressed,
      this.fonstSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          ),
          fixedSize: Size(width ?? 331.w, height ?? 56.h),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText ?? "",
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: fonstSize ?? 16.sp,
          ),
        ));
  }
}
