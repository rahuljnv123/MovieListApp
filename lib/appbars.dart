import 'package:flutter/material.dart';
import 'package:Movie/action.dart';

class appbars extends StatelessWidget{

  final List movies = [
    "Avengers",
    "Captain America",
    "Iron Man",
    "Black Panther",
    "My name is Khan",
    "Holiday",
    "Wanted",
    "Ready",
    "Titanic",
    "Wolf",
    "Bahubali",
    "BatMan",
    "Hero",
    "I am Legend",
    "Hello Mini",
    "Avatar",
    "Guardian of Galaxy",
    "Wanda Vision",
    "Loki",
    "Bhuj",
    "Sultan"
  ];
  final List sub = [
    "Joe Russo",
    "Jon Johnson",
    "Ryan Coogler",
    "Jon Favreau",
    "Karan Johar",
    "joe Bin",
    "Smith",
    "Aron",
    "Arrovam",
    "Ron",
    "Calvin",
    "Ronnie",
    "Danny",
    "Dale",
    "Gabreail",
    "Harold",
    "Hal",
    "Felix",
    "Vinny",
    "Barry",
    "Abier"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("MovieList"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context,int index){
          return Card(
            elevation: 5,
            shadowColor: Colors.black,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(13.9)
                  ),
                  child: Text("M"),
                ),
              ),
              trailing: Text("..."),
              title: Text(movies[index]),
              subtitle: Text(sub[index]),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => action()),);
              }
            ),
          );
        },
      ),
    );

  }
  
}