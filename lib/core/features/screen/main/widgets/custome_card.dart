import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_colors.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class CustomeCard extends StatelessWidget {
  final String nameCard;
  final String amountOfCard;
  final String numberOfCard;
  final String validUntil;
  final Color? cardColor;
  const CustomeCard({
    super.key,
    required this.nameCard,
    required this.amountOfCard,
    required this.numberOfCard,
    required this.validUntil,
    this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: cardColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 153.w,
            height: 153.h,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 153.w,
            height: 153.h,
          ),
        ),
        Positioned(
          bottom: -30,
          left: -45,
          child: Image.asset(
            AppAssets.layer2Image,
            width: 277.w,
            height: 277.h,
          ),
        ),
        Positioned(
          bottom: -30,
          left: -45,
          child: Image.asset(
            AppAssets.layer2Image,
            width: 277.w,
            height: 277.h,
          ),
        ),
        Positioned(
            left: 24.w,
            top: 24.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameCard,
                  style: AppStyles.grey12MediumStyles.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Semi"),
                ),
                const HeighSpace(54),
                Text(
                  "Balance",
                  style: AppStyles.grey12MediumStyles
                      .copyWith(fontSize: 14.sp, fontFamily: "Semi"),
                ),
                const HeighSpace(8),
                Text(
                  amountOfCard,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: "Semi"),
                ),
                const HeighSpace(56),
                Text(
                  numberOfCard,
                  style: AppStyles.grey12MediumStyles
                      .copyWith(fontSize: 16.sp, fontFamily: "Semi"),
                ),
              ],
            )),
        Positioned(
          bottom: 26.w,
          right: 24.h,
          child: Text(
            validUntil,
            style: AppStyles.grey12MediumStyles.copyWith(
                fontSize: 12.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Semi"),
          ),
        )
      ],
    );
  }
}
