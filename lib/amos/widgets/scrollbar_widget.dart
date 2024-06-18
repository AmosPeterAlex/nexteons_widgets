import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/widgets/custom_scrollbar.dart';

//custom widget from promting AI

class MyScrollBarWidget extends StatelessWidget {
  final Widget child;

  ///give same controller of scrollable child
  final ScrollController? controller;

  ///Extends [CustomScrollbar] for which trackradius parameter is extra added
  const MyScrollBarWidget({super.key, required this.child, this.controller});

  @override
  Widget build(BuildContext context) {
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        mainAxisMargin: 3,
        trackBorderColor: const WidgetStatePropertyAll(Colors.transparent),
        trackColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.outlineVariant)
            // WidgetStatePropertyAll(MaterialTheme.lightScheme().outlineVariant),
      ),
      child: CustomScrollbar(
        controller: controller,
        trackRadius: const Radius.circular(12),
        thumbVisibility: true,
        interactive: false,
        trackVisibility: true,
        child: child,
      ),
    );
  }
}


/*
  ----track
       FIGMA DESIGN
       width: 22px;
       height: 474px;
       top: 106px;
       left: 1006px;
       gap: 0px;
       border-radius: 8px 0px 0px 0px;
       opacity: 0px;
 ---inner thumb
       width: 14px;
       height: 101px;
       top: 111px;
       left: 1010px;
       gap: 0px;
       border-radius: 8px 0px 0px 0px;
       opacity: 0px;



 */
