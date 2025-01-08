import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_icon_widgets.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class TopAppBarWidgets extends StatelessWidget {
  const TopAppBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 19.h, left: 24.w, right: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.profileImage,
                  width: 48.w,
                  height: 48.h,
                  fit: BoxFit.cover,
                ),
              ),
              const WidthSpace(11),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: AppStyles.grey12MediumStyles.copyWith(fontFamily: "Semi")
                  ),
                  Text(
                    "Mohammad Al-ALaq",
                    style: AppStyles.black15BoldStyle.copyWith(fontSize: 18.sp, fontFamily: "Semi"),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              PrimaryIconWidgets(
                iconPath: AppAssets.notificationIcon,
                shapActive: true,
                width: 48.w,
                height: 48.h,
                iconHeight: 24.h,
                iconWidth: 24.w,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
