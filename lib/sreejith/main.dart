import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sajin/utils/const/const.dart';
import 'package:nexteons_widgets/sreejith/utils/constants.dart';
import 'package:nexteons_widgets/sreejith/view/customer_general.dart';
import 'package:nexteons_widgets/sreejith/view/lgin.dart';
import 'package:nexteons_widgets/sreejith/view/view.dart';

import 'reusable_widgets/search_model/search_model.dart';

///for search filter defined model
List<dynamic> suggestions = [
  SampleModel(lastname: "muhammed", firstname: " najeeb"),
  SampleModel(lastname: "duglas", firstname: " sajin"),
  SampleModel(lastname: "duglas", firstname: "amos"),
  SampleModel(lastname: "duglas", firstname: "anush"),
];

///for dropdown list
final List<String> dropList = [
  'Sales Type 1',
  'Sales Type 2',
  'Sales Type 3',
  'Sales Type 4',
  'Sales Type 5'
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            bodyLarge: TextStyle().headerText, // Default text color
            bodyMedium: TextStyle().whiteButtonText,
            bodySmall: TextStyle().textFieldText,

           labelLarge: TextStyle().fourteen,/// size = 14 ,weight = w400
            labelSmall: TextStyle().textf,  ///for text content inside textformfield Size = 15,weight = normal
            labelMedium: TextStyle().texthed), /// for text content inside textform size = 16 , weiht = w700
            
       
        primaryColor: Color(0xFF2164B0),
        primaryColorDark: Colors.black,
        secondaryHeaderColor: Color(0xFFCBCBCB),


    
        hintColor: Colors.grey,
        // colorScheme: ColorScheme.light(

        // )
      ),
      home: CustomerGeneral(),
    );
  }
}
