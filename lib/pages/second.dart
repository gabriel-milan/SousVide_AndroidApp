import 'package:flutter/material.dart';

import 'home.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Second page"),
        ),
        body: Column(children: [
          Text("Go back to previous page"),
          Checkbox(
              value: false,
              onChanged: (bool newValue) {
                Navigator.pop(context); // Pop from stack
              }),
          Text("Open a new page"),
          Checkbox(
              value: false,
              onChanged: (bool newValue) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctxt) => new HomePage())); // Pop from stack
              }),
        ]));
  }
}
