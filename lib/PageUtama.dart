import 'package:flutter/material.dart';
import 'PagePertama.dart';
import 'PageKedua.dart';
import 'PageKetiga.dart';

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
