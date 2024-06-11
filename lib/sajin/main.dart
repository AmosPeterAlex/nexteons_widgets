import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/outline_button.dart';

void main() {
  runApp(MaterialApp(
   theme: ThemeData(
        primaryColor: Colors.blue, // Primary color for the app
        // Accent color for the app
        
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Default text color
          bodyMedium: TextStyle(color: Colors.black),  // Secondary text color
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // Default icon color

        ),
      ),
    home: SajinHomeScreen(),
  ));
}

class SajinHomeScreen extends StatelessWidget {
  const SajinHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 300,),
          CustomFilledButton(buttonText: "save",height: 50,width: 200,textFontSize: 20,),
           CustomFilledButton(buttonText: "save",height: 50,width: 200,textFontSize: 20,icon: Icons.add,),
           CustomFilledButton(icon: Icons.add_a_photo,),
           CustomOutlineButton(buttonText: "add",textColor: Colors.black,),
           CustomOutlineButton(buttonText: "add",textColor: Colors.black,icon: Icons.add,),
            CustomOutlineButton(icon: Icons.add,)
        ],),
      ),
    );
  }
}
