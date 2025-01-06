import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryIconWidgets extends StatelessWidget {
  final AlignmentGeometry? alignment;
  final double? width;
  final double? height;
  final Function()? onPressed;
  final String iconPath;
  final double? iconWidth;
  final double? iconHeight;
  final double? raduius;
  const PrimaryIconWidgets({
    super.key,
    this.alignment,
    this.onPressed,
    this.width,
    this.height,
    required this.iconPath,
    this.iconWidth,
    this.iconHeight,
    this.raduius,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: InkWell(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(raduius ?? 16.r),
            border: Border.all(color: Color(0xffE8ECF4)),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: SvgPicture.asset(
              iconPath,
              width: iconWidth,
              height: iconHeight,
            ),
          ),
        ),
      ),
    );
  }
}
