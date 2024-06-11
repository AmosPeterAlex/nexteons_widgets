import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const.dart';
import 'view.dart';

void main(){
  runApp(
  MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue, // Primary color for the app
        // Accent color for the app

        textTheme: TextTheme(
            bodyLarge: TextStyle().headerText, // Default text color
            bodyMedium: TextStyle().buttonText,
            bodySmall: TextStyle().textFieldText // Secondary text color
        ),
        iconTheme: IconThemeData(
            color: Colors.black,
            size: 15
          // Default icon color
        ),
      ),
      home: MyDataGridPage(),
    );
  }
}