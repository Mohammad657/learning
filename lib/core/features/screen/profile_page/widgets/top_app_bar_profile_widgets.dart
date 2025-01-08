import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_icon_widgets.dart';

class TopAppBarProfileWidgets extends StatelessWidget {
  const TopAppBarProfileWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 24.w, right: 24.w , top: 16.h, bottom:39.h ),
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
            "My Profile",
            style: AppStyles.black15BoldStyle.copyWith(
              fontSize: 18.sp, fontFamily: "Semi"
            ),
          ),
          PrimaryIconWidgets(
            iconPath: AppAssets.editIcon,
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
