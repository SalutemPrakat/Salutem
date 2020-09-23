import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_scan_bluetooth/flutter_scan_bluetooth.dart';

class BLE extends StatefulWidget {
  @override
  _BLEState createState() => new _BLEState();
}

class _BLEState extends State<BLE> {
  String _data = '';
  bool _scanning = false;
  FlutterScanBluetooth _bluetooth = FlutterScanBluetooth();

  @override
  void initState() {
    super.initState();

    _bluetooth.devices.listen((device) {
      setState(() {
        _data += device.name + ' (${device.address})\n';
      });
    });
    _bluetooth.scanStopped.listen((device) {
      setState(() {
        _scanning = false;
        _data += 'scan stopped\n';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Contact Tracing (Build1)'),
          backgroundColor: Color.alphaBlend(Colors.green, Colors.green),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            Expanded(child: Text(_data)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: RaisedButton(
                    // padding: EdgeInsets.only(bottom: 20.0, right: 10.0),
                    color: Color.alphaBlend(Colors.green, Colors.green),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      //side: BorderSide(color: Colors.red)
                    ),
                    child: Text(_scanning ? 'Stop scan' : 'Start scan',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        )),
                    onPressed: () async {
                      try {
                        if (_scanning) {
                          await _bluetooth.stopScan();
                          debugPrint("scanning stoped");
                          setState(() {
                            _data = '';
                          });
                        } else {
                          await _bluetooth.startScan(pairedDevices: false);
                          debugPrint("scanning started");
                          setState(() {
                            _scanning = true;
                          });
                        }
                      } on PlatformException catch (e) {
                        debugPrint(e.toString());
                      }
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
