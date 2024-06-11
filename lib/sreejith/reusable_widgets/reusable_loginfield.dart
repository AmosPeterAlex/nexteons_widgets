import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_textFormField.dart';

class ReusableLoginTextField extends StatelessWidget {
  ReusableLoginTextField(
      {super.key,
      required this.text,
      this.controller,
      this.hintText,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.style});

  final String text;
  final TextEditingController? controller;
  final String? hintText;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
                  color: color ?? Theme.of(context).primaryColorDark,
                  fontSize: fontSize ?? 16,
                  fontWeight: fontWeight ?? FontWeight.w500)
              .merge(style),
        ),
        ReusableTextFormField(
          controller: controller,
          hintText: hintText,
          hintStyle: TextStyle(color: color ?? Theme.of(context).hintColor),
        )
      ],
    );
  }
}
