import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Camera App",
    home: LandingScreen(),
    ));
}

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("No Image Selected!"),
              RaisedButton(onPressed: (){

              },child: Text("Select Image!"),)
            ],
          )
          )
      )
    );
  }
}