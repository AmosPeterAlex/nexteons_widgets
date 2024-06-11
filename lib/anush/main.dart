import 'package:flutter/material.dart';
import 'package:nexteons_widgets/anush/response/view.dart';

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
      home: MyDataGridPage(),
    );
  }
}