import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
       title: Text('Home Screen Title'), 
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}


