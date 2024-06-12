import 'package:flutter/material.dart';

extension text on TextStyle {
  TextStyle get headerText {
    return copyWith(
        fontWeight: FontWeight.w700, fontSize: 45, color: Colors.black);
  }

  TextStyle get whiteButtonText {
    return copyWith(
        fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white);
  }
  TextStyle get blackButtonText {
    return copyWith(
        fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black);
  }

  TextStyle get textFieldText {
    return copyWith(
        fontWeight: FontWeight.w500, fontSize: 6, color: Colors.black);
  }
}

extension icon on IconThemeData {
  IconThemeData get iconBlack {
    return copyWith(color: Colors.black, size: 15,);
  }
   IconThemeData get iconWhite {
    return copyWith(color: Colors.white, size: 15,);
  }
}
