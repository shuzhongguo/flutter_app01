import 'package:flutter/material.dart';
import 'BottomNavigationWidget.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottome NavigateBar 底部导航',
      theme: ThemeData.light(),
      home:BottomNavigationWidget(),
    );
  }
}