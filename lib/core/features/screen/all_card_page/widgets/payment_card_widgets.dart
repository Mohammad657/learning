import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_colors.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class PaymentCardWidgets extends StatelessWidget {
  final String nameCard;
  final String amountOfCard;
  final String numberOfCard;
  final String validUntil;
  final Color? cardColor;
  const PaymentCardWidgets({
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
          width: 327.w,
          height: 179.h,
          decoration: BoxDecoration(
            color: cardColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: -90,
          left: -30,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 153.w,
            height: 153.h,
          ),
        ),
        Positioned(
          bottom: -90,
          left: -30,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 153.w,
            height: 153.h,
          ),
        ),
        Positioned(
          bottom: -120,
          left: -40,
          child: Image.asset(
            AppAssets.layer2Image,
            width: 277.w,
            height: 277.h,
          ),
        ),
        Positioned(
          bottom: -120,
          left: -40,
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
                  ),
                ),
                const HeighSpace(18),
                Text(
                  "Balance",
                  style: AppStyles.grey12MediumStyles.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                const HeighSpace(8),
                Text(
                  amountOfCard,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const HeighSpace(22),
                Text(
                  numberOfCard,
                  style: AppStyles.grey12MediumStyles.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
              ],
            )),
        Positioned(
          bottom: 19.w,
          right: 19.h,
          child: Text(
            validUntil,
            style: AppStyles.grey12MediumStyles.copyWith(
                fontSize: 12.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
            top: 26.h,
            right: 29.w,
            child: SvgPicture.asset(AppAssets.visaIcon)),
      ],
    );
  }
}
