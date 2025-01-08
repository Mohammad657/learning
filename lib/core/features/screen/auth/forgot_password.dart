import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/routing/app_routes.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_colors.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_icon_widgets.dart';
import 'package:untitled1/core/widgets/primary_button_widget.dart';
import 'package:untitled1/core/widgets/primary_text_field_widget.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final formky = GlobalKey<FormState>();
  late TextEditingController emailController;
  bool isPassword = false;
  void boolIsPassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 22.w,
          ),
          child: Form(
            key: formky,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeighSpace(12),
                PrimaryIconWidgets(
                  iconPath: AppAssets.arrowBackIos,
                  iconHeight: 19.h,
                  iconWidth: 19.w,
                  height: 41.h,
                  width: 41.h,
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
                const HeighSpace(28),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                const HeighSpace(10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: AppStyles.black15BoldStyle
                        .copyWith(color: const Color(0xff8391A1)),
                  ),
                ),
                const HeighSpace(32),
                PrimaryTextFieldWidget(
                  hintText: "Enter your email",
                  controller: emailController,
                ),
                const HeighSpace(38),
                PrimaryButtonWidget(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.otpVerification);
                  },
                  buttonText: "Send Code",
                  fontSize: 15.sp,
                ),
                const HeighSpace(361),
                Center(
                  child: RichText(
                      text: TextSpan(
                          text: "Remember Password? ",
                          style: AppStyles.black15BoldStyle
                              .copyWith(color: AppColors.primaryColor),
                          children: [
                        TextSpan(
                          text: "Login",
                          style: AppStyles.black15BoldStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              GoRouter.of(context)
                                  .pushNamed(AppRoutes.loginScreen);
                            },
                        )
                      ])),
                ),
                const HeighSpace(26),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
