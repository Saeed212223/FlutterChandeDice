import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home:Scaffold(
    backgroundColor: Colors.cyan.shade800,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.cyan.shade900,
      ),
      body: DicePage(),
    ),
    ),
  );
}


  class DicePage extends StatefulWidget {
    const DicePage({Key? key}) : super(key: key);
  
    @override
    State<DicePage> createState() => _DicePageState();
  }
  
  class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;

   void ChangeDiceFace(){
     leftDiceNumber = Random().nextInt(6) + 1;
     RightDiceNumber = Random().nextInt(6) + 1;
   }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                  onPressed: (){
                      setState((){
                        ChangeDiceFace();
                      });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState((){
                    ChangeDiceFace();
                  });
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            ),
          ],
        ),
      );
    }
  }
  

