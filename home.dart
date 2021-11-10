import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  const Home({Key? key}) : super(key: key);

  _HomeState createState() =>_HomeState();
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
    );
  }
}



class _HomeState extends State<Home>{
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('視覺檢測系統 v2017-A',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            letterSpacing: 1.0,
            fontFamily: 'Traditional Chinese',
          ),
        ),
        backgroundColor: Colors.red[300],
      ),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child:Text('(1)本系統仍在實驗階段，我們邀請您測試並提供實驗數據，這項'
                '實驗之目的在協助我們制定一項參考指標，用以檢測視覺疲勞程'
                '度，或是檢測工作環境對於視覺造成的負荷程度。',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Traditional Chinese',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child:Text('(2)使用本系統，請將螢幕亮度設定為自動調整，並在適當的視線距離進行檢測，'
    '建議螢幕所處位置必須讓您能清楚辨認下圖左側字標，而且無法清楚辨認下圖右側字標。',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Traditional Chinese',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child:Text('(3)完整之安全及法律注意事項，請詳細閱讀系統聲明。',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Traditional Chinese',
              ),
            ),
          ),



          Container(
            padding: EdgeInsets.all(1.0),
            child: Image.asset('assets/answer.jpg'),
          ),

          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.red[300],
                    value: isChecked1, onChanged: (bool? value){
                      setState(() {
                        isChecked1 = value!;
                      });
                },
                ),

                Container(
                  margin: EdgeInsets.only(left: 4),
                  child: Text(
                    '我已詳讀並接受系統聲明'
                  ),
                ),

              ],
            ),
          ),

          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.red[300],
                  value: isChecked2, onChanged: (bool? value){
                  setState(() {
                    isChecked2 = value!;
                  });
                },
                ),

                Container(
                  margin: EdgeInsets.only(left: 4),
                  child: Text(
                      '我同意上傳個人實驗結果',style: TextStyle(color: Colors.red,)
                  ),
                ),



              ],
            ),
          ),

          Container(
              child: Text('(非手機持有人請勿勾選)',style: TextStyle(color: Colors.red,))
          ),




          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(20),
              topRight:Radius.circular(20),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 60,right: 50,bottom: 0),
            alignment: Alignment.topLeft,
            child:Row(

              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    child: Text('Setup'),
                    onPressed: isChecked1 ? displayMessage1 : null
                  ),
                ),

                const SizedBox(
                  width: 50,
                ),

                Container(
                  child: ElevatedButton(
                    child: Text('Start'),
                    onPressed: isChecked2 & isChecked1 ? displayMessage2 : null,

                  ),
                ),

                const SizedBox(
                  width: 50,
                ),

                Container(
                  child: ElevatedButton(
                    child: Text('Quit'),
                    onPressed: displayMessage3 ,

                  ),
                ),

              ],
          ),
          ),
        ],
      ),
    );
  }

  void displayMessage1(){
    showDialog(context: context,
        builder: (BuildContext context){
      AlertDialog dialog = AlertDialog(
        content: Text('You have accepted the terms.'),
        actions: [
          FlatButton(
            child: Text('OK'),
            onPressed: (){
              Navigator.pushNamed(context, '/setup');

            },
          )
        ],
      );
      return dialog;
        });
  }

  void displayMessage2(){
    showDialog(context: context,
        builder: (BuildContext context){
          AlertDialog dialog = AlertDialog(
            content: Text('You have accepted the terms.'),
            actions: [
              FlatButton(
                child: Text('OK'),
                onPressed: (){
                  Navigator.pushNamed(context, '/test1');
                },
              )
            ],
          );
          return dialog;
        });
  }

  void displayMessage3(){
    showDialog(context: context,
        builder: (BuildContext context){
          AlertDialog dialog = AlertDialog(
            content: Text('Are U Sure??'),
            actions: [
              FlatButton(
                child: Text('YA!'),
                onPressed: (){
                  Navigator.pushNamed(context, '/test1');
                },
              )
            ],
          );
          return dialog;
        });
  }


}
