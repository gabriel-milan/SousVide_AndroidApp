import 'package:flutter/material.dart';

class VerticalIconBox extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final double borderRadius;
  final Icon icon;
  final String text;
  final double iconTextPadding;
  final Color textColor;
  final double textSize;

  VerticalIconBox(
      {@required this.padding,
      @required this.backgroundColor,
      @required this.borderRadius,
      @required this.icon,
      @required this.text,
      @required this.iconTextPadding,
      @required this.textColor,
      @required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding, // bottom
        child: Container(
            decoration: BoxDecoration(
              // Box color and border radius
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Box content
              children: <Widget>[
                icon,
                Padding(
                  padding: EdgeInsets.only(top: iconTextPadding),
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                  ),
                ),
              ],
            )));
  }
}

class HorizontalIconBox extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final double borderRadius;
  final Icon icon;
  final String text;
  final double iconTextPadding;
  final Color textColor;
  final double textSize;

  HorizontalIconBox(
      {@required this.padding,
      @required this.backgroundColor,
      @required this.borderRadius,
      @required this.icon,
      @required this.text,
      @required this.iconTextPadding,
      @required this.textColor,
      @required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding, // bottom
        child: Container(
            decoration: BoxDecoration(
              // Box color and border radius
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Box content
              children: <Widget>[
                icon,
                Padding(
                  padding: EdgeInsets.only(right: iconTextPadding),
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: textColor, fontSize: textSize),
                ),
              ],
            )));
  }
}
