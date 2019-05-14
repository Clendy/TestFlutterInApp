import 'package:flutter/material.dart';
import 'package:module_flutter/data/Message.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessageListScreen(),
    );
  }
}

class MessageList extends StatefulWidget {
  // 先忽略这里的参数 key，后面我们就会看到他的作用了
  MessageList({Key key}) : super(key: key);

  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  final List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final msg = messages[index];
          final subtitle = DateTime.fromMillisecondsSinceEpoch(msg.timestamp)
              .toLocal()
              .toIso8601String();
          return ListTile(
            title: Text(msg.msg),
            subtitle: Text(subtitle),
          );
        },
      ),
    );
  }

  void addMessage(Message msg) {
    setState(() {
      messages.add(msg);
    });
  }
}

class MessageListScreen extends StatelessWidget {
  /// 引入一个 GlobalKey 的原因在于，MessageListScreen
  /// 需要把从 AddMessageScreen 返回的数据放到 _MessageListState 中，
  /// 而我们无法从 MessageList 拿到这个 state
  /// GlobalKey<T extends State<StatefulWidget>> extends Key
  /// GlobalKey 的是应用全局唯一的 key，把这个 key 设置给 MessageList 后，
  /// 我们就能够通过这个 key 拿到对应的 statefulWidget 的 state。
  final messageListKey =
      GlobalKey<_MessageListState>(debugLabel: 'messageListKey');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Echo client'),
      ),
      body: MessageList(
        key: messageListKey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          debugPrint('access Message Page');
          // 异步操作 待下一页面返回数据
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddMessageScreen(),
            ),
          );
          debugPrint('result = $result');
          if (result is Message) {
            messageListKey.currentState.addMessage(result);
          }
        },
        tooltip: 'Add message',
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add message'),
      ),
      body: MessageForm(),
    );
  }
}

class MessageForm extends StatefulWidget {
  @override
  State createState() {
    return _MessageFormState();
  }
}

class _MessageFormState extends State<MessageForm> {
  final editController = TextEditingController();

  // 对象被从 widget 树里永久移除的时候调用 dispose 方法（可以理解为对象要销毁了）
  // 这里我们需要主动再调用 editController.dispose() 以释放资源
  @override
  void dispose() {
    super.dispose();
    editController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          // 我们让输入框占满一行里除按钮外的所有空间
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Input message',
                  contentPadding: EdgeInsets.all(0.0),
                ),
                style: TextStyle(fontSize: 22.0, color: Colors.black54),
                controller: editController,
                // 自动获取焦点。这样在页面打开时就会自动弹出输入法
                autofocus: true,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              debugPrint('send: ${editController.text}');
              final mag = Message(
                editController.text,
                DateTime.now().millisecondsSinceEpoch,
              );
              // 返回至上一级页面
              Navigator.pop(context, mag);
            },
            onDoubleTap: () => debugPrint('double tapped'),
            onLongPress: () => debugPrint('long pressed'),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Text('Send'),
            ),
          )
        ],
      ),
    );
  }
}
