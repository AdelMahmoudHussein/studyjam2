import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import '../models/photo.dart';
import '../widgets/menu.dart';
import 'package:http/http.dart' as http;



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [];

  Widget _buildMyList(String img){
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Card(
        elevation: 5,
        child: Image.network(img),
      ),
    );
  }


  _addPhoto() async {
    final String num = Random().nextInt(5000).toString();
    final url = 'https://jsonplaceholder.typicode.com/photos/$num';
    final response = await http.get(url);
    final parsedResponse = jsonDecode(response.body);
    final photo = Photo(
      albumId:parsedResponse['albumId'],
      id:parsedResponse['id'],
      title:parsedResponse['title'],
      url:parsedResponse['url'],
      thumbnailUrl:parsedResponse['thumbnailUrl']
      );
    setState(() {
      myList.add(photo.url);
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
       title: Text('Home Screen Title'), 
      ),
      body: Center(
        child: (myList.length >0) 
        ?Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildMyList(myList[index]);
            }, 
          ), 
        )
        :CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          return _addPhoto();
        },
      ),
    );
  }

}


