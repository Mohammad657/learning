import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_icon_widgets.dart';
import 'package:untitled1/core/widgets/primary_button_widget.dart';
import 'package:untitled1/core/widgets/primary_text_field_widget.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final formky = GlobalKey<FormState>();
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
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
      setState(() {
        _isValidationFailed = false;
      });
    }
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
                  width: 300.w,
                  child: Text(
                    "Create new password",
                    style: AppStyles.primaryHeadLinesStyle.copyWith(
                      letterSpacing: -1,
                    ),
                  ),
                ),
                const HeighSpace(10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    "Your new password must be unique from those previously used.",
                    style: AppStyles.black15BoldStyle
                        .copyWith(color: const Color(0xff8391A1)),
                  ),
                ),
                const HeighSpace(32),
                SizedBox(
                  height: _isValidationFailed ? 70.0.h : 56.h,
                  child: PrimaryTextFieldWidget(
                    hintText: "New Password",
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
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
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                ),
                const HeighSpace(15),
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
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                ),
                const HeighSpace(38),
                PrimaryButtonWidget(
                  onPressed: () {
                    _submitForm();
                  },
                  buttonText: "Reset Password",
                  fontSize: 15.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
