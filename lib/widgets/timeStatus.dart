import 'package:flutter/material.dart';

class TimeStatus extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final String currentTime;
  final String targetTime;

  TimeStatus({
    @required this.backgroundColor,
    @required this.padding,
    @required this.currentTime,
    @required this.targetTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding, // bottom
        child: Container(
            decoration: BoxDecoration(
              // Box color and border radius
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Box content
              children: <Widget>[
                Icon(
                  Icons.watch_later,
                  size: 90,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Current:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      currentTime,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      "Target:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      targetTime,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
