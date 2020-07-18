import 'package:flutter/material.dart';

import 'package:SousVide/pages/splash.dart';
import 'package:SousVide/pages/home.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.yellowAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        backgroundColor: Colors.redAccent,
        secondaryColor: Colors.black,
        textColor: Colors.white,
        nextPage: HomePage(),
      ),
    ));
