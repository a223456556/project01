import 'package:flutter/material.dart';

class Testone extends StatefulWidget{
  @override
  _TestoneState createState() =>_TestoneState();
}

class _TestoneState extends State<Testone>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body:
     SafeArea(child: Text('Test (1)',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
        letterSpacing: 1.0,
        color: Colors.red,
    ),
    ),
     ),
    );
  }
}