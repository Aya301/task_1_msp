import 'package:flutter/material.dart';
import 'MyApp.dart';

class widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 180)),
        Text('Happy',style: TextStyle(fontSize: 50),),
      ],

    );
  }
}
class widget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 180)),
        Text('Eid',style: TextStyle(fontSize: 50),),
      ],
    );
  }
}
class widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 180)),
        Text('🧡', style: TextStyle(fontSize: 50),),
      ],
    );
  }
}