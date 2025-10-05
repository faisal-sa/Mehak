import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';

class ChatContainer extends StatelessWidget {
  ChatContainer({super.key, required this.msg, required this.time, this.image});

  String msg;
  String time;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      height: 68.h,
      width: 156.w,
      decoration: BoxDecoration(
        color: Color(0xffE9F8F4),
        border: Border.all(width: 0.5.w, color: AppTheme.green),
        borderRadius: BorderRadius.circular(16.dg),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            msg,
            style: TextStyle(
              color: const Color(0xFF23B48D),
              fontSize: 18,
              fontFamily: 'IBM Plex Sans Arabic',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          Row(
            children: [
              Text(
                time,
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.20),
                  fontSize: 10,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              if (image != null) SvgPicture.asset(image!),
            ],
          ),
        ],
      ),
    );
  }
}
