import 'package:flutter/material.dart';
import 'package:flutter_scan_bluetooth_example/Bluetooth/ble.dart';
import 'package:flutter_scan_bluetooth_example/Landing/tab_bar.dart';
import 'package:flutter_scan_bluetooth_example/Login/login.dart';

import 'package:flutter_scan_bluetooth_example/start/start_up.dart';

import 'Registration/registration.dart';

void main() {
  runApp(XYZ());
}

class XYZ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        '/': (context) => Start_up(),
        '/ble': (context) => BLE(),
        '/login': (context) => LoginView(),
        '/tab-bar': (context) => Tab_Bar(),
        '/registration': (context) => Registration(),
      },
    );
  }
}
