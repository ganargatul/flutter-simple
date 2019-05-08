import 'package:flutter/material.dart';

class PageRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("This"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("This"),
              Text("Is"),
              Text("Coloumn"),
            ],
          ),
          Text("Row")
        ],
      ),
    );
  }
}
