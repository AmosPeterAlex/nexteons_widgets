import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const/navikator_key_const.dart';

class MyIconStyle {
  static var iconBlack = IconThemeData(
      color: Theme.of(navigatorKey.currentContext!).colorScheme.tertiary,
      size: 15);
  static var iconWhite = IconThemeData(
      color: Theme.of(navigatorKey.currentContext!).colorScheme.onTertiary,
      size: 15);
}
