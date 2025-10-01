import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({
    super.key,
    required this.label,
    this.hint,
    required this.radius,
    this.borderWidth,
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
  });
  final Widget label;
  final Widget? hint;
  final double radius;
  final double? borderWidth;
  final Color? borderColor;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hint: hint,
        label: label,
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
      ),
    );
  }
}
