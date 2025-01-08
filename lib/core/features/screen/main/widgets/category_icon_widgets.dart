import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class CategoryIconWidgets extends StatelessWidget {
  final String? textOne;
  final String? textTwo;
  final double? width;
  final double? height;
  final double? widthSecondary;
  final double? heightSecondary;
  final Function()? onPressed;
  final Function()? onTap;
  final String iconPath;
  final double? iconWidth;
  final double? iconHeight;
  final double? raduius;
  final double? raduiusSecondary;
  final Color? borderColor;
  final bool? shapActive;
  final bool? shapActiveSecondary;
  final Color? bgcolor;
  const CategoryIconWidgets({
    super.key,
    this.onPressed,
    this.onTap,
    required this.iconPath,
    this.iconWidth,
    this.iconHeight,
    this.raduius,
    this.borderColor,
    this.shapActive,
    this.bgcolor,
    this.widthSecondary,
    this.heightSecondary,
    this.width,
    this.height,
    this.textOne,
    this.textTwo,
    this.shapActiveSecondary,
    this.raduiusSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: shapActive == true ? BoxShape.circle : BoxShape.rectangle,
          color: Colors.transparent,
          borderRadius:
              shapActive == true ? null : BorderRadius.circular(raduius ?? 16.r),
          border: Border.all(
            color: borderColor ?? const Color(0xffE8ECF4),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: widthSecondary,
              height: heightSecondary,
              decoration: BoxDecoration(
                shape: shapActiveSecondary == true
                    ? BoxShape.circle
                    : BoxShape.rectangle,
                color: bgcolor ?? Colors.transparent,
                borderRadius: shapActiveSecondary == true
                    ? null
                    : BorderRadius.circular(raduiusSecondary ?? 16.r),
                border: Border.all(color: borderColor ?? const Color(0xffE8ECF4)),
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
            const HeighSpace(12),
            Text(
              textOne ?? "",
              style: AppStyles.black15BoldStyle
                  .copyWith(fontSize: 16.sp, letterSpacing: 0.5, fontFamily: "Semi"),
            ),
            const HeighSpace(4),
            Text(
              textTwo ?? "",
              style: AppStyles.grey12MediumStyles
                  .copyWith(color: const Color(0xff9CA4AB), letterSpacing: 0.5, fontFamily: "Semi"),
            ),
          ],
        ),
      ),
    );
  }
}
