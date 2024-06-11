import 'package:flutter/material.dart';

class GroupSwitchingWidget extends StatefulWidget {
  final List<String> values;

  const GroupSwitchingWidget({
    super.key,
    required this.values,
  });

  @override
  _GroupSwitchingWidgetState createState() => _GroupSwitchingWidgetState();
}

class _GroupSwitchingWidgetState extends State<GroupSwitchingWidget> {
  int currentIndex = 0;

  void handleUpPressed() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      }
    });
    // widget.onUpPressed?.call();
  }

  void handleDownPressed() {
    setState(() {
      if (currentIndex < widget.values.length - 1) {
        currentIndex++;
      }
    });
    // widget.onDownPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      // width: 50,//enagne fix akneoi
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.values[currentIndex],
            style: TextStyle(overflow: TextOverflow.ellipsis),
          ),
          SizedBox(width: 5),
          Column(
            children: [
              GestureDetector(
                onTap: handleUpPressed,
                child: Icon(
                  Icons.keyboard_arrow_up_outlined,
                  size: 16.0,
                ),
              ),
              GestureDetector(
                onTap: handleDownPressed,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
