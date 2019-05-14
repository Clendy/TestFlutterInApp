import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimWidget(),
    );
  }
}

class AnimWidget extends StatefulWidget {
  @override
  _AnimWidgetState createState() => _AnimWidgetState();
}

class _AnimWidgetState extends State<AnimWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      // 动画的时长
      duration: Duration(milliseconds: 5000),
      // 提供 vsync 最简单的方式，就是直接继承 SingleTickerProviderStateMixin
      // 动画的作用对象
      vsync: this,
    );

    curve = CurvedAnimation(
      parent: controller,
      // 更多的效果，参考 https://docs.flutter.io/flutter/animation/Curves-class.html
      curve: Curves.easeInOut,
    );

    // 调用 forward 方法开始动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getChild(),
    );
  }

  getChild() {
    var scaled = ScaleTransition(
      child: FlutterLogo(size: 200.0),
      scale: curve,
    );
    return FadeTransition(
      child: scaled,
      opacity: curve,
    );
  }
}
