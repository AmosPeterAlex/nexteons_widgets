import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              CustomText(

                text: "Welcome Back",
              ),

              CustomText(
                text: "please enter your details",
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}