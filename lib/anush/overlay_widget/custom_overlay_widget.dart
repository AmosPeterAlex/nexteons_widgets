import 'package:flutter/material.dart';

import '../../sajin/buttons/text_button.dart';

class CustomOverlayWidget extends StatefulWidget {
  final List<CustomTextButton>? data;
  const CustomOverlayWidget({super.key, this.data});

  @override
  State<CustomOverlayWidget> createState() => CustomOverlayWidgetState();
}

class CustomOverlayWidgetState extends State<CustomOverlayWidget> {
  OverlayEntry? overlayEntry;

  void showOverlay() {
    overlayEntry = createOverlayEntry();
    Overlay.of(context).insert(overlayEntry!);
  }

  void hideOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  OverlayEntry createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 55,
        left: 0,
        right: 0,
        child: Container(
            color: Color(0xFFE3F3FF),
            height: 132,
            width: double.infinity,
            child: Center(
              child: Container(
                height: 80,
                width: 1263,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6, childAspectRatio: 5),
                  itemCount: widget.data?.length,
                  itemBuilder: (context, index) {
                    return Align(alignment: Alignment.centerLeft, child: widget.data?[index]);
                  },
                ),
              ),
            )),
      ),
    );
  }

  @override
  void dispose() {
    hideOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
