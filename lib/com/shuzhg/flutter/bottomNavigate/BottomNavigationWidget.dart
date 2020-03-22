import 'package:flutter/material.dart';
import 'package:flutterapp01/com/shuzhg/flutter/bottomNavigate/pages/HomeScreen.dart';
import 'package:flutterapp01/com/shuzhg/flutter/bottomNavigate/pages/EmailScreem.dart';
import 'package:flutterapp01/com/shuzhg/flutter/bottomNavigate/pages/PagesScreen.dart';
import 'package:flutterapp01/com/shuzhg/flutter/bottomNavigate/pages/AirplayScreen.dart';
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.lightBlueAccent;
  int _currentIndex = 0;
  List<Widget>  list = List();

  @override
  void initState(){
      list..add(HomeScreen())
          ..add(EmailScreem())
          ..add(PagaesScreen())
          ..add(AirplayScreen());
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _BottomNavigationColor,),
              title: Text('Home', style: TextStyle(color: _BottomNavigationColor),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email, color: _BottomNavigationColor,),
              title: Text('Email', style: TextStyle(color: _BottomNavigationColor),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pages,color: _BottomNavigationColor,),
              title: Text('Pages', style: TextStyle(color: _BottomNavigationColor),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplay,color: _BottomNavigationColor,),
              title: Text('Airplay', style: TextStyle(color: _BottomNavigationColor),),
            )
          ],
        currentIndex: _currentIndex,
        onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
