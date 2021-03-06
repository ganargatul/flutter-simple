import 'package:flutter/material.dart';
import 'PagePertama.dart';
import 'PageKedua.dart';
import 'PageKetiga.dart';
import 'PageInputWidget.dart';
import 'PageButton.dart';
import 'PageListArray.dart';
import 'PageAnimation.dart';
import 'PageSliderWidget.dart';
import 'AlertDialog.dart';
import 'MoviesApps.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //https://cdn.cgv.id/uploads/movie/compressed/19012900.jpg
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
      home: MoviesApps(),debugShowCheckedModeBanner: false,
    );
  }
}
