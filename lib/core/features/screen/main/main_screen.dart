import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/core/features/screen/all_card_page/all_card_page.dart';
import 'package:untitled1/core/features/screen/main/home_Screen.dart';
import 'package:untitled1/core/features/screen/profile_page/profile_page.dart';
import 'package:untitled1/core/styling/app_assets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> screen = [
    const HomeScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.pink,
    ),
        const AllCardPage(),
    const ProfilePage(),
  ];
  Color getIconColor(int index) {
    return _selectedIndex == index ? const Color(0xff617AFD) : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(color: Color(0xff1F2C37)),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: const Color(0xffFDFDFD),
            unselectedLabelStyle: const TextStyle(color: Color(0xff9CA4AB)),
            currentIndex: _selectedIndex,
            onTap: onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.homeIcons,
                  colorFilter:
                      ColorFilter.mode(getIconColor(0), BlendMode.srcIn),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.chartIcons,
                  colorFilter:
                      ColorFilter.mode(getIconColor(1), BlendMode.srcIn),
                ),
                label: 'Statistic',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  maxRadius: 33,
                  backgroundColor: const Color(0xff617AFD),
                  child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: const Color(0xffffffff)),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xff617AFD),
                      )),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.walletIcons,
                  colorFilter:
                      ColorFilter.mode(getIconColor(3), BlendMode.srcIn),
                ),
                label: 'My card',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.profileIcons,
                  colorFilter:
                      ColorFilter.mode(getIconColor(4), BlendMode.srcIn),
                ),
                label: 'Profil',
              ),
            ],
          ),
        ));
  }
}
