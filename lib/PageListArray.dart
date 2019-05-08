import 'package:flutter/material.dart';

class PageListArray extends StatefulWidget {
  @override
  _PageListArrayState createState() => _PageListArrayState();
}

class _PageListArrayState extends State<PageListArray> {
  
  List<int> item = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i =0;i<20;i++){
      item.add(i);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page List Array"),
        backgroundColor: Colors.blue,
      ),
      body: new ListView.builder(
        itemCount: item.length,
        itemBuilder: (BuildContext context,int index){
          return new ListTile(
            title: Text("Item Nomor :  $index"),
            trailing: Icon(Icons.print),
          );
        },
      ),
    );
  }
}