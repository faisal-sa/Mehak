import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon_project/feature/boarding/screen/boarding_screen.dart';
import 'package:hackathon_project/feature/logo/logo/controller/logo_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final LogoController _logoController = LogoController();

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 8));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BoardingScreen()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        _logoController.currentIndex =
            (_logoController.currentIndex + 1) %
            _logoController.painters.length;
      });
    });
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: CustomPaint(
            key: ValueKey<int>(_logoController.currentIndex),
            size: _logoController.sizebox[_logoController.currentIndex],
            painter:
                _logoController.customPainter[_logoController.currentIndex],
          ),
        ),
      ),
    );
  }
}
