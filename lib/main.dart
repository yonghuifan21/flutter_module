import 'package:flutter/material.dart';
import 'secondflutter.dart';
import 'MinePage.dart';
import 'thirdflutter.dart'
void main() {
  runApp(MyApp());
}

Map<String, WidgetBuilder> routes = {
  "home": (context) => SecondFlutterWidget(),
  "mime": (context) => MinePage(),
  "third": (context) => ThirdFlutterWidget()
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.red),
      home: SecondFlutterWidget(),
      initialRoute: 'home',
      routes: routes,
    );
  }
}

// void main() => runApp(_widgetForRoute(window.defaultRouteName));

// Widget _widgetForRoute(String url) {
//   String routeSperator = '?';
//   String route = '';
//   String parameters = "";
//   if (url.isNotEmpty) {
//     var indexOfSep = url.indexOf(routeSperator);
//     //route 名称
//     route = indexOfSep == -1 ? url : url.substring(0, indexOfSep);
//     //参数JSON字段
//     var paramJSONStr = indexOfSep == -1 ? '{}' : url.substring(indexOfSep + 1);
//     Map<String, dynamic> mapJSON = json.decode(paramJSONStr);
//     String message =
//         mapJSON.containsKey('message') ? mapJSON['message'] as String : '';
//     if (mapJSON.isNotEmpty && message.isNotEmpty) {
//       parameters = message;
//     } else {
//       parameters = '获取不到参数';
//     }
//   }
//   // String message = mapJSON['message'];
//   //解析参数
//   switch (route) {
//     case 'route1':
//       return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: const Text('Flutter Github Actions 发布')),
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('页面路由名称 $route \n',
//                       style: const TextStyle(color: Colors.red)),
//                   Text('页面参数 $parameters \n',
//                       style: TextStyle(color: Colors.red),
//                       textDirection: TextDirection.ltr),
//                   ContentWidget(route: route, message: parameters)
//                 ],
//               ),
//             )),
//       );
//       break;
//     default:
//       return Container(
//         decoration: BoxDecoration(color: Colors.white),
//         child: Center(
//           child: Text(
//             '匹配不上路由 route: $route',
//             style: TextStyle(color: Colors.red),
//             textDirection: TextDirection.ltr,
//           ),
//         ),
//       );
//   }
// }

// class ContentWidget extends StatefulWidget {
//   ContentWidget({Key? key, this.route = '', this.message = ''})
//       : super(key: key);
//   String route, message;
//   _ContentWidgetState createState() => new _ContentWidgetState();
// }

// class _ContentWidgetState extends State<ContentWidget> {
//   static const nativeChannel =
//       const MethodChannel('com.example.flutter/native');
//   static const flutterChannel =
//       const MethodChannel('com.example.flutter/flutter');
//   void onDataChanged(val) {
//     setState(() {
//       widget.message = val;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     Future<dynamic> handler(MethodCall call) async {
//       switch (call.method) {
//         case 'onActivityResult':
//           String message = '没有获取message';
//           if (call.arguments is Map) {
//             Map<String, dynamic> mapAgruments = call.arguments;
//             if (mapAgruments.containsKey('message')) {
//               message = mapAgruments['message'];
//             }
//           }
//           onDataChanged(message);
//           print('11111' + message);
//           break;
//         default:
//       }
//     }

//     flutterChannel.setMethodCallHandler(handler);
//   }

//   Future<dynamic> returnLastNativePage(MethodChannel channel) async {
//     Map<String, dynamic> para = {'message': '嗨，本文案来自Flutter页面，回到第一个原生页面将看到我'};
//     final String result = await channel.invokeMethod('backToVC', para);
//     print('这是在flutter中打印的' + result);
//   }

//   Future<dynamic> openNextNativePage(MethodChannel channel) async {
//     Map<String, dynamic> para = {'message': '嗨，本文案来自Flutter页面，打开第二个原生页面将看到我'};
//     final String result = await channel.invokeMethod('openDetailVC', para);
//     print('这是在flutter中打印的' + result);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       color: Colors.green,
//       child: Stack(
//         children: <Widget>[
//           Positioned(
//             child: Text(widget.message, textAlign: TextAlign.center),
//             top: 100,
//             left: 0,
//             right: 0,
//             height: 100,
//           ),
//           Positioned(
//             child: RaisedButton(
//               onPressed: () {
//                 returnLastNativePage(nativeChannel);
//               },
//               child: const Text('打开上一个页面'),
//             ),
//             top: 200,
//             left: 100,
//             right: 100,
//             height: 100,
//           ),
//           Positioned(
//             child: RaisedButton(
//               onPressed: () {
//                 openNextNativePage(nativeChannel);
//               },
//               child: const Text('打开下一个原生页面'),
//             ),
//             top: 330,
//             left: 100,
//             right: 100,
//             height: 100,
//           ),
//           Positioned(
//               top: 450,
//               left: 100,
//               right: 100,
//               height: 100,
//               child: RaisedButton(onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => SecondFlutterWidget()),
//                 );
//               }))
//         ],
//       ),
//     ));
//   }
// }
