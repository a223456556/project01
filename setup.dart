import 'package:flutter/material.dart';
class Setup extends StatefulWidget{
  const Setup({Key ,key}) : super(key: key);

  @override
  _SetupState createState() =>_SetupState();
}

class _SetupState extends State<Setup>{
  @override
  Widget build(BuildContext context){
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
      children: [

        Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
           ),
          color :Colors.red[300],
          boxShadow: [
            new BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: new Offset(-10.0, 0.0),
                blurRadius: 20.0,
                spreadRadius: 4.0
            ),
          ]
        ),
        child: Stack(
          children: [
            Positioned(
                top:50,
                left: 0,
                child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
            )
                )
        ),
        Positioned(
            top :70,
            left: 20,
            child: Text('系統設定', style: TextStyle(fontSize: 30,color: Colors.red[300],fontWeight: FontWeight.bold,fontFamily: 'Traditional Chinese',)))
        ],
      )
      ),



      SizedBox(height: height*0.03,),
      Expanded(
        child:MediaQuery.removePadding(context: context,
            removeTop: true,
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10,top: 25),
                  height: 200,
                  padding:
                  const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80.0),
                      ),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 0.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 50.0,
                      bottom: 50,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('基本資料區',style: TextStyle(
                          fontSize: 12,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(
                          height: 2,
                        ),

                        Text('(1)基本偵測資料 ',style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(2)基本設定資料 ',style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                      ],

                    ),

                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(bottom: 10,top: 25),
                  height: 200,
                  padding:
                  const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(80.0),
                      ),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 0.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 50.0,
                      bottom: 50,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('實驗資料區',style: TextStyle(
                          fontSize: 12,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(
                          height: 2,
                        ),

                        Text('(3)實驗偵測資料  ',style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(4)實驗記錄資料  ',style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                      ],

                    ),

                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(bottom: 10,top: 25),
                  height: 325,
                  padding:
                  const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(80.0),
                      ),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 0.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 50.0,
                      bottom: 50,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('十級分自主疲勞問卷(1: not at all, 10: very serious)',style: TextStyle(
                          fontSize: 12,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('六小題分數平均，題目如下：',style: TextStyle(
                          fontSize: 12,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(
                          height: 2,
                        ),

                        Text('(a)我看東西時有困難(I have difficulties in seeing).',style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(b)我的眼睛附近有奇怪的感覺 (I have a strange feeling around the eyes).',style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(c)我的眼睛覺得疲累 (My eyes feel tired).',style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(d)我感到麻木 (I feel numb).',style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(e)我覺得頭疼 (I have a headache).',style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                        Text('(f)我在注視螢幕時感覺暈眩 (I feel dizzy looking at the screen).',style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),),

                      ],

                    ),

                  ),
                ),

              ],
            )
        )
      )
    ],


    ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/home');
        },
        child: Text('Back'),
        backgroundColor: Colors.orange,
    ),

    );
  }
}