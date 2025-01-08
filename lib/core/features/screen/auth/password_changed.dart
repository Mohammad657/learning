import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/routing/app_routes.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/styling/app_styles.dart';
import 'package:untitled1/core/widgets/primary_button_widget.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.successMarkIcons),
            const HeighSpace(35),
            SizedBox(
              width: 300.w,
              child: Text("Password Changed!",
                  textAlign: TextAlign.center,
                  style: AppStyles.primaryHeadLinesStyle),
            ),
            const HeighSpace(8),
            SizedBox(
              width: 226.w,
              child: Text(
                "Your password has been changed successfully.",
                textAlign: TextAlign.center,
                style: AppStyles.black15BoldStyle
                    .copyWith(color: const Color(0xff8391A1)),
              ),
            ),
            const HeighSpace(40),
            PrimaryButtonWidget(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              },
              buttonText: "Back to Login",
            ),
          ],
        ),
      ),
    );
  }
}
