import 'package:flutter/material.dart';

extension text on TextStyle {
  TextStyle get headerText {
    return copyWith(
        fontWeight: FontWeight.w700, fontSize: 45, color: Colors.black);
  }

  TextStyle get buttonText {
    return copyWith(
        fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black);
  }

  TextStyle get textFieldText {
    return copyWith(
        fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black);
  }
}
