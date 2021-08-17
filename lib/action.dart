import 'package:Movie/action.dart';
import 'package:Movie/appbars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class action extends StatelessWidget{
  final List act = [
    "Update",
    "Delete"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Action"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: 2,
          itemBuilder: (BuildContext context,int index){
            return Card(
              child: ListTile(
                title: Text(act[index]),
                hoverColor: Colors.purple,
              ),
            );
          }
      ),
    );
  }

}