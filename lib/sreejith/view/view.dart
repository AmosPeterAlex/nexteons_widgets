import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nexteons_widgets/sreejith/button.dart/model/button_model.dart';
import 'package:nexteons_widgets/sreejith/button.dart/ontap_filled_button.dart';
import 'package:nexteons_widgets/sreejith/controller/button_controller.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_loginfield.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_textFormField.dart';
import 'package:nexteons_widgets/sreejith/view/checking/checking.dart';

import '../../sajin/buttons/filled _button.dart';

class RefactorViews extends StatelessWidget {
  RefactorViews({super.key});

  final controller = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    var firstcontroller = TextEditingController();

    // bool ischeck = true;

    controller.ontapmaterials = [
      ButtonModel(
        icon: Icons.add,
        buttonText: "add text",
        isclicked: true.obs,
        onPressed: () {
          controller.buttonchange(0);
          controller.selectedIndex.value = 0;
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CheckingO()));
        },
      ),
      ButtonModel(
        icon: Icons.note,
        buttonText: "add note",
        isclicked: false.obs,
        onPressed: () {
          controller.buttonchange(1);
          controller.selectedIndex.value = 1;
          //  Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CheckingT()));
        },
      ),
    ].obs;

    return Obx(
      () => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
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
                const SizedBox(
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
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 20, right: 20),
                  child: Row(
                    children: List.generate(controller.ontapmaterials.length,
                        (index) {
                      return Obx(
                        () => CustomOntapFilledButton(
                          icon: controller.ontapmaterials[index].icon,
                          buttonText:
                              controller.ontapmaterials[index].buttonText,
                          isclicked: controller.ontapmaterials[index].isclicked,
                          onPressed: controller.ontapmaterials[index].onPressed,
                        ),
                      );
                    }),
                  ),
                ),
                if (controller.selectedIndex == 0) ...[
                  Container(
                    height: 100,
                    width: 200,
                    child: CheckingO(),
                  )
                ] else ...[
                  Container(
                    height: 200,
                    width: 200,
                    child: CheckingT(),
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
