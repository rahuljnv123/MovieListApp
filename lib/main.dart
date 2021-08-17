import 'package:flutter/material.dart';
import 'package:Movie/appbars.dart';
import 'package:Movie/action.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}



class _HomePageState extends State<HomePage> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()){
        print("Validated");
      //Navigator.push(context, MaterialPageRoute(builder: (context) => appbars);
    }
    else{
      print("Not Validated");
    }
  }

  String validatepass(value){
    if(value.isEmpty){
      return "Required";
    }
    else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MovieList"
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          25.0
        ),
        child: Center(
          child: Form(
            key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: "Email"
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password"
                      ),
                      validator: validatepass,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0
                    ),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => appbars()),);
                      },
                      child: Text("Login"),
                    ),
                  )
                ],
              )
            ),
        ),
      ),
    );
  }

}




