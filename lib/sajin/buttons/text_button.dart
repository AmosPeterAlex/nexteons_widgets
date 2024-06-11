// // import 'package:flutter/material.dart';

// // class CustomTextButton extends StatelessWidget {
// //   final void Function()? onPressed;
// //   final String? buttonText;
// //   final double? fontSize;
// //   final Color? textColor;
// //   final TextStyle? style;
// //   final FontWeight? fontWeight;
// //   final bool underline;
// //   CustomTextButton(
// //       {super.key,
// //       this.onPressed,
// //       this.fontSize,
// //       this.textColor,
// //       this.style,
// //       this.fontWeight,
// //       this.buttonText,this.underline = false});

// //   @override
// //   Widget build(BuildContext context) {
// //     return TextButton(
// //         onPressed: onPressed,
// //         child: Text(
// //           buttonText ?? "",
// //           style: TextStyle(
// //               color: textColor ?? Theme.of(context).textTheme.bodyMedium?.color,
// //               fontSize: fontSize ?? 16,
// //               fontWeight: fontWeight ?? FontWeight.w500,
// //                decoration: underline ? TextDecoration.underline : TextDecoration.none,
// //                decorationColor: textColor ?? Theme.of(context).textTheme.bodyMedium?.color,
// //                decorationThickness: 2,
// //               ).merge(style),
// //         ),
        
// //         );
// //   }
// // }
// import 'package:flutter/material.dart';

// class CustomTextButton extends StatelessWidget {
//   final void Function()? onPressed;
//   final String? buttonText;
//   final double? fontSize;
//   final Color? textColor;
//   final TextStyle? style;
//   final FontWeight? fontWeight;
//   final bool underline;

//   CustomTextButton(
//       {super.key,
//       this.onPressed,
//       this.fontSize,
//       this.textColor,
//       this.style,
//       this.fontWeight,
//       this.buttonText,
//       this.underline = false}); // default underline to false

//   @override
//   Widget build(BuildContext context) {
//     final effectiveTextColor = textColor ?? Theme.of(context).textTheme.bodyMedium?.color;

//     return TextButton(
//         onPressed: onPressed,
//         child: RichText(
//           text: TextSpan(
//             text: buttonText ?? "",
//             style: TextStyle(
//               color: effectiveTextColor,
//               fontSize: fontSize ?? 16,
//               fontWeight: fontWeight ?? FontWeight.w500,
//               decoration: underline ? TextDecoration.underline : TextDecoration.none,
//               decorationColor: effectiveTextColor,
//               decorationThickness: 3, // Thickness of the underline
//               height: 2, // Adjust height to add space between text and underline
//             ).merge(style),
//           ),
//         ));
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

  CustomTextButton(
      {super.key,
      this.onPressed,
      this.fontSize,
      this.textColor,
      this.style,
      this.fontWeight,
      this.buttonText,
      this.underline = false}); // default underline to false

  @override
  Widget build(BuildContext context) {
    final effectiveTextColor = textColor ?? Theme.of(context).textTheme.bodyLarge?.color;

    return TextButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicWidth(
            child: Text(
            
              buttonText ?? "",
              style: TextStyle(
                color: effectiveTextColor,
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.w500,
              ).merge(style),
            ),
          ),
          if (underline)
            Container(
              margin: const EdgeInsets.only(top: 2), // Adjust the gap here
              height: 2, // Thickness of the underline
              color: effectiveTextColor,
              width: (buttonText ?? "").length * (fontSize ?? 16) * 0.5, // Approximate text width
            ),
        ],
      ),
    );
  }
}
