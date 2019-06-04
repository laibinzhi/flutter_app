import 'package:flutter/material.dart';

void main() => runApp(ListViewExpansionTileApp());

const CITY_NAMES = {
  '北京': [
    '东城区',
    '西城区',
    '朝阳区',
    '丰台区',
    '石景山区',
    '海定区',
    '顺义区',
  ],
  '上海': [
    '黄浦区',
    '徐汇区',
    '长宁区',
    '静安区',
    '普陀区',
    '闸北区',
    '虹口区',
  ],
  '广州': ['越秀区', '海珠区', '荔湾区', '天河区', '白云区', '黄浦区', '南沙区', '番禺区'],
  '深圳': [
    '南山区',
    '福田区',
    '罗湖区',
    '盐田区',
    '龙岗区',
    '宝安区',
    '龙华',
  ],
  '杭州': [
    '上城区',
    '下城区',
    '江干区',
    '拱墅区',
    '西湖区',
    '滨江区',
  ],
  '苏州': [
    '姑苏区',
    '吴中区',
    '相城区',
    '高新区',
    '虎丘区',
    '工业园区',
    '吴江区',
  ],
};

class ListViewExpansionTileApp extends StatelessWidget {
  final title = '列表展开与收起';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgets = [];

    CITY_NAMES.keys.forEach((key) {
      widgets.add(_item(key, CITY_NAMES[key]));
    });
    return widgets;
  }

  Widget _item(String city, List<String> subCities) {
    return ExpansionTile(
      title: Text(
        city,
        style: TextStyle(color: Colors.black54, fontSize: 20),
      ),
      children: subCities.map((subCity) => _buildSub(subCity)).toList(),
    );
  }

  Widget _buildSub(String subCity) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(subCity),
      ),
    );
  }
}
