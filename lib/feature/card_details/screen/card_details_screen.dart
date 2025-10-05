// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({super.key});

  @override
  State<CardDetailsScreen> createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 400.0,
            automaticallyImplyLeading: false,
            leadingWidth: 120,
            leading: Row(
              children: [
                SizedBox(width: 18.w),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: Colors.white.withValues(alpha: 0.50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: SvgPicture.asset("assets/images/Arrow_back.svg"),
                  ),
                ),
              ],
            ),
            actions: [
              Row(
                spacing: 16.w,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: Colors.white.withValues(alpha: 0.50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: SvgPicture.asset("assets/images/Share.svg"),
                  ),

                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: Colors.white.withValues(alpha: 0.50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: SvgPicture.asset("assets/images/Archive_add.svg"),
                  ),
                ],
              ),
              SizedBox(width: 16.w),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/shop.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Container(
                width: 440.w,
                height: 700.h,
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.all(16.w),
                child: Center(
                  child: Column(
                    spacing: 8.h,
                    children: [
                      Text(
                        "محل للإيجار",
                        style: context.titleMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "الرياض , حي النرجس",
                        style: context.titleMedium!.copyWith(
                          color: Color(0xff555555),
                        ),
                      ),
                      Chip(
                        backgroundColor: Color(0xff2f579a),
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                        label: Text(
                          "القيمة عالية",
                          style: context.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.white,
                          ),
                        ),
                      ),
                      Chip(
                        side: BorderSide(color: Color(0xffe9e9eb)),
                        backgroundColor: Colors.white,
                        label: SizedBox(
                          width: 408.w,
                          height: 120.h,

                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              spacing: 32.h,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/space.svg",
                                      colorFilter: ColorFilter.mode(
                                        Colors.black,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'مساحة  450 م²',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0xFF555555),
                                        fontSize: 16,
                                        fontFamily: 'IBM Plex Sans Arabic',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      "assets/images/Time.svg",
                                      colorFilter: ColorFilter.mode(
                                        Colors.black,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),

                                    Text(
                                      'عمر العقار 3 سنوات ',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0xFF555555),
                                        fontSize: 16,
                                        fontFamily: 'IBM Plex Sans Arabic',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/Navigator.svg",
                                      colorFilter: ColorFilter.mode(
                                        Colors.black,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),

                                    Text(
                                      'الواجهه شمال',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0xFF555555),
                                        fontSize: 16,
                                        fontFamily: 'IBM Plex Sans Arabic',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      "assets/images/Street.svg",
                                      colorFilter: ColorFilter.mode(
                                        Colors.black,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),

                                    Text(
                                      'عرض الشارع 15 م',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0xFF555555),
                                        fontSize: 16,
                                        fontFamily: 'IBM Plex Sans Arabic',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Chip(
                        side: BorderSide(color: Color(0xffe9e9eb)),
                        backgroundColor: Colors.white,
                        label: SizedBox(
                          width: 408.w,
                          height: 120.h,

                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              spacing: 8.h,
                              children: [
                                SizedBox(
                                  width: 344,
                                  child: Text(
                                    'الوصف',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'IBM Plex Sans Arabic',
                                      fontWeight: FontWeight.w700,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: 344,

                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            'محل للإيجار على شارع عثمان بن عفان حي النرجس جنوب ',
                                        style: TextStyle(
                                          color: const Color(0xFF555555),
                                          fontSize: 14,
                                          fontFamily: 'IBM Plex Sans Arabic',
                                          fontWeight: FontWeight.w400,
                                          height: 1.50,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                "انس بن مالك ، المخطط والقطعة 941-2737",
                                            style: TextStyle(
                                              color: const Color(0xFF555555),
                                              fontSize: 14,
                                              fontFamily:
                                                  'IBM Plex Sans Arabic',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shadowColor: Color(0x19000000),

        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            spacing: 8,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(48.w, 48.h),

                  backgroundColor: const Color(0xFF23B48D),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset("assets/images/Call.svg"),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(140.w, 48.h),
                  backgroundColor: const Color(0xFF23B48D),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'محادثة',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
              Spacer(),
              Text(
                '571،200',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFF23B48D),
                  fontSize: 18,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              SvgPicture.asset("assets/images/SRS.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
