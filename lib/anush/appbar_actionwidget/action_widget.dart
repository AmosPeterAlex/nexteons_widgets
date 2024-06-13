import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../gen/assets.gen.dart';

class CustomAppBarActionWidget extends StatelessWidget {
  const CustomAppBarActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.blue.shade200),
            child: Assets.png.settings.image()),
        Gap(20),
        Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.blue.shade200),
            child: Assets.png.notifications.image()),
        Gap(23),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
          child: Center(
            child: Text(
              "A",
              style: TextStyle(fontSize: 30),
            ),
          ),
        )
      ],
    );
  }
}
