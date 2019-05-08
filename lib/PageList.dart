import 'package:flutter/material.dart';
class PageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Rendang"),
            trailing: Icon(Icons.fastfood),
          ),
          ListTile(
            title: Text("Cola"),
            trailing: Icon(Icons.local_drink),
          ),
          ListTile(
            title: Text("Phone"),
            trailing: Icon(Icons.phone_android),
          ),
          ListTile(
            title: Text("Alarm"),
            trailing: Icon(Icons.alarm),
          ),
          ListTile(
            title: Text("Camera"),
            trailing: Icon(Icons.camera),
          ),
        ],
      ),
      
    );
  }
}
