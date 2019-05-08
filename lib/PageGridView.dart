import 'package:flutter/material.dart';
class PageGridView extends StatefulWidget {
  @override
  _PageGridViewState createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {

  List<int> itemgrid=new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<30;i++){
      itemgrid.add(i);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page GridView"),
        backgroundColor: Colors.green,
        centerTitle: true,
        // toolbarOpacity: 0.4,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.data_usage),
            onPressed: (){},
          ),
        ],
      ),
      body: new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context,int index){
          return new Card(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(25),
            ),
          );
        },
      )
    );
  }
}
