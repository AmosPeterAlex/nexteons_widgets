import 'package:flutter/material.dart';
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
        primaryColor:  Colors.blue,
         primaryColorDark: Colors.black,
        hintColor: Colors.grey,
      
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const RefactorViews(),
    );
  }
}
