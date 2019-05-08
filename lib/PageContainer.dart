import 'package:flutter/material.dart';


class PageWidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.black,
        child: Text("My Container"),
        width: 300.0,
        height: 500.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        foregroundDecoration: new BoxDecoration(
          color: Colors.lightGreen
        ),
      ),
    );
  }
}
