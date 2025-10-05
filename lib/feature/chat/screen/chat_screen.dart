import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/common/widget/field.dart';
import 'package:hackathon_project/feature/chat/widget/chat_container.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        centerTitle: true,
        leading: BackButton(),
        title: ColoredBox(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16.r),
                  child: Image.asset("assets/images/ej1.png"),
                ),
              ),
              SizedBox(width: 16.w),
              Column(
                children: [
                  Text(
                    "عمارة للإيجار",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  Text(
                    "شركة بناء عقارية",
                    style: TextStyle(
                      color: const Color(0xFF9E9E9E),
                      fontSize: 12,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call, color: AppTheme.green),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 23.dg,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("02/10/2025", style: context.bodySmall),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ChatContainer(
                        msg: "السلام عليكم",
                        time: "AM 10:21",
                        image: "assets/images/check1.svg",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ChatContainer(msg: "وعليكم السلام", time: "PM 1:24"),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 137.h,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: 48,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE9E9EB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  child: Row(
                    spacing: 16.w,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 75.w,
                          height: 58.h,

                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF23B48D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
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
                          child: Image.asset("assets/images/iconsend.png"),
                        ),
                      ),

                      Expanded(
                        child: SizedBox(
                          child: Field(
                            radius: 16,
                            labeltext: "اكتب رسالتك هنا",
                            borderColor: AppTheme.white,
                            fillColor: AppTheme.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
