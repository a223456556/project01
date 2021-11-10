import 'package:flutter/material.dart';

class Testtwo extends StatefulWidget{
  @override
  _TesttwoState createState() =>_TesttwoState();
}

class _TesttwoState extends State<Testtwo>{
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