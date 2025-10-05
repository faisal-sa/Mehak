// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class Logo1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(45.92, 96);
    path_0.lineTo(45.92, 20.8);
    path_0.cubicTo(36.96, 12.8, 31.84, 8.16, 23.04, 0);
    path_0.cubicTo(14.08, 8, 8.96, 12.64, 0, 20.8);
    path_0.lineTo(0, 96);
    path_0.lineTo(45.92, 96);
    path_0.close();
    path_0.moveTo(34.4, 85.6);
    path_0.lineTo(11.52, 85.6);
    path_0.lineTo(11.52, 24.96);
    path_0.lineTo(23.04, 14.56);
    path_0.lineTo(34.56, 24.96);
    path_0.lineTo(34.56, 85.6);
    path_0.lineTo(34.4, 85.6);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff23B48D).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
