import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/context_extension.dart';

class LoginButton extends StatefulWidget {
  LoginButton({
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
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.navigator,

      style: widget.buttonstylew,
      child: Row(
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
