import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Page Button"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){},
            child: Text("Raised Button"),
          ),
          FlatButton(
            onPressed: (){},
            child: Text("Flat Button"),
          ),
          MaterialButton(
            onPressed: (){},
            child: Text("Material Button"),
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}