import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const.dart';
import 'package:nexteons_widgets/sreejith/utils/constants.dart';
import 'package:nexteons_widgets/sreejith/view/lgin.dart';
import 'package:nexteons_widgets/sreejith/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            bodyLarge: TextStyle().headerText, // Default text color
            bodyMedium: TextStyle().buttonText,
            bodySmall: TextStyle().textFieldText,
            labelSmall: TextStyle().textf,
            labelMedium: TextStyle().texthed),
        primaryColor: Color(0xFF2164B0),
        primaryColorDark: Colors.black,
        secondaryHeaderColor: Color(0xFFCBCBCB),


    
        hintColor: Colors.grey,
        // colorScheme: ColorScheme.light(

        // )
      ),
      home: LoginScreen(),
    );
  }
}
