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
      body: new Card(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: new Text(
                '吉林省吉林市昌邑区',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: new Text('技术胖:1513938888'),
              leading: new Icon(
                Icons.account_box,
                color: Colors.lightBlue,
              ),
            ),
            new Divider(),
            ListTile(
              title: new Text(
                '北京市海淀区中国科技大学',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: new Text('胜宏宇:1513938888'),
              leading: new Icon(
                Icons.account_box,
                color: Colors.lightBlue,
              ),
            ),
            new Divider(),
            ListTile(
              title: new Text(
                '河南省濮阳市百姓办公楼',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: new Text('JSPang:1513938888'),
              leading: new Icon(
                Icons.account_box,
                color: Colors.lightBlue,
              ),
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }
}
