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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formky = GlobalKey<FormState>();
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController userNameController;
  bool isPassword = false;
  bool isConfirmedPassword = false;
  void boolIsPassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  void boolisConfirmedPassword() {
    setState(() {
      isConfirmedPassword = !isConfirmedPassword;
    });
  }

  bool _isValidationFailed = false;

  void _submitForm() {
    setState(() {
      _isValidationFailed = true;
    });

    if (formky.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Form is valid')));
    }
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
                  HeighSpace(12),
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
                  HeighSpace(28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Hello! Register to get started",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  HeighSpace(32),
                  SizedBox(
                    height: _isValidationFailed ? 70.0.h : 56.h,
                    child: PrimaryTextFieldWidget(
                      hintText: "Username",
                      controller: userNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                  ),
                  HeighSpace(12),
                  SizedBox(
                    height: _isValidationFailed ? 70.0.h : 56.h,
                    child: PrimaryTextFieldWidget(
                      hintText: "Email",
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  HeighSpace(12),
                  SizedBox(
                    height: _isValidationFailed ? 70.0.h : 56.h,
                    child: PrimaryTextFieldWidget(
                      hintText: "Password",
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                      isPassword: isPassword,
                      suffixIcon: IconButton(
                        onPressed: () {
                          boolIsPassword();
                        },
                        icon: isPassword
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  HeighSpace(12),
                  SizedBox(
                    height: _isValidationFailed ? 70.0.h : 56.h,
                    child: PrimaryTextFieldWidget(
                      hintText: "Confirm password",
                      controller: confirmPasswordController,
                      validator: (value) {
                        // Confirm password validation
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      isPassword: isConfirmedPassword,
                      suffixIcon: IconButton(
                        onPressed: () {
                          boolisConfirmedPassword();
                        },
                        icon: isConfirmedPassword
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  HeighSpace(30),
                  PrimaryButtonWidget(
                    onPressed: () {
                      _submitForm();
                      if (formky.currentState!.validate()) {}
                    },
                    buttonText: "Register",
                    fontSize: 15.sp,
                  ),
                  HeighSpace(35),
                  Row(
                    children: [
                      SizedBox(
                        width: 103.w,
                        child: const Divider(),
                      ),
                      WidthSpace(12),
                      SizedBox(
                        width: 101.sp,
                        child: Text(
                          "Or Register with",
                          style: AppStyles.black15BoldStyle
                              .copyWith(
                                color: const Color(0xff6A707C),
                              )
                              .copyWith(
                                fontSize: 13.sp,
                              ),
                        ),
                      ),
                      WidthSpace(12),
                      SizedBox(
                        width: 103.w,
                        child: const Divider(),
                      ),
                    ],
                  ),
                  HeighSpace(22),
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
                  HeighSpace(54),
                  Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Already have an account? ",
                            style: AppStyles.black15BoldStyle
                                .copyWith(color: AppColors.primaryColor),
                            children: [
                          TextSpan(
                            text: "Login Now",
                            style: AppStyles.black15BoldStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                GoRouter.of(context)
                                    .pushNamed(AppRoutes.loginScreen);
                              },
                          )
                        ])),
                  ),
                  HeighSpace(26)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
