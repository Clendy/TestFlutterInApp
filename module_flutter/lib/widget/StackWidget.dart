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
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545719684444&di=4aeea349258d58e6a97d2e3143144e7f&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fln%2Fpics%2Fhv1%2F140%2F29%2F2095%2F136234910.jpg'),
              radius: 100.0,
            ),
            new Positioned(
              top: 10.0,
              left: 10.0,
              child: new Text('Flutter'),
            ),
            new Positioned(
              bottom: 10.0,
              right: 10.0,
              child: new Text('Dart'),
            )
          ],

          // alignment作用于第2个children，对只有2个children时有效果，超过2个需要使用Positioned
          //   alignment: const FractionalOffset(0.5, 0.8),
          //   children: <Widget>[
          //     new CircleAvatar(
          //       backgroundImage: new NetworkImage(
          //           'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545719684444&di=4aeea349258d58e6a97d2e3143144e7f&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fln%2Fpics%2Fhv1%2F140%2F29%2F2095%2F136234910.jpg'),
          //       radius: 100.0,
          //     ),
          //     new Container(
          //       decoration: new BoxDecoration(
          //         color: Colors.lightBlue,
          //       ),
          //       padding: EdgeInsets.all(5.0),
          //       child: new Text('Flutter'),
          //     ),

          //     new Container(
          //       decoration: new BoxDecoration(
          //         color: Colors.lightGreen,
          //       ),
          //       padding: EdgeInsets.all(5.0),
          //       child: new Text('Dart'),
          //     ),
          //   ],
        ),
      ),
    );
  }
}
