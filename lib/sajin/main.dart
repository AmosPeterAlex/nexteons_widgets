import 'package:flutter/material.dart';
import 'package:nexteons_widgets/core/theme/themes.dart';
import 'package:nexteons_widgets/sajin/utils/const/navikator_key_const.dart';
import 'package:nexteons_widgets/sajin/view/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // primaryColor: Color(0xff2164B0), // Primary color for the app
      // primaryColorLight: Color(0xff5570F1),
      colorScheme: MaterialTheme.lightScheme(),

//  textTheme: Theme.of(context).textTheme.apply(fontFamily: ),arshak bro paranjai code
      // textTheme: TextTheme(
      //     bodyLarge: TextStyle().headerText,
      //     bodyMedium: TextStyle().whiteButtonText,
      //     titleMedium: TextStyle().blackButtonText,
      //     titleLarge: TextStyle().GreyButtonText,
      //     bodySmall: TextStyle().textFieldText),
      // iconTheme: IconThemeData().iconWhite,

      // primaryIconTheme: IconThemeData().iconBlack,
    ),
    navigatorKey: navigatorKey,
    home: SajinHomeScreen(),
  ));
}
