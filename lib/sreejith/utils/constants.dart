import 'package:flutter/material.dart';

extension text on TextStyle {
  TextStyle get textf {
    return copyWith(
      fontWeight: FontWeight.normal,
       fontSize: 15, color: Colors.black);
  }

    TextStyle get texthed {
    return copyWith(
      fontWeight: FontWeight.w700,
       fontSize: 16, color: Colors.black);
  }
}
