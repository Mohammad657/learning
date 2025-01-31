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
import 'package:untitled1/core/widgets/primary_text_button_widget.dart';
import 'package:untitled1/core/widgets/primary_text_field_widget.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formky = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

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
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
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
                      "Welcome Back Again!",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  const HeighSpace(32),
                  PrimaryTextFieldWidget(
                    controller: emailController,
                    hintText: "Enter your email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your email";
                      }
                      return null;
                    },
                  ),
                  const HeighSpace(15),
                  PrimaryTextFieldWidget(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      return null;
                    },
                    hintText: "Enter your password",
                    isPassword: isPassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        boolIsPassword();
                      },
                      icon: isPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                  PrimaryTextButtonWidget(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      GoRouter.of(context).pushNamed(AppRoutes.forgetPassword);
                    },
                    buttonText: "Forgot Password?",
                  ),
                  const HeighSpace(30),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if (formky.currentState!.validate()) {}
                    },
                    buttonText: "Login",
                    fontSize: 15.sp,
                  ),
                  const HeighSpace(35),
                  Row(
                    children: [
                      SizedBox(
                        width: 106.w,
                        child: const Divider(),
                      ),
                      const WidthSpace(12),
                      Text(
                        "Or Login With",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: const Color(0xff6A707C),
                        ),
                      ),
                      const WidthSpace(12),
                      SizedBox(
                        width: 106.w,
                        child: const Divider(),
                      ),
                    ],
                  ),
                  const HeighSpace(22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryIconWidgets(
                        height: 56.h,
                        width: 105.w,
                        iconPath: AppAssets.facebookIcons,
                        onPressed: () {},
                        raduius: 8.r,
                      ),
                      PrimaryIconWidgets(
                        iconPath: AppAssets.googleIcons,
                        height: 56.h,
                        width: 105.w,
                        onPressed: () {},
                        raduius: 8.r,
                      ),
                      PrimaryIconWidgets(
                        iconPath: AppAssets.appleIcons,
                        height: 56.h,
                        width: 105.w,
                        onPressed: () {},
                        raduius: 8.r,
                      ),
                    ],
                  ),
                  const HeighSpace(120),
                  Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Don’t have an account? ",
                            style: AppStyles.black15BoldStyle
                                .copyWith(color: AppColors.primaryColor),
                            children: [
                          TextSpan(
                            text: "Register Now",
                            style: AppStyles.black15BoldStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                GoRouter.of(context)
                                    .pushNamed(AppRoutes.registerScreen);
                              },
                          )
                        ])),
                  ),
                  const HeighSpace(26)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
