import 'package:flutter/material.dart';

enum Selection { test1, test2, test3, test4, test5}

class RadioBox extends StatefulWidget {
  const RadioBox({Key? key}) : super(key: key);

  @override
  State<RadioBox> createState() => _RadioBox();
}

class _RadioBox extends State<RadioBox> {
  Selection? _selection;

  void detect(Selection? target){
    if(target == Selection.test1){
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Are you sure?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                  Navigator.pushNamed(context, '/page_two');
                },
                child: const Text('OK'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                },
                child: const Text('Cancel'),
              ),
            ],
          )
      );
    }
    else {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Are you sure?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                  Navigator.pushNamed(context, '/page_two');
                },
                child: const Text('OK'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                },
                child: const Text('Cancel'),
              ),
            ],
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Column(
              children: [
                const Image(
                  image: NetworkImage('https://static.wikia.nocookie.net/virtualyoutuber/images/3/35/Nekomata_Okayu_img.png/revision/latest/top-crop/width/360/height/450?cb=20190405185910'),
                  width: 100,
                  height: 100,
                ),
                Radio<Selection>(
                  value: Selection.test1,
                  groupValue: _selection,
                  onChanged: (Selection? value) {
                    setState(() {
                      _selection = value;
                      detect(value);
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                const Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/zh/thumb/1/11/Inugami_Korone.png/300px-Inugami_Korone.png'),
                  width: 100,
                  height: 100,
                ),
                Radio<Selection>(
                  value: Selection.test2,
                  groupValue: _selection,
                  onChanged: (Selection? value) {
                    setState(() {
                      _selection = value;
                      detect(value);
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                const Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/zh/thumb/1/11/Inugami_Korone.png/300px-Inugami_Korone.png'),
                  width: 100,
                  height: 100,
                ),
                Radio<Selection>(
                  value: Selection.test3,
                  groupValue: _selection,
                  onChanged: (Selection? value) {
                    setState(() {
                      _selection = value;
                      detect(value);
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                const Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/zh/thumb/1/11/Inugami_Korone.png/300px-Inugami_Korone.png'),
                  width: 100,
                  height: 100,
                ),
                Radio<Selection>(
                  value: Selection.test4,
                  groupValue: _selection,
                  onChanged: (Selection? value) {
                    setState(() {
                      _selection = value;
                      detect(value);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        Container(
            padding:const EdgeInsets.fromLTRB(26, 0, 0, 0),
            child: Row(
              children: [
                Radio<Selection>(
                  value: Selection.test5,
                  groupValue: _selection,
                  onChanged: (Selection? value) {
                    setState(() {
                      _selection = value;
                      detect(value);
                    });
                  },
                ),
                const Text("I'm not sure!!"),
              ],
            )
        ),
      ],
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('波紋檢測'),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              'QUIZ 1',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              'Which icon is different from the others?',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.blueGrey,
              ),
            ),
            RadioBox(),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        child: const Text('Next'),
        backgroundColor: Colors.red[300],
        onPressed: () {
          showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('You sure you want to give up?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'No');
                    },
                    child: const Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'Yes');
                      Navigator.pushNamed(context, '/test');
                    },
                    child: const Text('Yes'),
                  ),
                ],
              )
          );
        }
      ),*/
    );
  }
}