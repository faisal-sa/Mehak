import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_project/common/context_extension.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 32.h,
        children: [
          SvgPicture.asset("assets/images/no_notifications.svg"),
          Text(
            "لا يوجد تنبيهات",
            style: context.headlineSmall!.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
