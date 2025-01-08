import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class PersionalInfoCard extends StatelessWidget {
  final String? labelText;
  final String? infoText;
  const PersionalInfoCard({super.key, this.labelText, this.infoText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 24.w, left: 24.w,top: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText ?? "",
            style: AppStyles.grey12MediumStyles.copyWith(fontSize: 14.sp, fontFamily: "Semi"),
          ),
          const HeighSpace(16),
          Text(
            infoText ?? "",
            style: AppStyles.black15BoldStyle.copyWith(fontSize: 16.sp, fontFamily: "Semi"),
          ),
          const HeighSpace(16),
          const Divider(
            height: 1,
            color: Color(0xffF2F2F5),
          )
        ],
      ),
    );
  }
}
