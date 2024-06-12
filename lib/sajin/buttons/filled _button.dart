// import 'package:flutter/material.dart';

// class CustomFilledButton extends StatelessWidget {
//   final IconData? icon;
//   final ButtonStyle? style;
//   final double? iconSize;
//   final Color? iconColor;
//   final double? height;
//   final double? width;
//   final VoidCallback? onPressed;
//   final String? buttonText;
//   final double? textFontSize;
//   final Color? textColor;
//   final WidgetStateProperty<Color?>? buttonColor;

//   const CustomFilledButton({
//     super.key,
//     this.icon,
//     this.style,
//     this.iconSize,
//     this.iconColor,
//     this.height,
//     this.width,
//     this.onPressed,
//     this.buttonText,
//     this.textFontSize,
//     this.textColor,
//     this.buttonColor,
//   }) : assert(icon != null || buttonText != null,
//             'At least one value (icon or buttonText) must be provided.');

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SizedBox(
//       width: width,
//       height: height,      child: FilledButton(

//         style: ButtonStyle(
//           backgroundColor: buttonColor ??
//               WidgetStateProperty.all<Color>(Theme.of(context).primaryColor),
//           shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(
//                   6.0), // Rectangular shape with rounded corners
//             ),
//           ),
//         ).merge(style),
//         // .merge chetythal style il ulla all property avidey kittum

//         onPressed: onPressed,
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             if (icon != null)
//               Icon(
//                 icon,
//                 size: iconSize??16,
//                 color: iconColor??Theme.of(context).iconTheme.color,
//               ),
//             if (icon != null && buttonText != null)
//               SizedBox(width: size.width * .02), // Space between icon and text
//             if (buttonText != null)
//               FittedBox(
//                 child: Text(
//                   buttonText ??"",
//                   style: TextStyle(fontSize: textFontSize??16, color: textColor??Theme.of(context).textTheme.bodyLarge?.color),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';

class CustomFilledButton extends StatelessWidget {
  final IconData? icon;
  final ButtonStyle? style;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final WidgetStateProperty<Color?>? buttonColor;
  final FontWeight? textFontWeight;

  const CustomFilledButton({
    super.key,
    this.icon,
    this.style,
    this.iconSize,
    this.iconColor,
    this.onPressed,
    this.buttonText,
    this.textFontSize,
    this.textFontWeight,
    this.textColor,
    this.buttonColor,
  }) : assert(icon != null || buttonText != null,
            'At least one value (icon or buttonText) must be provided.');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FilledButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
        backgroundColor: buttonColor ??
            WidgetStateProperty.all<Color>(Theme.of(context).primaryColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                6.0), // Rectangular shape with rounded corners
          ),
        ),
      ).merge(style),
      // .merge chetythal style il ulla all property avidey kittum

      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            FittedBox(
              child: Icon(
                icon,
                size: iconSize ?? Theme.of(context).iconTheme.size,
                color: iconColor ?? Theme.of(context).iconTheme.color,
              ),
            ),
          if (icon != null && buttonText != null)
            SizedBox(width: size.width * .02), // Space between icon and text
          if (buttonText != null)
            FittedBox(
                child: CustomText(
              text: buttonText,
              fontSize:textFontSize?? Theme.of(context).textTheme.bodyMedium?.fontSize,
              fontWeight:textFontWeight?? Theme.of(context).textTheme.bodyMedium?.fontWeight,
              textColor:textColor ??Theme.of(context).textTheme.bodyMedium?.color,
            )),
        ],
      ),
    );
  }
}
