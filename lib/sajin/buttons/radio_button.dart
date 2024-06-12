import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';

class CustomRadioButton extends StatelessWidget {
  final String? buttonText;
  final bool? isSelected;
  final Function? onTap;
  final double? textFontSize;
  final Color? textColor;
  final FontWeight? textFontWeight;

  const CustomRadioButton({
    super.key,
     this.buttonText,
     this.isSelected,
     this.onTap,
    this.textFontSize,
    this.textColor,
    this.textFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            height: 22.0,
            width: 22.0,
            decoration: BoxDecoration(
              color: isSelected! ? Theme.of(context).primaryColor : Colors.grey,
              border: Border.all(
                color: isSelected! ? Colors.white : Colors.white,
                width: 5.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: isSelected!
                ? Center(
                    child: Container(
                      height: 11.0,
                      width: 11.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  )
                : null,
          ),
          CustomText(
            text: buttonText,
            fontSize: textFontSize ??
                Theme.of(context).textTheme.titleMedium?.fontSize,
            fontWeight: textFontWeight ??
                Theme.of(context).textTheme.titleMedium?.fontWeight,
            textColor:
                textColor ?? Theme.of(context).textTheme.titleMedium?.color,
          )
        ],
      ),
    );
  }
}
