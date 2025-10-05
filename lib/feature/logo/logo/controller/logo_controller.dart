import 'package:flutter/material.dart';
import 'package:hackathon_project/feature/logo/logo/widget/logo1.dart';
import 'package:hackathon_project/feature/logo/logo/widget/logo2.dart';
import 'package:hackathon_project/feature/logo/logo/widget/logo3.dart';
import 'package:hackathon_project/feature/logo/logo/widget/logo4.dart';

class LogoController {
  int currentIndex = 0;

  final List<Widget> painters = [
    CustomPaint(size: Size(107, 96), painter: Logo1()),
    CustomPaint(size: Size(106, 96), painter: Logo2()),
    CustomPaint(size: Size(70, 64), painter: Logo3()),
    CustomPaint(size: Size(254, 64), painter: Logo4()),
  ];

  final List<Size> sizebox = [
    Size(107, 96),
    Size(106, 96),
    Size(70, 64),
    Size(254, 64),
  ];

  final List<CustomPainter> customPainter = [
    Logo1(),
    Logo2(),
    Logo3(),
    Logo4(),
  ];
}
