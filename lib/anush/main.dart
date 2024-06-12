import 'package:flutter/material.dart';
import 'package:nexteons_widgets/anush/view.dart';
import 'package:nexteons_widgets/sajin/utils/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue, // Primary color for the app
        // Accent color for the app

        textTheme: TextTheme(
            bodyLarge: const TextStyle().headerText, // Default text color
            bodyMedium: const TextStyle().buttonText,
            bodySmall: const TextStyle().textFieldText // Secondary text color
            ),
        iconTheme: const IconThemeData(color: Colors.black, size: 15
            // Default icon color
            ),
      ),
      home: MyDataGridPage(),
    );
  }
}
