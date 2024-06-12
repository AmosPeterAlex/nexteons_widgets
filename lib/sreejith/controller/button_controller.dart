import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteons_widgets/sreejith/button.dart/model/button_model.dart';

class ButtonController extends GetxController {
  RxList<ButtonModel> ontapmaterials = <ButtonModel>[].obs;
  RxInt selectedIndex = 0.obs;

  Future<void> buttonchange(int clickedindex) async {
    for (int i = 0; i < ontapmaterials.length; i++) {
      if (i == clickedindex && ontapmaterials[clickedindex].isclicked == true) {
        ontapmaterials[i].isclicked!.value = true;
      } else if (i == clickedindex) {
        ontapmaterials[i].isclicked!.value =
            !ontapmaterials[i].isclicked!.value;
      } else {
        ontapmaterials[i].isclicked!.value = false;
      }
    }
  }
}
