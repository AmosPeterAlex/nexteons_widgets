import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonModel {
  final IconData? icon;
  final ButtonStyle? style;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final WidgetStateProperty<Color?>? buttonColor;
  final RxBool? isclicked ;

  ButtonModel({
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
  });
}
