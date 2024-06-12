import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const.dart';
import 'package:nexteons_widgets/sreejith/utils/constants.dart';
import 'package:nexteons_widgets/sreejith/view/lgin.dart';

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
            bodyLarge: const TextStyle().headerText, // Default text color
            bodyMedium: const TextStyle().buttonText,
            bodySmall: const TextStyle().textFieldText,
           
            labelSmall: const TextStyle().textf,  ///for text content inside textformfield Size = 15,weight = normal
            labelMedium: const TextStyle().texthed), /// for text content inside textform size = 16 , weiht = w700
       
        primaryColor: const Color(0xFF2164B0),
        primaryColorDark: Colors.black,
        secondaryHeaderColor: const Color(0xFFCBCBCB),


    
        hintColor: Colors.grey,
        // colorScheme: ColorScheme.light(

        // )
      ),
      home: LoginScreen(),
    );
  }
}
