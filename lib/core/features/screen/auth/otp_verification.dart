import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled1/core/routing/app_routes.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_colors.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_icon_widgets.dart';
import 'package:untitled1/core/widgets/primary_button_widget.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  late TextEditingController pinCodeController;

  bool isPassword = false;
  void boolIsPassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
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
                  "OTP Verification",
                  style: AppStyles.primaryHeadLinesStyle,
                ),
              ),
              const HeighSpace(10),
              SizedBox(
                width: 331.w,
                child: Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.black15BoldStyle
                      .copyWith(color: const Color(0xff8391A1)),
                ),
              ),
              const HeighSpace(32),
              PinCodeTextField(
                appContext: context,
                length: 4,
                controller: pinCodeController,
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                textStyle: AppStyles.primaryHeadLinesStyle.copyWith(fontSize: 22.sp),
                pinTheme: PinTheme(
                  fieldHeight: 60.h,
                  fieldWidth: 70.w,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8.r),
                  selectedColor: AppColors.primaryColor,
                  selectedFillColor: AppColors.whiteColor,
                  activeColor: AppColors.primaryColor,
                  activeFillColor: AppColors.whiteColor,
                  inactiveColor: AppColors.greyColor,
                  inactiveFillColor: AppColors.greyColor.withValues(alpha: 0.1),
                  borderWidth: 1
                ),
              ),
              const HeighSpace(38),
              PrimaryButtonWidget(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.passwordChanged);
                },
                buttonText: "Verify",
                fontSize: 15.sp,
              ),
              const HeighSpace(360),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: "Didn’t received code? ",
                        style: AppStyles.black15BoldStyle
                            .copyWith(color: AppColors.primaryColor),
                        children: [
                      TextSpan(
                        text: "Resend",
                        style: AppStyles.black15BoldStyle,
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ])),
              ),
              const HeighSpace(26)
            ],
          ),
        ),
      ),
    );
  }
}
