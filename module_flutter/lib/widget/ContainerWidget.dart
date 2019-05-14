import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  final String title;

  _MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<_MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Hello JSPang',
            style: TextStyle(fontSize: 40.0),
          ),
          alignment: Alignment.topLeft,
          width: 500.0,
          height: 400.0,
          // 背景色
          //   color: Colors.lightBlue,
          // 内边距
          padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
          // 外边距
          margin: const EdgeInsets.all(10),
          // 修饰器 ，注意：color与decoration不可同时设置
          decoration: new BoxDecoration(
              // 渐进度
              gradient: const LinearGradient(colors: [
                Colors.lightBlue,
                Colors.greenAccent,
                Colors.purple
              ]),
              // 边框，注意加了边框会导致内部child往内偏移
              border: Border.all(width: 3.0, color: Colors.red)),
        ),
      ),
    );
  }
}
