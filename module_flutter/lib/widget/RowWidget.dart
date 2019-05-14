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
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Row(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {},
            color: Colors.redAccent,
            child: new Text('红色按钮'),
          ),
          Expanded(
            child: new RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: new Text('黄色按钮'),
            ),
          ),
          new RaisedButton(
            onPressed: () {},
            color: Colors.pinkAccent,
            child: new Text('粉色按钮'),
          ),
        ],
      ),
    );
  }
}
