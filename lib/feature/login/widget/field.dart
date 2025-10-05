import 'package:flutter/material.dart';
import 'package:hackathon_project/common/context_extension.dart';

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
    this.labeltext,
    this.fillColor,
  });

  final Widget? label;
  final String? labeltext;
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
      style: const TextStyle(color: Colors.black),
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
      ),
    );
  }
}
