import 'dart:math';

import 'package:flutter/material.dart';
class MyDice extends StatefulWidget{
  const MyDice({Key? key}) : super(key: key);

  @override
  State<MyDice> createState() => MyDiceState();
}

class MyDiceState extends State<MyDice>  {

  int leftDice = 1;
  int rightDice = 1;

  void changeDice(){
    setState((){
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.purple,
    appBar: AppBar(
      title: const Text('Dice'),
      elevation: 5.0,
      backgroundColor: Colors.purple,
    ),
    body: Center(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              child: Image.asset(
                'assets/images/dice$leftDice.png',
              ),
              onPressed: () { changeDice(); },
            ),
          ),
          Expanded(
            child: ElevatedButton(
              child: Image.asset(
                'assets/images/dice$rightDice.png',
              ),
              onPressed: () { changeDice();},
            ),
          )
        ],
      ),
    ),
  );
  }
}

