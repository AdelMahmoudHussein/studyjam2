import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
       title: Text('Second Screen Title'), 
      ),
      body: Center(
        child: Text('Second Screen'),
      ),
    );
  }
}


