import 'package:flutter/material.dart';
class PageInputWidget extends StatefulWidget {
  @override
  _PageInputWidgetState createState() => _PageInputWidgetState();
}

class _PageInputWidgetState extends State<PageInputWidget> {
  
  String txt = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Page Input"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String text){
              setState(() {
                txt = text;
              });
            },
            decoration: InputDecoration(
              hintText: "Input Username",
              labelText: "Username"
            ),
          ),
          //kie nggo margin
          SizedBox(height: 10,),
          //kie jiot txt
          Text(txt)
        ],
      ),
    );
  }
}
