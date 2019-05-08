import 'package:flutter/material.dart';


class PageStateLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.blueAccent,
        child: new Container(
          color: Colors.lightGreen,
          margin:  const EdgeInsets.all(50.0),
        ),
      ),
    );
  }
}