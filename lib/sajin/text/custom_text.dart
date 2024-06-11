import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextStyle? style;
  final FontWeight? fontWeight;

  const CustomText(
      {super.key,
      this.text,
      this.fontSize,
      this.textColor,
      this.style,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        text ?? "",
        style: TextStyle(
                color:
                    textColor ?? Theme.of(context).textTheme.bodyMedium?.color,
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.w700)
            .merge(style),
      ),
    );

    /// google fonts add akan ondu and enniyum parameters add akan ondu
    ///
  }
}
