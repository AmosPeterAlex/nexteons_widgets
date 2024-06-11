import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const.dart';
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
      theme: ThemeData(textTheme: TextTheme(
            bodyLarge: TextStyle().headerText, // Default text color
            bodyMedium: TextStyle().buttonText,
            bodySmall: TextStyle().textFieldText),
        primaryColor: Colors.blue,
        primaryColorDark: Colors.black,
        hintColor: Colors.grey,),
      home: const RefactorViews(),
    );
  }
}
