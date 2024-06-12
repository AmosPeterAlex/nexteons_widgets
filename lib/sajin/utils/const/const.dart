import 'package:flutter/material.dart';

extension text on TextStyle {
  TextStyle get headerText {
    return copyWith(
        fontWeight: FontWeight.w700, fontSize: 45, color: Colors.black);
  }
///10
  TextStyle get whiteButtonText {
    return copyWith(
        fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white);
  }
  TextStyle get blackButtonText {
    return copyWith(
        fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black);
  }
  TextStyle get GreyButtonText {
    return copyWith(
        fontWeight: FontWeight.w500, fontSize: 17, color: Color(0xff9C9C9C));
  }

  TextStyle get textFieldText {
    return copyWith(
        fontWeight: FontWeight.w500, fontSize: 6, color: Colors.black);
  }
}
class tsessrtt{
  
}
extension icon on IconThemeData {
  IconThemeData get iconBlack {
    return copyWith(color: Colors.black, size: 15,);
  }
   IconThemeData get iconWhite {
    return copyWith(color: Colors.white, size: 15,);
  }
}
