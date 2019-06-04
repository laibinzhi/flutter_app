import 'package:flutter/material.dart';

void main() => runApp(ListViewReflushAndLoadMoreApp());

List<String> CITY_NAMES = [
  '北京',
  '上海',
  '广州',
  '深圳',
  '杭州',
  '苏州',
  '成都',
  '武汉',
  '郑州',
  '佛山',
  '珠海',
  '中山',
  '香港',
  '澳门'
];

class ListViewReflushAndLoadMoreApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewReflushAndLoadMoreAppState();
  }
}

class ListViewReflushAndLoadMoreAppState
    extends State<ListViewReflushAndLoadMoreApp> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final title = '下拉刷新上拉加载';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: RefreshIndicator(
            child: ListView(
              controller: _scrollController,
              children: _buildList(),
            ),
            onRefresh: _handleRefresh),
      ),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      CITY_NAMES = CITY_NAMES.reversed.toList();
    });
    return null;
  }

  List<Widget> _buildList() {
    return CITY_NAMES.map((city) => _item(city)).toList();
  }

  Widget _item(String city) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.teal),
      child: Text(
        city,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  _loadData() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      List<String> list = List<String>.from(CITY_NAMES);
      list.addAll(CITY_NAMES);
      CITY_NAMES = list;
    });
  }
}
