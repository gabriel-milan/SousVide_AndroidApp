import 'package:SousVide/icons/Thermometer.dart';
import 'package:SousVide/icons/Github.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor;
  final Color secondaryColor;
  final Color textColor;
  final Widget nextPage;

  SplashScreen(
      {@required this.backgroundColor,
      @required this.secondaryColor,
      @required this.textColor,
      @required this.nextPage});

  @override
  _SplashScreenState createState() => _SplashScreenState(
      backgroundColor: backgroundColor,
      secondaryColor: secondaryColor,
      textColor: textColor,
      nextPage: nextPage);
}

class _SplashScreenState extends State<SplashScreen> {
  final Color backgroundColor;
  final Color secondaryColor;
  final Color textColor;
  final Widget nextPage;

  _SplashScreenState(
      {@required this.backgroundColor,
      @required this.secondaryColor,
      @required this.textColor,
      @required this.nextPage});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
            color: backgroundColor,
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 100),
                      ),
                      CircleAvatar(
                        backgroundColor: textColor,
                        radius: 50,
                        child: Icon(
                          Thermometer.srip,
                          color: secondaryColor,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.0,
                        ),
                      ),
                      Text(
                        "SousVide",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (ctxt) => nextPage),
                        )
                      },
                      color: secondaryColor,
                      child: Text(
                        "START",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text("Developed by Gabriel Milan",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: <InlineSpan>[
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: Icon(
                              Github.github_circled,
                              color: textColor,
                              size: 12,
                            ),
                          ),
                          TextSpan(
                            text: "  gabriel-milan/SousVide",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Text("Icon made by srip at FlatIcon",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 12,
                            fontWeight: FontWeight.normal))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
