import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myoverlay(),
  ));
}

class Myoverlay extends StatefulWidget {
   Myoverlay({super.key});

  late OverlayEntry overlayEntry  ;

  @override
  State<Myoverlay> createState() => _MyoverlayState();
}

class _MyoverlayState extends State<Myoverlay> {
  void showoverlay(BuildContext context) {
    

    widget.overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
          top: 50,
          bottom: 100,
          left: 10,
          right: 10,
          child: Material(
            child: Container(
               color: Colors.red[50],
              height: 100,
              width: 300,
              child: Text("this an example for overlay",style: TextStyle(color: Colors.black),),
            ),
          ));
    });
     Overlay.of(context).insert(widget.overlayEntry);
  }
  @override
  void dispose() {
    widget.overlayEntry.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overlay Example"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            showoverlay(context);
          },
          child: Text("Press button for overlay"),
        ),
      ),
    );
  }
}
