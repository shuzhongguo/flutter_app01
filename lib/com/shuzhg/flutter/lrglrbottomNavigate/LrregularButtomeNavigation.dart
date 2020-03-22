import 'package:flutter/material.dart';
import 'package:flutterapp01/com/shuzhg/flutter/lrglrbottomNavigate/SubPages.dart';

class LrregularButtomeNavigation extends StatefulWidget {
  @override
  _LrregularButtomeNavigationState createState() => _LrregularButtomeNavigationState();
}

class _LrregularButtomeNavigationState extends State<LrregularButtomeNavigation> {
  int _currentIndex = 0;
  List<Widget> subPages;
  @override
  void initState(){
    super.initState();
    subPages = List();
    subPages..add(Subpages('Home'))..add(Subpages('Me'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: subPages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return Subpages('New subPage');
          }));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home,color: Colors.white,),
                onPressed: (){
                  setState(() {
                    _currentIndex = 0;
                  });
                }
            ),
            IconButton(
                icon: Icon(Icons.airport_shuttle, color: Colors.white,),
                onPressed: (){
                  setState(() {
                    _currentIndex = 1;
                  });
                },
            )
          ],
        ),
      ),
    );
  }
}
