import 'package:flutter/material.dart';

class PhotoList extends StatelessWidget {
  final photos;
  PhotoList({this.photos});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200,
          height: 200,
          child: Image.network(photos[index].url),
        );
      },
    )
    ;
  }
}