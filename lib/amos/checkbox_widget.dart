import 'package:flutter/material.dart';

class RoundedCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final String? text;

  RoundedCheckbox({required this.initialValue, this.onChanged, this.text});

  @override
  _RoundedCheckboxState createState() => _RoundedCheckboxState();
}

class _RoundedCheckboxState extends State<RoundedCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            isChecked = !isChecked;
            widget.onChanged?.call(isChecked);
          },
        );
      },
      child: Row(
        children: [
          // Checkbox(
          //   value: isChecked,
          //   onChanged: (value) {},
          // ),
          Container(
            //value evde kodukeno
            width: 24,
            height: 24,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(
                    color: Colors.grey[300]!), //color theme il ninu akenm
              ),
            ),
            child: isChecked
                ? Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.grey[700],
                  )
                : null,
          ),
          //text widget should show only of the value of text !=null
          if (widget.text != null) ...[SizedBox(width: 15), Text(widget.text!)]
        ],
      ),
    );
  }
}
