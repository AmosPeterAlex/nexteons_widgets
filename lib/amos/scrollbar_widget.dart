import 'package:flutter/material.dart';

//custom widget

class ScrollBarWidget extends StatelessWidget {
 final Widget child;

  const ScrollBarWidget({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
   
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        radius: Radius.circular(15),
        trackBorderColor: WidgetStatePropertyAll(Colors.blueGrey),
        thickness: WidgetStatePropertyAll(12),
        thumbColor: WidgetStatePropertyAll(Colors.grey[600]),
        trackColor: WidgetStateProperty.all(Colors.grey[300]),
        trackVisibility: WidgetStateProperty.all(true),
        thumbVisibility: WidgetStateProperty.all(true),
      ),
      child: Scrollbar(
        interactive: false,
        child: child,
      ),
    );
  }
}
