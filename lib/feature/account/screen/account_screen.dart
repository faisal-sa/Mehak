import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/login/screen/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInCard(),
      //AccountSettings()
    );
  }
}

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 408.w,
          height: 255.h,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.76, -1.68),
              end: Alignment(1.00, 1.15),
              colors: [const Color(0xFF252632), const Color(0xFF23B48D)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.0.h),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    "انضم الى محك",

                    style: TextStyle(
                      color: const Color(0xFFF8FCF9),
                      fontSize: 20,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w700,
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: const Color(0xFFF8FCF9),
                      fontSize: 13,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                    text:
                        "كن عضوًا في محك للحصول على بيانات دقيقة عن أسعار العقارات التجارية، مع مؤشرات الأمان، النمو، الطلب، الدخل، بالإضافة إلى التوقعات المستقبلية للاستثمار في الأحياء والمخططات المختلفة",
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text("تسجيل الدخول"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
