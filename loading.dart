import 'package:flutter/material.dart';

class Loading extends StatefulWidget{
  @override
  _LoadingState createState() =>_LoadingState();
}

class _LoadingState extends State<Loading> {

  Widget build(BuildContext context) {
    return Scaffold(
        body:Column (
          children: <Widget>[
            const SizedBox(
              height: 65,
            ),

        Container(
            child: Text('再按一次離開~',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),
            ),
            ),
          ]
        )
    );
  }
}
