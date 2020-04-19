import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';

class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 0,
          child: ListTile(
            title: Text('Home Screen'),
            onTap: (){
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('2nd Screen'),
            onTap: (){
              Navigator.of(context).pushNamed('/second');
            },
          ),
        ),
        Card(
          elevation: 10,
          child: ListTile(
            title: Text('3rd Screen'),
            onTap: (){
              Navigator.of(context).pushNamed('/third');
            },
          ),
        ),
      ],
    );
  }
}