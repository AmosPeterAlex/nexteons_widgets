import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';
import '../utils/enum/button_bar.dart';

class CustomEnumButtonsRow extends StatelessWidget {
  final Map<CustomEnumButtonBar, VoidCallback>? buttonCallbacks;

  const CustomEnumButtonsRow({
    super.key,
    this.buttonCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: CustomEnumButtonBar.values
          .where(
        (element) => buttonCallbacks?[element] != null,
      )
          .map((button) {
        return IconButton(
            icon: SvgPicture.asset(getImageAsset(button)),
            onPressed: buttonCallbacks?[button] ??
                () {
                  print("No call back defined for this button");
                });
      }).toList(),
    );
  }
}

String getImageAsset(CustomEnumButtonBar button) {
  switch (button) {
    case CustomEnumButtonBar.attachFile:
      return Assets.svg.attachFile;
    case CustomEnumButtonBar.moveGroup:
      return Assets.svg.moveGroup;
    case CustomEnumButtonBar.filter:
      return Assets.svg.filter;
    case CustomEnumButtonBar.touchApp:
      return Assets.svg.touchApp;
    case CustomEnumButtonBar.barcode:
      return Assets.svg.barcode;
    case CustomEnumButtonBar.print:
      return Assets.svg.print;
    case CustomEnumButtonBar.deviceReset:
      return Assets.svg.deviceReset;
    case CustomEnumButtonBar.firstPage:
      return Assets.svg.firstPage;
    case CustomEnumButtonBar.backward:
      return Assets.svg.arrowBackwardIos;
    case CustomEnumButtonBar.forward:
      return Assets.svg.arrowForwardIos;
    case CustomEnumButtonBar.lastPage:
      return Assets.svg.lastPage;
    default:
      return '';
  }
}
