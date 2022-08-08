import 'dart:ui';
import 'thirdflutter.dart';
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
        body: Center(
          child: Column(
            children: <Widget>[
              Center(child: buildText()),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'third');
                  },
                  child: Text('下一个页面'))
            ],
          ),
        ));
  }

  Widget buildText() {
    return Text('这是第二个Flutter 页面');
  }
}
