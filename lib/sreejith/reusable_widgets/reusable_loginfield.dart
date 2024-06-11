import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_textFormField.dart';
import 'package:nexteons_widgets/sreejith/utils/constants.dart';

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

        // CustomText(
        //   text: text,
        //   style: TextStyle(
        //           color: color ?? Theme.of(context).textTheme.bodySmall?.color,
        //           fontSize: fontSize ?? Theme.of(context).textTheme.bodySmall?.fontSize,
        //           fontWeight: fontWeight ??  Theme.of(context).textTheme.bodySmall?.fontWeight)
        //       .merge(style),

        // ),


        Text(
          text,
          style: TextStyle(
                  color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
                  fontSize: fontSize ?? Theme.of(context).textTheme.bodyMedium?.fontSize,
                  fontWeight: fontWeight ??  Theme.of(context).textTheme.bodyMedium?.fontWeight)
              .merge(style),
        ),
        ReusableTextFormField(
          enabled: true,
          controller: controller,
          hintText: hintText,
          hintStyle: TextStyle(color: color ?? Theme.of(context).textTheme.displaySmall?.color),
        )
      ],
    );
  }
}
