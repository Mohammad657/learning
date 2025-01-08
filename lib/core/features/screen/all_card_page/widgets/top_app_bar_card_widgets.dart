import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_icon_widgets.dart';

class TopAppBarWidgets extends StatelessWidget {
  const TopAppBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 24.w, right: 24.w , top: 16.h, bottom:24.h ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryIconWidgets(
            iconPath: AppAssets.arrowBackIos,
            shapActive: true,
            width: 48.w,
            height: 48.h,
            iconHeight: 24.h,
            iconWidth: 24.w,
            onPressed: () {},
            bgIcon: Colors.black,
          ),
          Text(
            "All Cards",
            style: AppStyles.black15BoldStyle.copyWith(
              fontSize: 18.sp,
            ),
          ),
          PrimaryIconWidgets(
            iconPath: AppAssets.moreIcon,
            shapActive: true,
            width: 48.w,
            height: 48.h,
            iconHeight: 24.h,
            iconWidth: 24.w,
            onPressed: () {},
                        bgIcon: Colors.black,

          )
        ],
      ),
    );
  }
}
