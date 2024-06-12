import 'package:flutter/material.dart';

import '../../sajin/buttons/filled _button.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    super.key,
    required this.list,
    this.icon,
    this.drophint,
  });

  final List<dynamic> list;
  final IconData? icon;
  final String? drophint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style:  TextStyle(fontSize: Theme.of(context).textTheme.labelLarge?.fontSize),
      borderRadius: BorderRadius.circular(5),
      decoration: InputDecoration(
          isDense: true,
          fillColor: Colors.white,
          hintText: drophint,
          hintStyle:  TextStyle(color: Colors.black,fontSize: Theme.of(context).textTheme.labelLarge?.fontSize),
          contentPadding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide:
                  BorderSide(color: Theme.of(context).secondaryHeaderColor)),
          enabled: false,
          filled: true,
          // enabledBorder: const OutlineInputBorder(
          //     borderSide:
          //         BorderSide(color: Color.fromARGB(100, 203, 203, 203))
          //         )
                  
                  ),
      icon: IntrinsicWidth(
        child: Row(
          children: [
            if (icon != null)
              CustomFilledButton(
                icon: icon,
                iconSize: 12,
              ),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.keyboard_arrow_down_outlined)
          ],
        ),
      ),
      items: list
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(
                "$e",
                style: const TextStyle(fontSize: 15),
              ),
            ),
          )
          .toList(),
      onChanged: (value) {},
    );
  }
}
