import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/feature/login/screen/otp_screen.dart';
import 'package:hackathon_project/feature/login/widget/field.dart';
import 'package:hackathon_project/feature/login/widget/login_button.dart';
import 'package:hackathon_project/feature/login/widget/phone_country.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(), backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w700,
                    height: 2.19,
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  "اسم المستخدم",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
                Field(
                  fillColor: Colors.white,

                  hint: Text(
                    'الاسم',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.20),
                      fontSize: 17,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  radius: 8,
                ),
                PhoneCountry(),
                Row(
                  children: [
                    Checkbox(
                      tristate: false,
                      value: value,
                      onChanged: (bool? newValue) {
                        setState(() {
                          value = newValue;
                        });
                      },
                    ),
                    Text(
                      "بالضغط هنا, اوافق على",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50.h,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "الشروط و الاحكام",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans Arabic',
                          fontWeight: FontWeight.w700,
                          height: 1.50.h,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        setState(() {});
                      },
                    ),
                  ],
                ),

                LoginButton(
                  tital: "متابعة",
                  buttonstylew: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF23B48D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50.h,
                  ),
                  navigator: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpScreen()),
                    );
                  },
                ),
                Divider(),
                LoginButton(
                  tital: "تابع باستخدام Google",
                  image: "assets/images/Google.png",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50.h,
                  ),
                  buttonstylew: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                LoginButton(
                  tital: "تابع باستخدام Apple",
                  iconData: Icon(Icons.apple, color: Colors.black, size: 26),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50.h,
                  ),
                  buttonstylew: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
