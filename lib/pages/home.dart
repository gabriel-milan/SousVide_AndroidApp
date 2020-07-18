import 'package:flutter/material.dart';

import 'second.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Homepage"),
        ),
        body: Center(
          child: Checkbox(
            onChanged: (bool newValue) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctxt) => new SecondScreen()),
              );
            },
            value: false,
          ),
        ));
  }
}
