import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0).w,
        child: Center(
          child: Container(
            width: 408.w,
            height: 255.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [Color(0xff252632), Color(0xff23b48d)],
                stops: [0.01, 0.99],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
