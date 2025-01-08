import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_colors.dart';

class PrimaryTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final double? borderRadius;
  final double? fontSize;
  final Color? textColor;
  final Color? borderColor;
  final bool? isPassword;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const PrimaryTextFieldWidget({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.borderRadius,
    this.fontSize,
    this.textColor,
    this.borderColor,
    this.isPassword,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
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
            color: borderColor ?? const Color(0xffE8ECF4),
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: 1.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),
        filled: true,
        fillColor: const Color(0xffF7F8F9),
      ),
    );
  }
}
