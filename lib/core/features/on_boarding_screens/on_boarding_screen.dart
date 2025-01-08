import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/routing/app_routes.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/widgets/primary_button_widget.dart';
import 'package:untitled1/core/widgets/primary_out_line_button_widget.dart';
import 'package:untitled1/core/widgets/primary_text_button_widget.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoardingImage,
            height: 570.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const HeighSpace(21),
          PrimaryButtonWidget(
            buttonText: "Login",
            height: 56.h,
            width: 331.w,
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
            },
          ),
          const HeighSpace(15),
          PrimaryOutLinedButtonWidget(
            buttonText: "Register",
            height: 56.h,
            width: 331.w,
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
            },
          ),
          const HeighSpace(46),
          PrimaryTextButtonWidget(
            onPressed: () {},
            buttonText: "Continue as a guest",
            decoration: TextDecoration.underline,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
