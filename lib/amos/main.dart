import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/sample_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SamplePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

