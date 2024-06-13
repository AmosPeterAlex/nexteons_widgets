import 'package:flutter/material.dart';

class CheckingO extends StatelessWidget {
  const CheckingO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(


        height: 100,
        width: 200,
        color: Colors.amber,
        child: Text("add text"),
      ),
    );
  }
}


class CheckingT extends StatelessWidget {
  const CheckingT({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
        child: Text("delete"),
      ),
    );
  }
}