import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/icon_button.dart';
import 'package:nexteons_widgets/sajin/buttons/outline_button.dart';
import 'package:nexteons_widgets/sajin/buttons/text_button.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue, // Primary color for the app
      // Accent color for the app

       textTheme: TextTheme(
        bodyLarge: TextStyle().headerText, // Default text color
        bodyMedium: TextStyle().buttonText,
        bodySmall: TextStyle().textFieldText // Secondary text color
      ),
      iconTheme: IconThemeData(
        color: Colors.black, 
        size: 15
        // Default icon color
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
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: CustomFilledButton(
                buttonText: "save",
               
                textFontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 50,
              width: 200,
              child: CustomFilledButton(
                buttonText: "save",
              
                textFontSize: 20,
                icon: Icons.add,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 25,
              // width: 25,
              child: CustomFilledButton(
                icon: Icons.add,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomOutlineButton(
              buttonText: "add",
              textColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            CustomOutlineButton(
              buttonText: "add",
              textColor: Colors.black,
              icon: Icons.add,
            ),
            SizedBox(
              height: 10,
            ),
            CustomOutlineButton(
              icon: Icons.add,
            ),
            SizedBox(
              height: 10,
            ),
            CustomIconButton(
              icon: Icons.add,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "welcome back!",
              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyLarge?.fontWeight,
              textColor: Theme.of(context).textTheme.bodyLarge?.color,
              
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextButton(
              buttonText: "Product list",
              onPressed: () {},
              underline: true,
              textColor: Colors.blue,
            ),
            CustomTextButton(
              buttonText: "Add product",
              onPressed: () {},
              underline: true,
              textColor: Colors.blue,
            ),
            CustomTextButton(
              buttonText: "forget password",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
