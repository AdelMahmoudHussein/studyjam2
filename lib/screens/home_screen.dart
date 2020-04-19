import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [
    'https://picsum.photos/id/70/800/800',
    'https://picsum.photos/id/80/800/800',
    'https://picsum.photos/id/90/800/800',
    'https://picsum.photos/id/100/800/800',
    'https://picsum.photos/id/200/800/800',
    'https://picsum.photos/id/300/800/800',
    'https://picsum.photos/id/400/800/800',
    'https://picsum.photos/id/500/800/800',
    'https://picsum.photos/id/600/800/800',
    'https://picsum.photos/id/700/800/800',
    'https://picsum.photos/id/800/800/800',
    'https://picsum.photos/id/900/800/800',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
       title: Text('Home Screen Title'), 
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildMyList(myList[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMyList(String img){
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Card(
        elevation: 5,
        child: Image.network(img),
      ),
    );
  }
}


