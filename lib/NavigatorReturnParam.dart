import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: '页面跳转放回数据',
    home: FirstPage(),
  ));
}
class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('找小姐姐要电话'),
        ),
        body: Center(
          child: RouteButton(),
        )
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐'),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    print(result);
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result'),duration: Duration(seconds: 1)));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我是小姐姐'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context, '大小腿：1583838438');
                },
                child: Text('大小腿小姐姐1'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context, '小蛮腰小姐姐：1583838439');
                },
                child: Text('小蛮腰小姐姐2'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context, '护士小姐姐：1583838441');
                },
                child: Text('护士小姐姐3'),
              ),
            ],
          ),
        )
    );
  }
}