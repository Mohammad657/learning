import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoardingImage,
            height: 570.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          HeighSpace(21),
          PrimaryButtonWidget(
            buttonText: "Login",
            height: 56.h,
            width: 331.w,
            onPressed: () {},
          ),
          HeighSpace(15),
          PrimaryOutLinedButtonWidget(
            buttonText: "Register",
            height: 56.h,
            width: 331.w,
            onPressed: () {},
          ),
          HeighSpace(46),
          PrimaryTextButtonWidget(
            onPressed: (){},
            buttonText: "Continue as a guest",
            decoration: TextDecoration.underline,
          )
        ],
      ),
    );
  }
}
