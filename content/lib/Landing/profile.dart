import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile(this.colorVal);
  int colorVal;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/row-1-col-2.jpg"),
              fit: BoxFit.fill)),
    );
  }
}
