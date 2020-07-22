import 'package:flutter/material.dart';
import 'package:SousVide/widgets/iconbox.dart';

class BluetoothStatus extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final bool connected;
  final Color textColor;
  final double textSize;

  BluetoothStatus(
      {@required this.padding,
      @required this.connected,
      @required this.textColor,
      @required this.textSize});

  @override
  Widget build(BuildContext context) {
    return VerticalIconBox(
      backgroundColor: connected ? Colors.blueAccent : Colors.grey,
      borderRadius: 20,
      icon: Icon(
        Icons.bluetooth,
        size: 50,
        color: textColor,
      ),
      iconTextPadding: 15,
      padding: padding,
      text: connected ? "Connected" : "Not connected",
      textColor: textColor,
      textSize: textSize,
    );
  }
}
