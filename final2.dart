import 'package:flutter/material.dart';

class Finaltwo extends StatefulWidget{
  @override
  _FinaltwoState createState() =>_FinaltwoState();
}

class _FinaltwoState extends State<Finaltwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('檢測報告',
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
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
                height: 45,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('結果宣告區',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
              ),

              Container(
                height: 25,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('(1)圓形波紋之波心位置，可視頻率達 80',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
              ),

              Container(
                height: 25,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('(2)格狀波紋之移動方向，可視頻率達 79',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
              ),



              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(30),
                  topRight:Radius.circular(30),
                ),
                child: Image (
                  image: AssetImage('assets/21.png'),
                fit: BoxFit.fill,
              ),
              ),
              SizedBox(height: 2,),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('四分位數表',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
              ),

              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(30),
                  topRight:Radius.circular(30),
                ),
                child: Image (
                  image: AssetImage('assets/22.png'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 1,),


              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('疲勞指標對照表',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
              ),

              const SizedBox(
                height: 40,
              ),



              Container(
                margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
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
                        Navigator.pushNamed(context, '/home');},
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
