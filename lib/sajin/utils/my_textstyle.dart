import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const/navikator_key_const.dart';

class MyTextSTyles {
  ///fontsize 45, fontweight700, color black,used in larger text in the ui
  static TextStyle mainText = TextStyle(
      fontSize: 45,
      color: Theme.of(navigatorKey.currentContext!).colorScheme.tertiary,
      fontWeight: FontWeight.w700);

  /// fontsize 25, fontweight700, color black,
  static TextStyle headerText = TextStyle(
    fontSize: 14,
    color: Theme.of(navigatorKey.currentContext!).colorScheme.tertiary,
    fontWeight: FontWeight.w700,
  );

  ///fontsize 15, fontweight400, color black,
  static var subText = TextStyle(
      color: Theme.of(navigatorKey.currentContext!).colorScheme.tertiary,
      fontWeight: FontWeight.w400,
      fontSize: 15);

  ///fontsize 16 fontweight400,color black mostly used in textfield
  static var textFieldText = TextStyle(
      color: Theme.of(navigatorKey.currentContext!).colorScheme.tertiary,
      fontWeight: FontWeight.w400,
      fontSize: 16);

  ///fontsize 14,fontweight400,color black mostly used in blackbutton text in outline button
  static var blackButtonText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Theme.of(navigatorKey.currentContext!).colorScheme.tertiary,
  );

  ///fontsize 16,fontweight400,color white mostly used in whitebutton text in filledbutton
  static var whiteButtonText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Theme.of(navigatorKey.currentContext!).colorScheme.onTertiary,
  );
  /// fontsize 16, fontweight,color grey used  in text button
  static var greyButtonText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Theme.of(navigatorKey.currentContext!).colorScheme.onSecondary,
  );
}
