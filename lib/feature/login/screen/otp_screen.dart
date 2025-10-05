import 'package:flutter/material.dart';
import 'package:hackathon_project/feature/navigation/screen/navigation_screen.dart';
import 'package:pinput/pinput.dart';
import 'package:hackathon_project/common/app_theme.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otpCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButtonIcon()),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "أدخل رمز التحقق",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w700,
                height: 1.75,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "تم إرسال رمز التحقق على + 966500000000",
                  style: TextStyle(
                    color: const Color(0xFF555555),
                    fontSize: 16,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(" "),
                InkWell(
                  child: Text(
                    "تغير",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  defaultPinTheme: PinTheme(
                    width: 96,
                    height: 67,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: BoxBorder.all(
                        color: Colors.black.withValues(alpha: 0.20),
                        width: 1,
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w700,
                      height: 1.50,
                    ),
                  ),
                  length: 4,
                  onCompleted: (value) {
                    otpCode = value;

                    if (otpCode == "1234") {
                      _showSuccessDialog(context);
                    } else {
                      _showFailureDialog(context);
                    }
                  },
                ),
              ),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "لم يصلك الرمز؟",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "إعادة إرسال الرمز",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Text(
                  "02:59",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
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
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 60),
            const SizedBox(height: 12),
            const Text(
              "تم التحقق بنجاح",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w700,
                height: 1.50,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF23B48D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigationScreen(signedin: true),
                  ),
                );
              },
              child: const Text(
                "أكمل",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFailureDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.cancel, color: Colors.red, size: 60),
            const SizedBox(height: 12),
            const Text(
              "لم يتم التحقق بنجاح",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w700,
                height: 1.50,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF23B48D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "عودة",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
