import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nexteons_widgets/sreejith/button.dart/model/button_model.dart';
import 'package:nexteons_widgets/sreejith/button.dart/ontap_filled_button.dart';
import 'package:nexteons_widgets/sreejith/controller/button_controller.dart';
import 'package:nexteons_widgets/sreejith/main.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_dropdown.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_search.dart';

class CustomerGeneral extends StatelessWidget {
  CustomerGeneral({super.key});

  var controller = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    controller.ontapmaterials = [
      ButtonModel(
        icon: Icons.add,
        buttonText: "Dashboard",
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
        buttonText: "Inventory",
        isclicked: false.obs,
        onPressed: () {
          controller.buttonchange(1);
          controller.selectedIndex.value = 1;
          //  Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CheckingT()));
        },
      ),
      ButtonModel(
        icon: Icons.note,
        buttonText: "Accounts",
        isclicked: false.obs,
        onPressed: () {
          controller.buttonchange(2);
          controller.selectedIndex.value = 2;
          //  Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CheckingT()));
        },
      ),
      ButtonModel(
        icon: Icons.note,
        buttonText: "Maters",
        isclicked: false.obs,
        onPressed: () {
          controller.buttonchange(3);
          controller.selectedIndex.value = 3;
          //  Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CheckingT()));
        },
      ),
    ].obs;

    return Scaffold(

      //todo : need to change the bakground color
      backgroundColor: Colors.white,
      appBar: AppBar(

   //todo : need to change the bakground color
     
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.yellow,
              ))
        ],
        leading: Icon(Icons.star),
        toolbarHeight: 120,
        title: Container(
          height: 100,
          // color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(170),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // width: double.infinity,
                      // width: 600,
                      // color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            controller.ontapmaterials.length, (index) {
                          return Obx(
                            () => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomOntapFilledButton(
                                icon: controller.ontapmaterials[index].icon,
                                buttonText:
                                    controller.ontapmaterials[index].buttonText,
                                isclicked:
                                    controller.ontapmaterials[index].isclicked,
                                onPressed:
                                    controller.ontapmaterials[index].onPressed,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 50, 
                    width: 700,
                    child: SearchWidget(
                      hintText: "what are you seeking for",
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
        // bottom: PreferredSize(
        //     preferredSize: Size(double.infinity, 100),
        //     child: Column(
        //       children: [
        //         SearchWidget(),
        //         Container(
        //             height: 20, color: Theme.of(context).secondaryHeaderColor)
        //       ],
        //     )),
      ),

      // body: Column(
      //   children: [
      //     Text("hi"),
      //     CustomDropDown(
      //       list: dropList,
      //       drophint: "Status",
      //     ),
      //   ],
      // ),
    );
  }
}
