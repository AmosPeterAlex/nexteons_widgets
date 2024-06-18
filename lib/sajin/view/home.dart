import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/widgets/checkbox_widget.dart';
import 'package:nexteons_widgets/amos/widgets/scrollbar_widget.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/icon_button.dart';
import 'package:nexteons_widgets/sajin/buttons/outline_button.dart';
import 'package:nexteons_widgets/sajin/buttons/radio_button.dart';
import 'package:nexteons_widgets/sajin/buttons/text_button.dart';
import 'package:nexteons_widgets/sajin/text/custom_text.dart';
import 'package:nexteons_widgets/sajin/utils/my_textstyle.dart';

class SajinHomeScreen extends StatefulWidget {
  const SajinHomeScreen({super.key});

  @override
  State<SajinHomeScreen> createState() => _SajinHomeScreenState();
}

class _SajinHomeScreenState extends State<SajinHomeScreen> {
  String selectedButton = '';

  bool isChecked = false;

  void handleRadioValueChange(String value) {
    setState(() {
      selectedButton = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final cont = TextEditingController();

    return Scaffold(
      body: MyScrollBarWidget(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomFilledButton(
                  buttonText: "save",
                  icon: Icons.add,
                  // textFontSize: 50,
                  buttonStyle: ButtonStyle(
                   
                      backgroundColor: WidgetStatePropertyAll(Colors.amber)),
                  textColor: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  //  height: 50,
                  width: 150,
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
                  // buttonStyle: ButtonStyle(
                  //     textStyle: WidgetStatePropertyAll(TextStyle(
                  //         fontSize: 60,
                  //         color: Theme.of(context).colorScheme.primary))),
                  // textColor: Theme.of(context).colorScheme.tertiary,
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
                  style: MyTextSTyles.mainText,
                  // fontSize: MyTextSTyles.mainText.fontSize,
                  // textColor: MyTextSTyles.mainText.color,
                  // fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  // fontWeight: Theme.of(context).textTheme.bodyLarge?.fontWeight,
                  // textColor: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextButton(
                  onPressed: () {
                    // Your onPressed action here
                  },
                  buttonText: 'Forget Password',

                  underline: false, // This will not show the underline
                ),
                CustomTextButton(
                  onPressed: () {
                    // Your onPressed action here
                  },
                  buttonText: 'Login Product',

                  underline: true, // This will show the underline
                ),
                Row(
                  children: [
                    CustomTextButton(
                      onPressed: () {
                        // Your onPressed action here
                      },
                      buttonText: 'Login Product',

                      underline: true, // This will show the underline
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CustomTextButton(
                      onPressed: () {
                        // Your onPressed action here
                      },
                      buttonText: 'sign  Product',
                      textColor: Theme.of(context).primaryColorLight,

                      underline: true, // This will show the underline
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CustomTextButton(
                      onPressed: () {
                        // Your onPressed action here
                      },
                      buttonText: 'Login Product',
                      textColor: Theme.of(context).primaryColor,

                      underline: true, // This will show the underline
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomRadioButton(
                      buttonText: 'Option 1',
                      isSelected: selectedButton == 'Option 1',
                      onTap: () => handleRadioValueChange('Option 1'),
                    ),
                    CustomRadioButton(
                      buttonText: 'Option 2',
                      isSelected: selectedButton == 'Option 2',
                      onTap: () => handleRadioValueChange('Option 2'),
                    ),
                    CustomRadioButton(
                      // buttonText: 'Option 3',
                      isSelected: selectedButton == 'Option 3',
                      onTap: () => handleRadioValueChange('Option 3'),
                    ),
                  ],
                ),
                CheckboxTextWidget(
                  isChecked: isChecked,
                  onChanged: (value) {
                    isChecked = value!;
                    setState(() {});
                  },
                  text: "OK",
                ),
                Column(
                  children: List.generate(
                    80,
                    (index) {
                      return Text("-----------");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
