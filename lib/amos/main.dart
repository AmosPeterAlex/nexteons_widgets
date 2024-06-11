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
      theme: ThemeData(
        primaryColor: const Color(0XFF5570F1),
        highlightColor: const Color(0XFF838383), //thumb color
        disabledColor: const Color(0XFFD9D9D9), //track color
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
