import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main(){
  runApp(MaterialApp(
    title: "数据传递案例",
    home: ProductList(products: List.generate(20, (i)=>Product('商品 $i', '这是一个商品详情，编号为：$i')),),
  ));

}
///*************************************页面导航无参数***********************************
class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面')
      ),
      body:Center(
        child: RaisedButton(
          child: Text('查看商品详情页'),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>ScondScreen(),
                )
            );
          },
        ),
      ),
    );
  }
}

class ScondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("技术胖商品详情页"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("返回"),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
    );
  }
}
///************************************************页面导航传递参数到子页面************************
class Product {
  final String title;
  final String description;
  Product(this.title,this.description);
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表"),),
      body: ListView.builder(itemCount:products.length,itemBuilder: (context, index){
        return ListTile(
          title: Text(products[index].title),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => ProductDetail(product: products[index],),
            ));
          },
        );
      }),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${product.title}'),
        ),
        body: Center(child: Text('${product.description}'),)
    );
  }
}




