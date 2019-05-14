import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //创建一个MaterialApp控件对象，其下可塞入支持Material设计语言特性的控件
      title: "Friendlychat",
      home: new HomePage(), //主页面为用户自定义ChatScreen控件
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter"),
        backgroundColor: Colors.redAccent,
      ), //头部的标题AppBar
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('yincheng'),
              accountEmail: new Text('13207138753@163.com'),
              currentAccountPicture: new GestureDetector(
                onTap: () => {
                      // TODO
                    },
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                    'https://upload.jianshu.io/users/upload_avatars/1683790/b21df839-7652-4f27-ac0b-6448d8643a6e.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/300/h/300/format/webp',
                  ),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => {
                        // TODO
                      },
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                      'https://upload.jianshu.io/users/upload_avatars/1683790/b21df839-7652-4f27-ac0b-6448d8643a6e.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/300/h/300/format/webp',
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () => {
                        // TODO
                      },
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                      'https://upload.jianshu.io/users/upload_avatars/1683790/b21df839-7652-4f27-ac0b-6448d8643a6e.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/300/h/300/format/webp',
                    ),
                  ),
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new ExactAssetImage('images/lake.jpg'),
                ),
              ),
            ),
            ListTile(
                //第一个功能项
                title: new Text('First Page'),
                trailing: new Icon(Icons.arrow_upward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => null),
                  );
                }),
            new ListTile(
                //第二个功能项
                title: new Text('Second Page'),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => null),
                  );
                }),
            new Divider(),
            new ListTile(
              //退出按钮
              title: new Text('Close'),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(), //点击后收起侧边栏
            ),
          ],
        ),
      ), //侧边栏按钮Drawer
      body: new Center(
        //中央内容部分body
        child: new Text(
          'HomePage',
          style: new TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}
