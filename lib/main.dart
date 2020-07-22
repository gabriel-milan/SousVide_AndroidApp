import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:SousVide/pages/splash.dart';
import 'package:SousVide/pages/monitor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.yellowAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        backgroundColor: Colors.redAccent,
        secondaryColor: Colors.black,
        textColor: Colors.white,
        nextPage: Monitor(
          backgroundColor: null,
          widgetsBorder: 10,
        ),
      ),
    ));
  });
}
