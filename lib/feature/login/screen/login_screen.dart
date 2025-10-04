import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/login/screen/otp_screen.dart';
import 'package:hackathon_project/feature/login/widget/phone_country.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? value = false;
  // VoidCallback? get onPressed => null; // Initialize as nullable bool for null safety

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: SafeArea(
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
                  fontSize: 16,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50.h,
                ),
              ),
              Field(
                labeltext: "الاسم",
                radius: 5,
                hint: Text(
                  "الاسم",
                  style: TextStyle(
                    color: const Color(0xFF9E9E9E),
                    fontSize: 17,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50.h,
                  ),
                ),
              ),
              PhoneCountry(),
              Row(
                children: [
                  Checkbox(
                    tristate: false, // Example with tristate
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

              ButtonLog(
                tital: "متابعة",
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
              ButtonLog(
                tital: "تابع باستخدام Google",
                image: "assets/images/Googleicon.png",
                //   iconData: Icon(Icons.g_mobiledata, size: 24),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50.h,
                ),
                buttonstylew: AppTheme().secondaryButtonStyle,
              ),
              ButtonLog(
                tital: "تابع باستخدام Apple",
                iconData: Icon(Icons.apple, color: Colors.black, size: 26),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50.h,
                ),
                buttonstylew: AppTheme().secondaryButtonStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonLog extends StatefulWidget {
  ButtonLog({
    super.key,
    required this.tital,
    this.iconData,
    this.buttonstylew,
    this.style,
    this.navigator,
    this.image,
  });
  String tital;
  Icon? iconData;
  ButtonStyle? buttonstylew;
  TextStyle? style;
  VoidCallback? navigator;
  String? image;

  @override
  State<ButtonLog> createState() => _ButtonLogState();
}

class _ButtonLogState extends State<ButtonLog> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.navigator,

      style: widget.buttonstylew,
      child:
          //widget
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ?widget.iconData,
              if (widget.image != null) Image.asset(widget.image!),
              SizedBox(width: 12.w),
              Text(widget.tital, style: widget.style ?? context.labelMedium),
            ],
          ),
    );
  }
}

class Field extends StatelessWidget {
  const Field({
    super.key,
    this.label,
    this.hint,
    required this.radius,
    this.borderWidth,
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    required this.labeltext,
    this.fillColor,
  });
  final Widget? label;
  final String labeltext;

  final Widget? hint;
  final double radius;
  final double? borderWidth;
  final Color? borderColor;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: fillColor,
        filled: true,
        hint: hint,
        label: label,
        labelText: labeltext,
        labelStyle: context.displaySmall,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: borderWidth ?? 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: borderWidth ?? 1,
          ),
        ),
        /* contentPadding: EdgeInsets.symmetric(
          horizontal: 58.h,
        ), */
        // Adjust vertical padding
      ),
    );
  }
}
