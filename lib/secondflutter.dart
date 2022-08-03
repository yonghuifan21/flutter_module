import 'dart:ui';

import 'package:flutter/material.dart';

class SecondFlutterWidget extends StatefulWidget {
  _ContentWidgetState createState() => new _ContentWidgetState();
}

class _ContentWidgetState extends State<SecondFlutterWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter 页面'),
        ),
        body: Center(child: buildText()));
  }

  Widget buildText() {
    return Text('这是第二个Flutter 页面');
  }
}
