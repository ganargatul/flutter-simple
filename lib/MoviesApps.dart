import 'package:flutter/material.dart';

class MoviesApps extends StatefulWidget {
  @override
  _MoviesAppsState createState() => _MoviesAppsState();
}

class _MoviesAppsState extends State<MoviesApps> {
  List<Container> list = new List();

  var daftarMovie=[
    {"nama":"EndGame1","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"},
    {"nama":"EndGame2","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"},
    {"nama":"EndGame3","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"},
    {"nama":"EndGame4","images":"https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg"}

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
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>DetailMovieApp(
                  nama: listmovienya['nama'],
                  gambar: images,
                )
              ));
            },
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

class DetailMovieApp extends StatelessWidget {
  

  DetailMovieApp({this.nama,this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child:new Hero(
              tag: nama,
              child:new Material(
                child:new InkWell(
                  child: Image.network(
                    "$gambar",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          BagianNama(
            nama:nama
          ),
          BagianIcon(),
          BagianKeterangan()
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {

  BagianNama({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red
                  ),
                  
                ),
                Text(
                  "$nama\@gmail.com",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star,size: 30.0,color: Colors.yellow,),
              Text("12",style: TextStyle(fontSize: 18.0),)
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          IconStar(),
          IconTeks(
            iconData : Icons.message,
            teks: "Message"
          ),
          IconTeks(
            iconData : Icons.photo,
            teks: "Photo"
          ),
        ],
      ),
    
    );
  }
}

class IconStar extends StatefulWidget {
  
  @override
  _IconStarState createState() => _IconStarState();
}

class _IconStarState extends State<IconStar> {
   bool _isFav=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isFav=false;

  }
  @override
  Widget build(BuildContext context) {
   
    return Expanded(
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.star,
              size:20.0,
              color: _isFav ? Colors.red : Colors.grey,
            ),
            onPressed: (){
              setState(() {
                _isFav = !_isFav;
              });
            },
          ),
          
          Text("Favorite",style: TextStyle(
            fontSize: 12,
            color: Colors.red
          ),)
        ],
      ),
    );
  }
}



class IconTeks extends StatelessWidget {
  IconTeks({this.iconData,this.teks});
  final IconData iconData;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          
          Icon(iconData,size:20.0,color: Colors.red,),
          
          Text(teks,style: TextStyle(
            fontSize: 12,
            color: Colors.red
          ),)
        ],
      ),
    );
  }
}



class BagianKeterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(10),
     child: Card(
       child: Padding(padding: const EdgeInsets.all(10),
          child: Text("Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.",
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.justify,
          ),
      ),
     ), 
    );
  }
}