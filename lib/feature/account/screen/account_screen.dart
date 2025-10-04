import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          spacing: 8.h,
          children: [
            Row(
              spacing: 8.w,
              children: [
                SvgPicture.asset(
                  "assets/images/Users.svg",
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                Text(
                  "معلومات الحساب",
                  style: context.headlineSmall!.copyWith(color: AppTheme.green),
                ),
              ],
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("معلومات الحساب"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("تغيير رقم الجوال"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("العناوين المحفوظة"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Row(
              spacing: 8.w,
              children: [
                SvgPicture.asset(
                  "assets/images/warning.svg",
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                Text(
                  "عن محك",
                  style: context.headlineSmall!.copyWith(color: AppTheme.green),
                ),
              ],
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("عن محك"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("شروط الأستخدام"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("سياسة الخصوصية"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                title: Text("الإعدادات"),
                trailing: SvgPicture.asset("assets/images/Arrow_left.svg"),
              ),
            ),
            Row(
              spacing: 8.w,
              children: [
                SvgPicture.asset(
                  "assets/images/exit.svg",

                  colorFilter: ColorFilter.mode(
                    Color(0xffd94a4a),
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  "تسجيل الخروج",
                  style: context.headlineSmall!.copyWith(
                    fontSize: 17.w,
                    color: Color(0xffd94a4a),
                  ),
                ),
              ],
            ),
          ],
        ),

        //SignInCard(),
      ),
    );
  }
}

class SignInCard extends StatelessWidget {
  const SignInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 408.w,
        height: 255.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
            colors: [Color(0xff252632), Color(0xff23b48d)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.0.h),
          child: Column(
            children: [
              Text("انضم الى محك", style: context.headlineSmall),
              RichText(
                text: TextSpan(
                  style: context.bodyMedium,
                  text:
                      "كن عضوًا في محك للحصول على بيانات دقيقة عن أسعار العقارات التجارية، مع مؤشرات الأمان، النمو، الطلب، الدخل، بالإضافة إلى التوقعات المستقبلية للاستثمار في الأحياء والمخططات المختلفة",
                ),
              ),
              Spacer(),
              ElevatedButton(onPressed: () {}, child: Text("تسجيل الدخول")),
            ],
          ),
        ),
      ),
    );
  }
}
