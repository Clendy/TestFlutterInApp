import 'package:flutter/material.dart';
import 'package:module_flutter/data/Product.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePage(
        products: List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号为:$i')),
      ),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  final List<Product> products;

  _MyHomePage({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        new ProductDetail(product: products[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            '${product.title}',
          ),
        ),
        body: Center(
          child: Text(
            '${product.description}',
          ),
        ));
  }
}

_navigateToXiaoJieJie(BuildContext context) async {
  final result = await Navigator.push(
      //等待
      context,
      MaterialPageRoute(builder: (context) => XiaoJieJie()));
  Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是小姐姐')),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('大长腿小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511008888');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511009999');
            },
          ),
        ],
      )),
    );
  }
}
