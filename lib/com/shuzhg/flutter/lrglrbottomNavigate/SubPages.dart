import 'package:flutter/material.dart';

class Subpages extends StatefulWidget {
  String _title;

  Subpages(this._title);

  @override
  _SubpagesState createState() => _SubpagesState();
}

class _SubpagesState extends State<Subpages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title),),
      body: Center(child: Text(widget._title),),
    );
  }
}
