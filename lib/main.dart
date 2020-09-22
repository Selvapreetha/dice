import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink[300],
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber=1;
  int rightDicenumber=1;
  void changeDiceFace()
  {
    setState(() {
                leftDicenumber=Random().nextInt(6)+1;
                rightDicenumber=Random().nextInt(6)+1;
              });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed:()
            {
              changeDiceFace();
            },
            child: Image.asset('images/dice$leftDicenumber.png'),
            ),
            ),
             Expanded(
            child:FlatButton(
              onPressed:()
              {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDicenumber.png'),
              ),
             ),
        ],
      ),
    );
  }
}


