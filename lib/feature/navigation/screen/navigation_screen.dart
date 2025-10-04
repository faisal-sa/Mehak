import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/feature/home/widget/home_app_bar.dart';
import 'package:hackathon_project/feature/navigation/controller/navigation_controller.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  NavigationController controller = NavigationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: controller.appbars[controller.index],

      bottomNavigationBar: SizedBox(
        height: 137.h,

        child: BottomNavigationBar(
          onTap: (index) {
            setState(() => controller.index = index);
          },
          currentIndex: controller.index,

          iconSize: 32.w,
          backgroundColor: Colors.white,
          selectedItemColor: AppTheme.green,
          unselectedItemColor: AppTheme.grey,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                colorFilter: ColorFilter.mode(
                  Color(0xff198065),
                  BlendMode.srcIn,
                ),
              ),
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/archive.svg"),
              label: "المفضلة",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/messages.svg"),
              label: "الرسائل",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Users.svg"),
              label: "الحساب",
            ),
          ],
        ),
      ),
      body: controller.screens[controller.index],
    );
  }
}
