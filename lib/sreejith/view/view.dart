import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_loginfield.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_textFormField.dart';

import '../../sajin/buttons/filled _button.dart';

class RefactorViews extends StatelessWidget {
  const RefactorViews({super.key});

  @override
  Widget build(BuildContext context) {
    var firstcontroller = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
            children: [
              SizedBox(
                width: double.infinity,
                child: ReusableTextFormField(
                  enabled: false,
                  fontSize: 40,
                  filled: true,
                  filledColor: Colors.grey,
                  
                  IsEditable: true,
                  hintText: "Bank Name",
                  hintStyle: TextStyle(
                    fontSize: 15,
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ReusableTextFormField(
                controller: firstcontroller,
                IsEditable: true,
                // fontSize: 20,
                hintText: "BranchCode",
                // contentPadding: EdgeInsets.zero,
          
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomFilledButton(
                    onPressed: () {},
                    icon: Icons.location_on,
                    buttonText: "Add Location",
                  ),
                ),
              ),
          
          //             ReusableLoginTextField(text: 'Full Name',
          //             // hintText: "email",
          //             ),
          
          //             SizedBox(height: 20,),
          
          //             ReusableLoginTextField(
                
          //               text: 'email',
          //             hintText: "email",
          //             ),
          
          //  SizedBox(height: 20,),
          
          //              ReusableTextFormField(
          //       hintText: "This can be editable",
          //               IsEditable: false,
          
          //              )
            ],
          ),
        ),
      ),
    );
  }
}
