import 'package:flutter/material.dart';

import 'BottomNavigationBarApp.dart';
import 'AppBarApp.dart';
import 'DrawerApp.dart';
import 'FutureBuilderApp.dart';
import 'GridViewApp.dart';
import 'HttpApp.dart';
import 'ListViewExpansionTileApp.dart';
import 'ListViewHorizontalApp.dart';
import 'ListViewReflushAndLoadMoreApp.dart';
import 'ListViewVerticalApp.dart';
import 'SharePreferenceApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter练习'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('AppBar'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => TabBarApp()),
                );
              },
            ),
            RaisedButton(
              child: Text('BottomNavigationBar'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => BottomNavigationDemoApp()),
                );
              },
            ),
            RaisedButton(
              child: Text('DrawerApp'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => DrawerApp()),
                );
              },
            ),
            RaisedButton(
              child: Text('Http请求'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => HttpApp()),
                );
              },
            ),
            RaisedButton(
              child: Text('FutureBuilder使用'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => FutureBuilderApp()),
                );
              },
            ),

            RaisedButton(
              child: Text('SharePreferemceApp使用'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => SharePreferenceApp()),
                );
              },
            ),

            RaisedButton(
              child: Text('ListView垂直方向'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => ListViewVerticalApp()),
                );
              },
            ),

            RaisedButton(
              child: Text('ListView水平方向'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => ListViewHorizontalApp()),
                );
              },
            ),

            RaisedButton(
              child: Text('可以折叠收起的列表'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => ListViewExpansionTileApp()),
                );
              },
            ),

            RaisedButton(
              child: Text('网格布局'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => GridViewApp()),
                );
              },
            ),

            RaisedButton(
              child: Text('下拉刷新上拉加载'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => ListViewReflushAndLoadMoreApp()),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}
