import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutterapp01/com/shuzhg/flutter/lrglrbottomNavigate/LrregularButtomeNavigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: LrregularButtomeNavigation(),
    );
  }
}