import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'MyApp.dart';
import 'main.dart';

class screen extends StatefulWidget {
  const screen({Key key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}
class _screenState extends State<screen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 7),
            ()=> Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> HomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('image/image7.jpg'),
          SizedBox(height: 30,width: 60,),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text('Welcome in my App',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.white),),
          Padding(padding: EdgeInsets.only(top: 35)),
          SpinKitRipple(color: Colors.white,)
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
