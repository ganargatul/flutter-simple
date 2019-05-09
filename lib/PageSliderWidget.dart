import 'package:flutter/material.dart';

class PageSliderWidget extends StatefulWidget {
  @override
  _PageSliderWidgetState createState() => _PageSliderWidgetState();
}

class _PageSliderWidgetState extends State<PageSliderWidget> {
  double drag =1.0;

  void MethodDragVolume(value){
    setState(() {
      drag=value;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Drag Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              min: 1.0,
              max: 2.0,
              value: drag,
              onChanged: (double value){MethodDragVolume(value);},
            ),
            Text("Value : $drag")
          ],
        ),
      ),
    );
  }
}