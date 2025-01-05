import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_colors.dart';

class PrimaryTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? textColor;
  final Color? borderColor;
  final bool? isPassword;

  const PrimaryTextFieldWidget({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.width,
    this.height,
    this.borderRadius,
    this.fontSize,
    this.textColor,
    this.borderColor,
    this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width ?? 331.w,
        height: height ?? 56.h,
        child: TextField(
          autofocus: false,
          obscureText: isPassword ?? false,
          decoration: InputDecoration(
            hintText: hintText ?? "",
            hintStyle: TextStyle(
              color: textColor ?? AppColors.greyColor,
              fontSize: fontSize ?? 16.sp,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              borderSide: BorderSide(
                color: borderColor ?? Color(0xffE8ECF4),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.primaryColor,
                width: 1,
              ),
            ),
            filled: true,
            fillColor: Color(0xffF7F8F9),
          ),
        ));
  }
}
