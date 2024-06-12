
import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';
import 'package:nexteons_widgets/sajin/utils/my_textstyle.dart';

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
            WidgetStateProperty.all<Color>(Theme.of(context).colorScheme.primary),
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
              //  style:MyTextSTyles.whiteButtonText ,
              fontSize:textFontSize?? MyTextSTyles.whiteButtonText.fontSize,
              fontWeight:textFontWeight?? MyTextSTyles.whiteButtonText.fontWeight,
              textColor:textColor ??MyTextSTyles.whiteButtonText.color,
            )),
        ],
      ),
    );
  }
}
