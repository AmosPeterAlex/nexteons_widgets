import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_loginfield.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_textFormField.dart';
import 'package:nexteons_widgets/sreejith/samblebuttons/filledbutt.dart';

class RefactorViews extends StatelessWidget {
  const RefactorViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReusableTextFormField(
              hintText: "Bank Name",
              hintStyle: TextStyle(fontSize: 23,color: Colors.black),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            ReusableTextFormField(
              hintText: "BranchCode",
              hintStyle: TextStyle(color: Colors.black),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomFilledButton(
                  onPressed: () {},
                  icon: Icons.location_on,
                  buttonText: "Add Location",
                ),
              ),
            ),


            ReusableLoginTextField(text: 'Full Name',),

            SizedBox(height: 20,),

            ReusableLoginTextField(text: 'email',
            hintText: "email",
            )
          ],
        ),
      ),
    );
  }
}
