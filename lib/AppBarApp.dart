import 'package:flutter/material.dart';

void main() => runApp(TabBarApp());

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: choices.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: false,
              tabs: choices.map((Choice choice) {
                return Tab(text: choice.title, icon: Icon(choice.icon));
              }).toList(),
              labelStyle: TextStyle(fontSize: 10.0),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ChoiceCard(choice: choice));
            }).toList(),
          )),
    ));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
];

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  const ChoiceCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(
              choice.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
