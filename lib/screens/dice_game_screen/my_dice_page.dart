import 'dart:math';

import 'package:flutter/material.dart';

class MyDicePage extends StatefulWidget {
  const MyDicePage({Key? key}) : super(key: key);

  @override
  State<MyDicePage> createState() => _MyDicePageState();
}

class _MyDicePageState extends State<MyDicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('My Dice Game'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: <Color>[
                Colors.black,
                Colors.grey.shade600,
              ],
            ),
          ),
        ),
      ),
    body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  changeDiceFace();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade900,
                ),
                child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                  color: Colors.white,
                ),
              ),
            ),
            //Get students to create the second die as a challenge
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  changeDiceFace();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade900,
                ),
                child: Image.asset(
                  'assets/images/dice$rightDiceNumber.png',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
