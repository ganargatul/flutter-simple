import 'package:flutter/material.dart';

class PageAlertDialog extends StatefulWidget {
  @override
  _PageAlertDialogState createState() => _PageAlertDialogState();
}

class _PageAlertDialogState extends State<PageAlertDialog> {
    SimpleDialog simpleDialog;
   void ShowSimpleDialog(){
    simpleDialog = SimpleDialog(
      title: Text("Warning"),
      children: <Widget>[
        SimpleDialogOption(
          child: Text("Jakarta"),
          onPressed: (){
            print("Jakarta");
          },
        ),
        SimpleDialogOption(
          child: Text("Padang"),
          onPressed: (){
            print("Padang");
          },
        ),
        SimpleDialogOption(
          child: Text("Close"),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ],
    );
    showDialog(context:context,child:simpleDialog);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            ShowSimpleDialog();
          },
          child: Text("Show Alert Dialog"),
        ),

      ),
    );
  }
}
