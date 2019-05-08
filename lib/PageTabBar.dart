import 'package:flutter/material.dart';
import 'PagePertama.dart';

class PageTabBar extends StatefulWidget {
  @override
  _PageTabBarState createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar> with SingleTickerProviderStateMixin {
  
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar App"),
        backgroundColor: Colors.green,
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            //test tab with text
            Tab(
              child: Text("Pertama"),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.dashboard),
            ),
            Tab(
              icon: Icon(Icons.data_usage),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          //manggil pagepertama.dart
          PagePertama(),
          //tulisan center
          Center(
            child: Text("Welcome To Home"),
          ),
          Center(
            child: Text("Welcome To Dashboard"),
          ),
          Center(
            child: Text("Welcome To Data Usage"),
          ),
        ],
      ),
    );
  }
}

