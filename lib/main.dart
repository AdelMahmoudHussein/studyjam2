import 'package:flutter/material.dart';
import 'package:studyjam2/screens/second_screen.dart';
import 'package:studyjam2/screens/third_screen.dart';
import './screens/home_screen.dart';
import './utils/theme.dart';

void main() { 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: (false) ? '/' : '/third',

      theme: myThemeData,

      routes: {
        '/' : (context) => HomeScreen(),
        '/second' : (context) => SecondScreen(),
        '/third' : (context) => ThirdScreen(),
      },
    );
  }
}
