import 'package:flutter/material.dart';

void main() => runApp(BottomNavigationDemoApp());

class BottomNavigationDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航栏demo',
      home: MyAppStatefulWidget(),
    );
  }
}

class MyAppStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyAppStatefulWidget>
    with SingleTickerProviderStateMixin {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  var _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[HomePage(), SearchPage(), TravelPage(), MyPage()],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: _defaultColor,
                ),
                title: Text(
                  '首页',
                  style: TextStyle(
                      color: _currentIndex != 0 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.search,
                  color: _defaultColor,
                ),
                title: Text(
                  '搜索',
                  style: TextStyle(
                      color: _currentIndex != 1 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.camera_alt,
                  color: _defaultColor,
                ),
                title: Text(
                  '旅拍',
                  style: TextStyle(
                      color: _currentIndex != 2 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: _defaultColor,
                ),
                title: Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex != 3 ? _defaultColor : _activeColor),
                )),
          ]),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search),
            Text(
              '搜索',
            )
          ],
        ),
      ),
    );
  }
}

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.camera_alt),
            Text(
              '旅拍',
            )
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_circle),
            Text(
              '我的',
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.home),
            Text(
              '首页',
            )
          ],
        ),
      ),
    );
  }
}
