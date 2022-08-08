import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> {
  static const methodChannel = MethodChannel('com.flutterToNative.second');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('MinePage 页面'),
        ),
        body: Center(child: buildText()));
  }

  Widget buildText() {
    return Text('这是我的页面');
  }
}
