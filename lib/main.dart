import 'package:flutter/material.dart';

import 'BottomNavigationBarApp.dart';
import 'AppBarApp.dart';
import 'DrawerApp.dart';
import 'FutureBuilderApp.dart';
import 'HttpApp.dart';
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

          ],
        ),
      ),
    );
  }
}
