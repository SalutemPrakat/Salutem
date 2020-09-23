import 'package:flutter/material.dart';

class HelpContent extends StatefulWidget {
  HelpContent(this.colorVal);
  int colorVal;

  @override
  _HelpContentState createState() => _HelpContentState();
}

class _HelpContentState extends State<HelpContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/Capture.png"),
              fit: BoxFit.contain)),
      //child: Text("data"),
    );
  }
}
