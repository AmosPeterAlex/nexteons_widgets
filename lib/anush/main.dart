import 'package:flutter/material.dart';
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
        primaryColor: Colors.blue.shade800
      ),
      home: MyDataGridPage(),
    );
  }
}