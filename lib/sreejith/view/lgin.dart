import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/text_button.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_loginfield.dart';
import 'package:nexteons_widgets/sreejith/view/customer_general.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final econtroller = TextEditingController();
  final pcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: formkey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: size.height,
              width: 600,
              color: Color(0xFFE3F3FF),
            ),

            ///main container for login and email textformfield

            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 100),
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

                    /// gap added
                    Gap(20),

                    ReusableLoginTextField(
                      controller: econtroller,
                      text: 'Email Address',
                      validator: (email) {
                        if (email!.isEmpty) {
                          return " this field required";
                        }
                      },
                    ),

                    /// gap added
                    Gap(20),

                    ReusableLoginTextField(
                      controller: pcontroller,
                      text: "Password",
                      hintText: "Password",
                      hintcolor: Colors.grey,
                      validator: (pass) {
                        if (pass!.isEmpty) {
                          return " this field required";
                        }
                      },
                    ),

                    /// gap added
                    Gap(20),

                    SizedBox(
                      width: size.width,
                      child: CustomFilledButton(
                        buttonText: "Login",
                        // buttonColor: WidgetStateProperty.all(),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Yeah successfull"),
                              backgroundColor: Colors.green,
                            ));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomerGeneral()));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("better luck next tym "),
                              backgroundColor: Colors.red,
                            ));
                          }
                        },
                      ),
                    ),

                    ///gap added
                    //  Gap(20),

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
      ),
    );
  }
}
