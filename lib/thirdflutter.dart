import 'dart:ui';
import 'package:flutter/material.dart';

class ThirdFlutterWidget extends StatefulWidget {
  _ContentWidgetState createState() => new _ContentWidgetState();
}

class _ContentWidgetState extends State<ThirdFlutterWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('新的Flutter 页面'),
        ),
        body: Center(child: buildText()));
  }

  Widget buildText() {
    return Text('跳转进入新的个Flutter 页面');
  }
}
