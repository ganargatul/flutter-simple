import 'package:flutter/material.dart';

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
