import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';

class CustomOutlineButton extends StatelessWidget {
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final FontWeight? textFontWeight;

  const CustomOutlineButton(
      {super.key,
      this.icon,
      this.iconSize,
      this.iconColor,
      this.onPressed,
      this.buttonText,
      this.textFontSize,
      this.textColor, this.textFontWeight})
      : assert(icon != null || buttonText != null,
            'At least one value (icon or buttonText) must be provided.');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(
                6.0), // Rectangular shape with rounded corners
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,  ///IF THERE is any issue in button calling in login screen commenet this line 
        children: [
          if (icon != null)
            Icon(
              icon,
              size: iconSize ?? Theme.of(context).primaryIconTheme.size,
              color: iconColor ?? Theme.of(context).primaryIconTheme.color,
            ),
          if (icon != null && buttonText != null)
            SizedBox(width: size.width * 0.02),
          if (buttonText != null)
            FittedBox(
                child: CustomText(
              text: buttonText,
              fontSize:textFontSize ??Theme.of(context).textTheme.titleMedium?.fontSize,
              fontWeight:textFontWeight ??Theme.of(context).textTheme.titleMedium?.fontWeight,
              textColor:textColor ??Theme.of(context).textTheme.titleMedium?.color,
            )),
        ],
      ),
    );
  }
}
