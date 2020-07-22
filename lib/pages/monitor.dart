import 'package:SousVide/widgets/timeStatus.dart';
import 'package:flutter/material.dart';

// Widgets
import 'package:SousVide/widgets/iconbox.dart';
import 'package:SousVide/widgets/bluetoothStatus.dart';
import 'package:SousVide/widgets/temperatureStatus.dart';

// Icons
import 'package:SousVide/icons/Thermometer.dart';
import 'package:SousVide/icons/Fire.dart';

class Monitor extends StatefulWidget {
  final Color backgroundColor;
  final double widgetsBorder;

  Monitor({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  _MonitorState createState() => _MonitorState(
      backgroundColor: backgroundColor, widgetsBorder: widgetsBorder);
}

class _MonitorState extends State<Monitor> {
  final Color backgroundColor;
  final double widgetsBorder;

  bool btConnected = true;
  bool heatingEnabled = true;

  void changeBluetoothStatus() {
    setState(() {
      btConnected = !btConnected;
    });
  }

  void changeHeatingStatus() {
    setState(() {
      heatingEnabled = !heatingEnabled;
    });
  }

  _MonitorState({@required this.backgroundColor, @required this.widgetsBorder});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Filling background color
          Container(
            decoration: BoxDecoration(color: backgroundColor),
          ),
          // Main column
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              // First vertical portion of the screen
              Expanded(
                flex: 3,
                child: Container(
                  // Adding widgets horizontally
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          // Bluetooth widget
                          child: GestureDetector(
                            onTap: changeBluetoothStatus,
                            child: BluetoothStatus(
                              connected: btConnected,
                              padding: EdgeInsets.fromLTRB(
                                  widgetsBorder, // left
                                  widgetsBorder, // top
                                  widgetsBorder / 2, // right
                                  widgetsBorder / 2),
                              textColor: Colors.white,
                              textSize: 15,
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          // Temperature widget
                          child: TemperatureStatus(
                            backgroundColor:
                                btConnected ? Color(0XFFEB9109) : Colors.grey,
                            currentTemp: btConnected ? "35.4 ºC" : "-",
                            padding: EdgeInsets.fromLTRB(
                                widgetsBorder / 2, // left
                                widgetsBorder, // top
                                widgetsBorder / 2, // right
                                widgetsBorder / 2),
                            targetTemp: btConnected ? "55.0 ºC" : "-",
                          )),
                      Expanded(
                          flex: 1,
                          // Heating widget
                          child: GestureDetector(
                            onTap: changeHeatingStatus,
                            child: VerticalIconBox(
                              backgroundColor: btConnected
                                  ? (heatingEnabled
                                      ? Colors.redAccent
                                      : Colors.grey)
                                  : Colors.grey,
                              borderRadius: 20,
                              icon: Icon(
                                Fire.fire,
                                size: 50,
                                color: Colors.white,
                              ),
                              iconTextPadding: 15,
                              padding: EdgeInsets.fromLTRB(
                                  widgetsBorder / 2, // left
                                  widgetsBorder, // top
                                  widgetsBorder, // right
                                  widgetsBorder / 2),
                              text: btConnected
                                  ? (heatingEnabled
                                      ? "Heating\nenabled"
                                      : "Heating\ndisabled")
                                  : "-",
                              textColor: Colors.white,
                              textSize: 15,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              // Second vertical portion of the screen
              Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: TimeStatus(
                        backgroundColor:
                            btConnected ? Colors.green : Colors.grey,
                        currentTime: btConnected ? "0d 00:00:00" : "-",
                        padding: EdgeInsets.fromLTRB(
                            widgetsBorder / 2, // left
                            widgetsBorder / 2, // top
                            widgetsBorder, // right
                            widgetsBorder / 2),
                        targetTime: btConnected ? "0d 01:23:45" : "-",
                      ))
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
