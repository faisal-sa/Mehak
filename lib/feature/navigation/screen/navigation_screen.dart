import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/feature/navigation/controller/navigation_controller.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key, required this.signedin});
  final bool signedin;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late bool signed = widget.signedin;

  late NavigationController controller = NavigationController(signedin: signed);
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
                "assets/images/home-2.svg",
                colorFilter: ColorFilter.mode(
                  controller.index == 0 ? Color(0xff198065) : Color(0xff414141),
                  BlendMode.srcIn,
                ),
              ),
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/archive.svg",
                colorFilter: ColorFilter.mode(
                  controller.index == 1 ? Color(0xff198065) : Color(0xff414141),
                  BlendMode.srcIn,
                ),
              ),
              label: "المفضلة",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/messages.svg",
                colorFilter: ColorFilter.mode(
                  controller.index == 2 ? Color(0xff198065) : Color(0xff414141),
                  BlendMode.srcIn,
                ),
              ),
              label: "الرسائل",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Users.svg",
                colorFilter: ColorFilter.mode(
                  controller.index == 3 ? Color(0xff198065) : Color(0xff414141),
                  BlendMode.srcIn,
                ),
              ),
              label: "الحساب",
            ),
          ],
        ),
      ),
      body: controller.screens[controller.index],
    );
  }
}
