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
          child: Image.network(
            'https://b-ssl.duitang.com/uploads/item/201602/25/20160225001941_zvPh4.jpeg',
            scale: 1.0,
            // 图片混合颜色
            color: Colors.lightGreen,
            // 混合模式
            colorBlendMode: BlendMode.darken, // 混合模式：变暗
            repeat: ImageRepeat.noRepeat, // 纵向重复，横向不重复
          ),
          width: 300,
          height: 300,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
