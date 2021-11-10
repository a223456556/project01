import 'package:flutter/material.dart';

class Finalone extends StatefulWidget{
  @override
  const Finalone({Key? key}) : super(key: key);
  _FinaloneState createState() =>_FinaloneState();
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Finalone(),
    );
  }
}


class _FinaloneState extends State<Finalone> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('檢測結果',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35),),
      ),
      body: Container(
        height: 600,
        padding: EdgeInsets.all(5),
        child: Card(
          elevation: 40,
          shadowColor: Colors.red[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child :Column(
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('結果宣告區',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
              ),

              Container(
                height: 30,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('(1)圓形波紋之波心位置，可視頻率達 80',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
              ),

              Container(
                height: 30,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('(2)格狀波紋之移動方向，可視頻率達 79',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
              ),
              Divider(color: Colors.black,),
              Container(
                height: 80,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('指定日期區間',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
              ),

              Divider(color: Colors.black,),

              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),
                  topRight:Radius.circular(20),
                ),
                child: Image (
                  image: AssetImage('assets/11.png'),
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(height: 2,),

              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('顯示四折線圖',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
              ),

              Container(
                height: 30,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('(可顯示細節)',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
              ),






              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),
                  topRight:Radius.circular(20),
                ),
              ),


              const SizedBox(
                height: 40,
              ),


              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                padding: EdgeInsets.all(0),
                alignment: Alignment.topLeft,
                child:Row(
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.white,
                      child: Text('Save',
                        style: TextStyle(color: Colors.black),
                    ),),

                    const SizedBox(
                      width: 65,
                    ),

                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.white,
                      child: Text('Upload',
                        style: TextStyle(color: Colors.black),),
                    ),

                    const SizedBox(
                      width: 65,
                    ),

                    FloatingActionButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/final2');},
                      backgroundColor: Colors.white,
                      child: Text('Quit',
                        style: TextStyle(color: Colors.black),),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
