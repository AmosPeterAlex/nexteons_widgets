import 'package:flutter/material.dart';
import 'package:nexteons_widgets/anush/view.dart';
import 'package:nexteons_widgets/sajin/utils/const/navikator_key_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue, // Primary color for the app
        // Accent color for the app
      ),
      home: MyDataGridPage(),
    );
  }
}
