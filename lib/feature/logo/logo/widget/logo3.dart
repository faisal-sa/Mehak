import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class Logo3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(54.6084, 36.2667);
    path_0.lineTo(30.1506, 36.2667);
    path_0.lineTo(30.1506, 13.8667);
    path_0.cubicTo(24.247, 8.53333, 20.8735, 5.44, 15.0753, 0);
    path_0.cubicTo(9.17169, 5.33333, 5.79819, 8.42666, 0, 13.8667);
    path_0.lineTo(0, 64);
    path_0.lineTo(54.7139, 64);
    path_0.cubicTo(60.7229, 58.4533, 63.991, 55.4667, 70, 50.0267);
    path_0.cubicTo(63.991, 44.6933, 60.7229, 41.6, 54.7139, 36.16);
    path_0.lineTo(54.6084, 36.2667);
    path_0.close();
    path_0.moveTo(22.5602, 57.0667);
    path_0.lineTo(7.48495, 57.0667);
    path_0.lineTo(7.48495, 16.64);
    path_0.lineTo(15.0753, 9.70667);
    path_0.lineTo(22.6657, 16.64);
    path_0.lineTo(22.6657, 57.0667);
    path_0.lineTo(22.5602, 57.0667);
    path_0.close();
    path_0.moveTo(54.8193, 53.9733);
    path_0.lineTo(51.4458, 57.0667);
    path_0.lineTo(30.1506, 57.0667);
    path_0.lineTo(30.1506, 43.0933);
    path_0.lineTo(51.5512, 43.0933);
    path_0.cubicTo(53.5542, 44.9067, 55.241, 46.4, 56.9277, 48);
    path_0.cubicTo(57.6657, 48.64, 58.4036, 49.3867, 59.1416, 50.0267);
    path_0.cubicTo(57.6657, 51.3067, 56.2952, 52.5867, 54.8193, 53.9733);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff23B48D).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
