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

  _openGallery(){

  }

  _openCamera(){

  }
  
  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Make a choice!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Gallery"),
                onTap: (){
                  _openGallery();
                },
                ),
                Padding(padding: EdgeInsets.all(8.0),),
                GestureDetector(
                child: Text("Camera"),
                onTap: (){
                  _openCamera();
                },
                ),
            ],
            ),
        ),
        );
    });
  }

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
                _showChoiceDialog(context);
              },child: Text("Select Image!"),)
            ],
          )
          )
      )
    );
  }
}
