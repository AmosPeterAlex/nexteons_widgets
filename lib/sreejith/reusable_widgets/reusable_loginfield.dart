import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';
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
      this.style,
      this.hintcolor,
      this.validator});

  final String text;
  final TextEditingController? controller;
  final String? hintText;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final Color? hintcolor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          style: TextStyle(
                  color:
                      color ?? Theme.of(context).textTheme.labelMedium?.color,
                  fontSize: fontSize ??
                      Theme.of(context).textTheme.labelMedium?.fontSize,
                  fontWeight: fontWeight ??
                      Theme.of(context).textTheme.labelMedium?.fontWeight)
              .merge(style),
        ),

        ///need to do gap
        SizedBox(
          height: 10,
        ),

        ReusableTextFormField(
          validator: validator,
          enabled: true,
          controller: controller,
          hintText: hintText,
          hintStyle: TextStyle(
              color:
                  hintcolor ?? Theme.of(context).textTheme.labelMedium?.color),
        )
      ],
    );
  }
}
