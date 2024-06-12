import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/core/theme/my_themes.dart';
import 'package:nexteons_widgets/amos/scrollbar_without_color.dart';
import 'package:nexteons_widgets/amos/widgets/custom_scrollbar.dart';

//custom widget

class MyScrollBarWidget extends StatelessWidget {
  final Widget child;

  ///give same controller of scrollable child
  final ScrollController? controller;

  const MyScrollBarWidget({super.key, required this.child, this.controller});

  @override
  Widget build(BuildContext context) {
    return ScrollbarTheme(
      data: ScrollbarThemeData(
          mainAxisMargin: 3, trackColor: WidgetStatePropertyAll(MaterialTheme.lightScheme().outlineVariant),),
      child: CustomScrollBarWithNoColor(
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
    -----track
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
