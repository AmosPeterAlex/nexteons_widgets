
// import 'package:flutter/material.dart';

// class CustomTextButton extends StatelessWidget {
//   final void Function()? onPressed;
//   final String? buttonText;
//   final double? fontSize;
//   final Color? textColor;
//   final TextStyle? style;
//   final FontWeight? fontWeight;
//   final bool underline;
//    final double underlineThickness;

//   CustomTextButton({
//     Key? key,
//     this.onPressed,
//     this.fontSize,
//     this.textColor,
//     this.style,
//     this.fontWeight,
//     this.buttonText,
//     this.underline = false,
//     this.underlineThickness = 2.0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Text(
//         buttonText ?? '',
//         style: TextStyle(
//               fontSize: fontSize,
//               color: textColor,
//               fontWeight: fontWeight,
//               decoration: underline ? TextDecoration.underline : TextDecoration.none,
//                decorationThickness: underline ? underlineThickness : null,
//                decorationColor: textColor,
//             ).merge(style),
//             // ??
//             // TextStyle(
//             //   fontSize: fontSize,
//             //   color: textColor,
//             //   fontWeight: fontWeight,
//             //   decoration: underline ? TextDecoration.underline : TextDecoration.none,
//             // ).merge(style),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? buttonText;
  final double? fontSize;
  final Color? textColor;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final bool underline;
  final double underlineThickness;
  final double underlineGap;

  CustomTextButton({
    Key? key,
    this.onPressed,
    this.fontSize,
    this.textColor,
    this.style,
    this.fontWeight,
    this.buttonText,
    this.underline = false,
    this.underlineThickness = 2.0,
    this.underlineGap = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CustomPaint(
        painter: underline ? TextUnderlinePainter(textColor, underlineThickness, underlineGap) : null,
        child: Text(
          buttonText ?? '',
          style: 
              TextStyle(
                fontSize: fontSize,
                color: textColor,
                fontWeight: fontWeight,
                decoration: TextDecoration.none,
              ).merge(style),
        ),
      ),
    );
  }
}

class TextUnderlinePainter extends CustomPainter {
  final Color? underlineColor;
  final double underlineThickness;
  final double underlineGap;

  TextUnderlinePainter(this.underlineColor, this.underlineThickness, this.underlineGap);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = underlineColor ?? Colors.black
      ..strokeWidth = underlineThickness
      ..style = PaintingStyle.stroke;

    final textBottom = size.height - underlineGap;
    canvas.drawLine(Offset(0, textBottom), Offset(size.width, textBottom), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

