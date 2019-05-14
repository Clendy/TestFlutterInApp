import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final List<String> items;

  App({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePage(
        title: 'Flutter Demo Home Page',
        items: items,
      ),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  final String title;

  final List<String> items;

  _MyHomePage({Key key, this.title, @required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState(items: items);
  }
}

class _MyHomePageState extends State<_MyHomePage> {
  final List<String> items;

  _MyHomePageState({@required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                '${items[index]}',
              ),
            );
          },
        ),

        // Container(
        //   height: 200.0,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: <Widget>[
        //       new Container(
        //         width: 180.0,
        //         color: Colors.lightBlue,
        //       ),
        //       new Container(
        //         width: 180.0,
        //         color: Colors.amber,
        //       ),
        //       new Container(
        //         width: 180.0,
        //         color: Colors.deepOrange,
        //       ),
        //       new Container(
        //         width: 180.0,
        //         color: Colors.deepPurpleAccent,
        //       ),
        //     ],
        //   ),
        // ),
      ),

      //   ListView(
      //     children: <Widget>[
      //       ListTile(
      //         leading: Icon(Icons.access_time),
      //         title: Text('access_time'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_balance),
      //         title: Text('account_balance'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.access_alarms),
      //         title: Text('access_alarms'),
      //       ),
      //     ],
      //   ),
    );
  }
}
