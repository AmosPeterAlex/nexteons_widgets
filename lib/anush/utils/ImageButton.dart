import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class CustomImageButton extends StatelessWidget {
  final void Function()? onPressed;
  final AssetGenImage assetImage;
  const CustomImageButton({super.key, this.onPressed, required this.assetImage});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: assetImage.image(fit: BoxFit.fill),
    );
  }
}
