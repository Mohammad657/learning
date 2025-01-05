import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_colors.dart';

class PrimaryOutLinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? textColor;
  final Color? borderColor;
  final void Function()? onPressed;
  final double? fonstSize;
  const PrimaryOutLinedButtonWidget(
      {super.key,
      this.buttonText,
      this.width,
      this.height,
      this.borderRadius,
      this.fontSize,
      this.textColor,
      this.onPressed,
      this.fonstSize,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFFFFFF),
          side: BorderSide(
              color: borderColor ?? AppColors.primaryColor, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          ),
          fixedSize: Size(width ?? 331.w, height ?? 56.h),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText ?? "",
          style: TextStyle(
              color: textColor ?? AppColors.primaryColor,
              fontSize: fonstSize ?? 16.sp,
              fontWeight: FontWeight.bold),
        ));
  }
}
