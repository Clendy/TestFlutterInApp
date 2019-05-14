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
        title: Text('First Page'),
      ),
      body: Center(
        child: new RaisedButton(
            child: Text('跳转'),
            onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context)=>new _MySecondPage()
                ));
            },
        ),
      ),
    );
  }
}

class _MySecondPage extends StatefulWidget {
  final String title;

  _MySecondPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SecondPage();
  }
}

class _SecondPage extends State<_MySecondPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: new RaisedButton(
            child: Text('返回'),
            onPressed: (){
                Navigator.pop(context);
            },
        ),
      ),
    );
  }

}
