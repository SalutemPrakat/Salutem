import 'package:flutter/material.dart';
import 'package:flutter_scan_bluetooth_example/Bluetooth/ble.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter_blue/flutter_blue.dart';

class Home extends StatefulWidget {
  Home(this.colorVal);
  int colorVal;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //get _tabController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          // onTap: () {
          //   Navigator.pushNamed(context, '/landing');
          // },
          child: new FittedBox(
            child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer1(),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 180,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24.0),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                          image: AssetImage("lib/assets/flower.jpg"),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          // onTap: () {
          //   Navigator.pushNamed(context, '/landing');
          // },
          child: new FittedBox(
            child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer2(),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 180,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24.0),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                          image: AssetImage("lib/assets/flower.jpg"),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new BLE()));
          },
          child: new FittedBox(
            child: Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer3(),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 180,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24.0),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                          image: AssetImage("lib/assets/tenor.gif"),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    ]));
  }

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text("Vulnerability",
                  style: TextStyle(
                    color: Color.alphaBlend(Colors.green, Colors.green),
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ))),
        ),
        Container(
            child: Text("(Building)",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  //fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ))),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text("Self-Assess!",
                  style: TextStyle(
                    color: Color.alphaBlend(Colors.green, Colors.green),
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ))),
        ),
        Container(
            child: Text("(Building)",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  //fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ))),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text("Contact Tracing",
                  style: TextStyle(
                    color: Color.alphaBlend(Colors.green, Colors.green),
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ))),
        ),
        Container(
            child: Text("(Building)",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  //fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ))),
      ],
    );
  }
}
