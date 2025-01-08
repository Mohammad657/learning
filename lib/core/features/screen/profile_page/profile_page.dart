import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/features/screen/profile_page/widgets/persional_info_card.dart';
import 'package:untitled1/core/features/screen/profile_page/widgets/top_app_bar_profile_widgets.dart';
import 'package:untitled1/core/styling/app_assets.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const TopAppBarProfileWidgets(),
          ClipOval(
            child: Image.asset(
              AppAssets.profileImage,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          const HeighSpace(9),
          const PersionalInfoCard(
            labelText: "Full Name",
            infoText: "Mohammad Al-Alaq",
          ),
          const PersionalInfoCard(
            labelText: "Email",
            infoText: "email@email.com",
          ),
          const PersionalInfoCard(
            labelText: "Phone Number",
            infoText: "+964 781 234 5678",
          ),
          const PersionalInfoCard(
            labelText: "Address",
            infoText: "Najaf,Iraq",
          ),
        ],
      ),
    );
  }
}
