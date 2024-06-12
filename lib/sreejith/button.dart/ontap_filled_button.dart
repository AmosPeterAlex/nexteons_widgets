import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';

class CustomOntapFilledButton extends StatelessWidget {
  final IconData? icon;
  final ButtonStyle? style;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final WidgetStateProperty<Color?>? buttonColor;
   RxBool? isclicked ;
  // WidgetStateProperty<Color?>? bgcolor = WidgetStateProperty.all(Colors.white);

 

  CustomOntapFilledButton({
    super.key,
    this.icon,
    this.style,
    this.iconSize,
    this.iconColor,
    this.onPressed,
    this.buttonText,
    this.textFontSize,
    this.textColor,
    this.buttonColor,
    this.isclicked,
    // this.bgcolor,
  }) : assert(icon != null || buttonText != null,
            'At least one value (icon or buttonText) must be provided.');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(
      () => 
       FilledButton(
        style: ButtonStyle(
          backgroundColor: isclicked!.value == true
              ? WidgetStateProperty.all<Color>(Theme.of(context).primaryColor)
              : WidgetStateProperty.all<Color>(Colors.white),
      
          // widget.buttonColor ??
          //     WidgetStateProperty.all<Color>(Theme.of(context).primaryColor),
      
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: BorderSide(
                  color: isclicked!.value == true ? Colors.blue : Colors.grey),
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
                child: Icon(icon,
                    size: iconSize ?? Theme.of(context).iconTheme.size,
                    color:
                        isclicked!.value == true ? Colors.white : Colors.black
                    //  widget.iconColor ?? Theme.of(context).iconTheme.color,
                    ),
              ),
            if (icon != null && buttonText != null)
              SizedBox(width: size.width * .02), // Space between icon and text
            if (buttonText != null)
              FittedBox(
                  child: CustomText(
                      text: buttonText,
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium?.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodyMedium?.fontWeight,
                      textColor:
                          isclicked!.value == true ? Colors.white : Colors.black
                      // Theme.of(context).textTheme.bodyMedium?.color,
                      )),
          ],
        ),
      ),
    );
  }
}
