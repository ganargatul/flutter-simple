import 'package:flutter/material.dart';

class MoviesApps extends StatefulWidget {
  @override
  _MoviesAppsState createState() => _MoviesAppsState();
}

class _MoviesAppsState extends State<MoviesApps> {
  List<Container> list = new List();

  var daftarMovie=[
    {"nama":"EndGame","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"},
    {"nama":"EndGame","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"},
    {"nama":"EndGame","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"},
    {"nama":"EndGame","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"}

  ];

  _List(){
    for(int i = 0; i < daftarMovie.length;i++){
      final listmovienya = daftarMovie[i];
      final String images = listmovienya['images'];

      list.add(
        Container(
        padding: EdgeInsets.all(20.0),
        child: Card(
          child: InkWell(
            onTap: (){},
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0),),
                Hero(
                  child: Image.network("$images",
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                  ),
                  tag: listmovienya['nama'],
                ),
                Padding(padding: EdgeInsets.all(10.0),),
                Text(
                  listmovienya['nama'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                )

              ],
            ),
          ),
        ),
      ));
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _List();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight-24)/2;
    final double itemWidth = size.width/2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Apps"),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: GridView.count(
          childAspectRatio: (itemWidth/itemHeight),
          controller: ScrollController(
            keepScrollOffset: false
          ),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisCount:2,
          children: list,
        ),
      ),
    );
  }
}