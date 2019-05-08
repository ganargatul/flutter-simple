import 'package:flutter/material.dart';

class PageAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Animation"),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imagehero',
          child: Image.network("https://i.pinimg.com/564x/78/6a/e6/786ae60beabccaaa1915cc38601c3427.jpg")
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){return DetailHeroAnimation();}));
        },  
        
      ),
    );
  }
}

class DetailHeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(
          tag: 'ImageHeroDetail',
          child: Image.network("https://i.pinimg.com/564x/78/6a/e6/786ae60beabccaaa1915cc38601c3427.jpg"),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}