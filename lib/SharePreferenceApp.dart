import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(SharePreferenceApp());

class SharePreferenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SharePreferenceApp'),
        ),
        body: _CounterWidget(),
      ),
    );
  }
}

class _CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<_CounterWidget> {
  String countString = '';
  String localCount = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: _incrementCounter,
            child: Text('Increment Counter'),
          ),
          RaisedButton(
            onPressed: _getCounter,
            child: Text('Get Counter'),
          ),
          Text(
            countString,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'result: '+localCount,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      countString = countString + "1";
    });
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    await prefs.setInt('counter', counter);
  }

  _getCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      localCount = prefs.getInt('counter').toString();
    });
  }
}
