import 'package:flutter/material.dart';

//custom widget

class MyScrollBarWidget extends StatelessWidget {
  final Widget child;

  const MyScrollBarWidget({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    // return RawScrollbar(trackBorderColor: Colors.amber,
    //   trackRadius: Radius.circular(15)
    //   ,child: child);
    return Scrollbar(
      radius: Radius.circular(12),
      thumbVisibility: true,
      trackVisibility: false,
      interactive: false,
      // thickness: 12,F
      child: child,
    );
  }
}
/*
---track
FIGMA DESIGN
width: 22px;
height: 474px;
top: 106px;
left: 1006px;
gap: 0px;
border-radius: 8px 0px 0px 0px;
opacity: 0px;
-----inner thumb
width: 14px;
height: 101px;
top: 111px;
left: 1010px;
gap: 0px;
border-radius: 8px 0px 0px 0px;
opacity: 0px;

*/
