import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/sample_page.dart';
import 'package:nexteons_widgets/core/theme/themes.dart';
import 'package:nexteons_widgets/sajin/utils/const/navikator_key_const.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  SamplePage(),
      theme: ThemeData(colorScheme: MaterialTheme.lightScheme()),
      navigatorKey: navigatorKey,
      // theme: ThemeData(
      //   primaryColor: const Color(0XFF5570F1),
      //   highlightColor: const Color(0xff767680),
      //   // highlightColor: const Color(0XFF838383), //thumb color Color(0xff767680)--outline
      //   disabledColor: const Color(0XFFD9D9D9),
      //   // disabledColor: const Color(0xffc6c5d0), //track color Color(0xffc6c5d0)--ouline varient
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}
