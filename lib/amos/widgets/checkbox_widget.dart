import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckboxWidget extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final String? text;

  CheckboxWidget({
    required this.isChecked,
    required this.onChanged,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          // activeColor: Colors.white,
          // checkColor: Colors.black,
          side: WidgetStateBorderSide.resolveWith(
            (states) {
              return BorderSide(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  width: .5);
              // color: MaterialTheme.lightScheme().outlineVariant, width: .5);
              // return const BorderSide(color: Color(0XFFBDBDBD), width: .5);
              //give color through theme
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        if (text != null) ...[const Gap(1), Text(text!)]

        ///add custom text widget---^^----
      ],
    );
  }
}
