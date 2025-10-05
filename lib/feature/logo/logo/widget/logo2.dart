// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Logo2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(82.6307, 54.4);
    path_0.lineTo(45.7218, 54.4);
    path_0.lineTo(45.7218, 20.8);
    path_0.cubicTo(36.8127, 12.8, 31.7218, 8.16, 22.9719, 0);
    path_0.cubicTo(14.0628, 8, 8.9719, 12.64, 0.221924, 20.8);
    path_0.lineTo(0.221924, 96);
    path_0.lineTo(82.7898, 96);
    path_0.cubicTo(91.858, 87.68, 96.7898, 83.2, 105.858, 75.04);
    path_0.cubicTo(96.7898, 67.04, 91.858, 62.4, 82.7898, 54.24);
    path_0.lineTo(82.6307, 54.4);
    path_0.close();
    path_0.moveTo(34.2673, 85.6);
    path_0.lineTo(11.5174, 85.6);
    path_0.lineTo(11.5174, 24.96);
    path_0.lineTo(22.9719, 14.56);
    path_0.lineTo(34.4264, 24.96);
    path_0.lineTo(34.4264, 85.6);
    path_0.lineTo(34.2673, 85.6);
    path_0.close();
    path_0.moveTo(82.9489, 80.96);
    path_0.lineTo(77.858, 85.6);
    path_0.lineTo(45.7218, 85.6);
    path_0.lineTo(45.7218, 64.64);
    path_0.lineTo(78.0171, 64.64);
    path_0.cubicTo(81.0398, 67.36, 83.5853, 69.6, 86.1307, 72);
    path_0.cubicTo(87.2444, 72.96, 88.358, 74.08, 89.4716, 75.04);
    path_0.cubicTo(87.2444, 76.96, 85.1762, 78.88, 82.9489, 80.96);
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
