import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/features/screen/main/widgets/category_icon_widgets.dart';
import 'package:untitled1/core/features/screen/main/widgets/custome_carosel_widget.dart';
import 'package:untitled1/core/features/screen/main/widgets/top_app_bar_widgets.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const TopAppBarWidgets(),
          const HeighSpace(15),
          const CustomeCaroselWidget(),
          const HeighSpace(24),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.sp,
                  crossAxisSpacing: 16.sp,
                ),
                children: [
                  CategoryIconWidgets(
                    iconPath: AppAssets.sendIcon,
                    widthSecondary: 48.w,
                    heightSecondary: 48.h,
                    bgcolor: const Color(0xffECF1F6),
                    raduius: 16.r,
                    raduiusSecondary: 12.r,
                    textOne: "Send money",
                    textTwo: "Take acc to acc",
                    onTap: () {},
                    iconHeight: 20,
                    iconWidth: 20,
                  ),
                  CategoryIconWidgets(
                    iconPath: AppAssets.walletOutlineIcon,
                    widthSecondary: 48.w,
                    heightSecondary: 48.h,
                    bgcolor: const Color(0xffECF1F6),
                    raduius: 16.r,
                    raduiusSecondary: 12.r,
                    textOne: "Pay the bill",
                    textTwo: "Lorem ipsum",
                    onTap: () {},
                  ),
                  CategoryIconWidgets(
                    iconPath: AppAssets.sendIcon,
                    widthSecondary: 48.w,
                    heightSecondary: 48.h,
                    bgcolor: const Color(0xffECF1F6),
                    raduius: 16.r,
                    raduiusSecondary: 12.r,
                    textOne: "Request",
                    textTwo: "Lorem ipsum",
                    onTap: () {},
                  ),
                  CategoryIconWidgets(
                    iconPath: AppAssets.contactIcon,
                    widthSecondary: 48.w,
                    heightSecondary: 48.h,
                    bgcolor: const Color(0xffECF1F6),
                    raduius: 16.r,
                    raduiusSecondary: 12.r,
                    textOne: "Contact",
                    textTwo: "Lorem ipsum",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
