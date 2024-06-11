import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../gen/assets.gen.dart';
import '../utils/buttons_enum.dart';

class CustomEnumButtonsRow extends StatelessWidget {
  final  Function()? onPressed;
  final List<ImageButton>? additionalButtons;

  const CustomEnumButtonsRow({ this.onPressed, this.additionalButtons});
  @override
  Widget build(BuildContext context) {
    List<ImageButton> buttons = [
      ImageButton.attachFile,
      ImageButton.moveGroup,
      ImageButton.filter,
      ImageButton.touchApp,
      ...?additionalButtons,
      ImageButton.firstPage,
      ImageButton.backward,
      ImageButton.forward,
      ImageButton.lastPage
    ];


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons.map((button) {
        return IconButton(
          icon: SvgPicture.asset(getImageAsset(button)),
          onPressed: () {
            switch(button){
              case ImageButton.attachFile :
                print("Attach FIle");
                break;
              case ImageButton.moveGroup:
                print("Move Group");
                break;
              case ImageButton.filter:
                print("Filter");
                break;
              case ImageButton.touchApp:
                print("Touch App");
                break;
              case ImageButton.barcode:
                print("Barcode");
                break;
              case ImageButton.print:
                print("Print");
                break;
              case ImageButton.deviceReset:
                print("Device Reset");
                break;
              case ImageButton.firstPage:
                print("First Page");
                break;
              case ImageButton.backward:
                print("Backward");
                break;
              case ImageButton.forward:
                print("Forward");
                break;
              case ImageButton.lastPage:
                print("Last Page");
                break;
              default:
                print("Default");
            }
          },
        );
      }).toList(),
    );
  }
}


String getImageAsset(ImageButton button) {
  switch (button) {
    case ImageButton.attachFile:
      return Assets.svg.attachFile;
    case ImageButton.moveGroup:
      return Assets.svg.moveGroup;
    case ImageButton.filter:
      return  Assets.svg.filter;
    case ImageButton.touchApp:
      return Assets.svg.touchApp;
    case ImageButton.barcode:
      return Assets.svg.barcode;
    case ImageButton.print:
      return Assets.svg.print;
    case ImageButton.deviceReset:
      return Assets.svg.deviceReset;
    case ImageButton.firstPage:
      return Assets.svg.firstPage;
    case ImageButton.backward:
      return Assets.svg.arrowBackwardIos;
    case ImageButton.forward:
      return Assets.svg.arrowForwardIos;
    case ImageButton.lastPage:
      return Assets.svg.lastPage;
    default:
      return '';
  }
}