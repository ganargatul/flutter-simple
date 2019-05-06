import 'package:flutter/material.dart';
import 'PagePertama.dart';
import 'PageKedua.dart';
import 'PageKetiga.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageGridView(),debugShowCheckedModeBanner: false,
    );
  }
}

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

class PageStateFull extends StatefulWidget {
  @override
  _PageStateFullState createState() => _PageStateFullState();
}

class _PageStateFullState extends State<PageStateFull> {

  String teks='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    teks='Klik Tombol Ini';
  }

  void methodChange(){
    setState(() {
      teks ='Sudah Di Klik';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new MaterialButton(
          
          color: Colors.green,
          textColor: Colors.white,
          onPressed:(){methodChange();} ,
          child: Text(teks)
        ),
      ),
    );
  }
}

class PageUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: new Center(
        
        child: Column(
          
          children: <Widget>[
            new MaterialButton(
              color: Colors.lightGreen,
              textColor: Colors.white,
              child: Text("Page Pertama"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PagePertama()));
              },
            ),
             new MaterialButton(
              color: Colors.lightGreen,
              textColor: Colors.white,
              child: Text("Page Kedua"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageKedua()));                
              },
            ),
             new MaterialButton(
              color: Colors.lightGreen,
              textColor: Colors.white,
              child: Text("Page Ketiga"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageKetiga()));                
              },
            )
          ],
        ),
      ),
    );
  }
}

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
        toolbarOpacity: 0.4,
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
