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
  String content;

  void changeContent({String content}) {
    setState(() {
      this.content = content;
    });
  }

  @override
  void initState() {
    this.content = 'Flutter is Awesome!';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          child: new Container(
            // 如果GesttureDetecor已重写onTap函数，则此处关闭onPressed重写，否则onTap无效
            // onPressed: () {
            //   changeContent(content: 'onPressed');
            // },
            padding: new EdgeInsets.all(12.0),
            color: Colors.orangeAccent,
            child: new Text(content),
          ),
          onTap: () {
            changeContent(content: 'onTap');
          },
          onDoubleTap: () {
            changeContent(content: 'onDoubleTap');
          },
          onLongPress: () {
            changeContent(content: 'onLongPress');
          },
        ),
      ),
    );
  }
}
