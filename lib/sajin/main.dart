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
          bodyLarge: TextStyle().headerText, ///this  is used gor large fontsize and header text
          bodyMedium: TextStyle().whiteButtonText,///this is used for white text that used in filled button
          titleMedium: TextStyle().blackButtonText,/// this is used in black text that used in filled button and  used in another widgets  also
          bodySmall: TextStyle().textFieldText /// text that used in textformfield
          ),
      iconTheme: IconThemeData().iconWhite,

          primaryIconTheme: IconThemeData().iconBlack,

    ),
    home: SajinHomeScreen(),
  ));
}

class SajinHomeScreen extends StatelessWidget {
  const SajinHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CustomFilledButton(
              buttonText: "save",
              // textFontSize: 20,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              //  height: 50,
               width: 150,
              child: CustomFilledButton(
                buttonText: "save",
                // textFontSize: 20,
                icon: Icons.add,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              // height: 25,
              // width: 100,

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
            // CustomTextButton(
            //   buttonText: "Product list",
            //   onPressed: () {},
            //   underline: true,
            //   textColor: Colors.blue,
            // ),
            //  CustomTextButton(
            //   buttonText: "llllllllllllllllllllllllllllll",
            //   onPressed: () {},
            //   underline: true,
            //   textColor: Colors.blue,
            // ),
            // CustomTextButton(
            //   buttonText: "Add product",
            //   onPressed: () {},
            //   underline: true,
            //   textColor: Colors.blue,
            // ),
            // CustomTextButton(
            //   buttonText: "forget password",
            //   onPressed: () {},
            // ),
            CustomTextButton(
  onPressed: () {
    // Your onPressed action here
  },
  buttonText: 'Forget Password',
  fontSize: 16.0,
  textColor: Colors.grey,
  fontWeight: FontWeight.normal,
  underline: false, // This will not show the underline
),
CustomTextButton(
  onPressed: () {
    // Your onPressed action here
  },
  buttonText: 'Login Product',
  fontSize: 16.0,
  textColor: Colors.blue,
  fontWeight: FontWeight.normal,
  underline: true, // This will show the underline
),
            
          ],
        ),
      ),
    );
  }
}
