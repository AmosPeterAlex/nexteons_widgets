import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/text_button.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_loginfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var econtroller = TextEditingController();
  var pcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: size.height,
            width: 600,
            color: Colors.blue,
          ),
      
          ///main container for login and email textformfield
      
          Padding(
            padding: const EdgeInsets.only(left: 50.0,top: 100),
            child: SizedBox(
              // color: Colors.red,
              height: size.height,
              width: size.width * 0.45,
              
      
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    text: "Welcome Back!",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyLarge?.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodyLarge?.fontWeight,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
      
                  CustomText(
                    text: "please enter your details",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium?.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodyMedium?.fontWeight,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
                  ),
      
                  ///Nedd to change to gap
                  SizedBox(
                    height: 30,
                  ),
      
                  ReusableLoginTextField(
                    controller: econtroller,
                    text: 'Email Address',
                  ),
      
                  ///need to change as gap
                  SizedBox(
                    height: 20,
                  ),
      
                  ReusableLoginTextField(
                    controller: pcontroller,
                    text: "Password",
                    hintText: "Password",
                  ),
      
                  ///need to change as gap
                  SizedBox(
                    height: 20,
                  ),
      
                  SizedBox(
                    width: size.width,
                    child: CustomFilledButton(
                      buttonText: "Login",
                      // buttonColor: WidgetStateProperty.all(),
                    ),
                  ),
      
                  ///need to change as gap
                  SizedBox(
                    height: 20,
                  ),
      
                  Spacer(),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Don't have an account? ",
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.fontWeight,
                            color: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.color),
                      ),
                      CustomTextButton(
                        textColor: Theme.of(context).primaryColor,
                        underline: true,
                        onPressed: () {},
                        buttonText: "Signup now",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
