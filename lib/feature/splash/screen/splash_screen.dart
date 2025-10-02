import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/feature/boarding/screen/boarding_screen.dart';
import 'dart:ui' as ui;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 3), () {
      setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BoardingScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Center(
        child: CustomPaint(size: Size(44, 94), painter: RPSCustomPainter()),
        // child: Row(
        //   spacing: 12.w,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     // Image.asset("assets/images/logo_name.png"),
        //     // Image.asset("assets/images/logo_icon.png"),
        //   ],
        // ),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 94);
    path_0.lineTo(44, 94);
    path_0.lineTo(44, 83.8167);
    path_0.lineTo(44, 63.2933);
    path_0.lineTo(44, 53.2667);
    path_0.lineTo(44, 20.3667);
    path_0.cubicTo(35.3846, 12.5333, 30.4615, 7.99, 22, 0);
    path_0.cubicTo(13.3846, 7.83333, 8.46154, 12.3767, 0, 20.3667);
    path_0.lineTo(0, 94);
    path_0.close();
    path_0.moveTo(33.0769, 83.8167);
    path_0.lineTo(11.0769, 83.8167);
    path_0.lineTo(11.0769, 24.44);
    path_0.lineTo(22.1538, 14.2567);
    path_0.lineTo(33.2308, 24.44);
    path_0.lineTo(33.2308, 54.1283);
    path_0.lineTo(33.2308, 83.8167);
    path_0.lineTo(33.0769, 83.8167);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff23B48D).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff808080).withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(
          size.width * 0.3409091,
          size.height * 0.2978723,
          size.width * 0.1363636,
          size.height * 0.06382979,
        ),
        bottomRight: Radius.circular(size.width * 0.002272727),
        bottomLeft: Radius.circular(size.width * 0.002272727),
        topLeft: Radius.circular(size.width * 0.002272727),
        topRight: Radius.circular(size.width * 0.002272727),
      ),
      paint_1_fill,
    );

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff808080).withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(
          size.width * 0.5227273,
          size.height * 0.2978723,
          size.width * 0.1363636,
          size.height * 0.06382979,
        ),
        bottomRight: Radius.circular(size.width * 0.002272727),
        bottomLeft: Radius.circular(size.width * 0.002272727),
        topLeft: Radius.circular(size.width * 0.002272727),
        topRight: Radius.circular(size.width * 0.002272727),
      ),
      paint_2_fill,
    );

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff808080).withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(
          size.width * 0.3409091,
          size.height * 0.3936170,
          size.width * 0.1363636,
          size.height * 0.06382979,
        ),
        bottomRight: Radius.circular(size.width * 0.002272727),
        bottomLeft: Radius.circular(size.width * 0.002272727),
        topLeft: Radius.circular(size.width * 0.002272727),
        topRight: Radius.circular(size.width * 0.002272727),
      ),
      paint_3_fill,
    );

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff808080).withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(
          size.width * 0.5227273,
          size.height * 0.3936170,
          size.width * 0.1363636,
          size.height * 0.06382979,
        ),
        bottomRight: Radius.circular(size.width * 0.002272727),
        bottomLeft: Radius.circular(size.width * 0.002272727),
        topLeft: Radius.circular(size.width * 0.002272727),
        topRight: Radius.circular(size.width * 0.002272727),
      ),
      paint_4_fill,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
