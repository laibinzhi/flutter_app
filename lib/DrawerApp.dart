import 'package:flutter/material.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      home: DrawerAppStatelessWidget(),
    );
  }
}

class DrawerAppStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      body: Center(
        child: Text('My Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image(
                image: new AssetImage('assets/girl.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text('item 1'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              title: Text('item 2'),
            )
          ],
        ),
      ),
    );
  }
}
