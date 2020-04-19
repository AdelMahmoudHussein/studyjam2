import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/photo_list.dart';
import '../models/photo.dart';
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
        child: FutureBuilder(
          future: fetchPhotos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Center(
              child: (snapshot.hasData) 
              ? PhotoList(photos: snapshot.data) 
              : CircularProgressIndicator(),
            ) ;
          },
        ),
      ),
    );
  }
}

Future <List<Photo>> fetchPhotos() async {

  final url = 'https://jsonplaceholder.typicode.com/photos';
  final response = await http.get(url);
  final responseBody = response.body;

  return compute(parsePhoto, responseBody);
}

List<Photo> parsePhoto(responseBody){
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList() ;
}
