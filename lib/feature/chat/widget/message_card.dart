import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/app_theme.dart';

class MessageCard extends StatelessWidget {
  MessageCard({
    super.key,
    required this.image,
    required this.tital,
    required this.smallTital,
    required this.msg,
    required this.hour,
    required this.isRead,
    this.navigator,
  });
  String image;
  String tital;
  String smallTital;
  String msg;
  String hour;
  bool isRead;
  VoidCallback? navigator;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigator,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 15,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 3.spMax,
              children: [
                SizedBox(
                  height: 96.h,
                  width: 65.w,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16),
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tital,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    Text(
                      smallTital,
                      style: TextStyle(
                        color: const Color(0xFF9E9E9E),
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    // const Spacer(),
                    SizedBox(height: 20.h),
                    Text(
                      msg,
                      style: TextStyle(
                        color: const Color(0xFF1A876A),
                        fontSize: 18,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  spacing: 40,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hour,
                      style: TextStyle(
                        color: const Color(0xFF9E9E9E),
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),

                    CircleAvatar(
                      backgroundColor: isRead ? AppTheme.green : AppTheme.white,
                      radius: 6,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
