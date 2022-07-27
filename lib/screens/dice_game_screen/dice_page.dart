import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
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
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('DICE GAME'),
        elevation: 12.0,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
            //Get students to create the second die as a challenge
            Expanded(
              child: ElevatedButton(
                child: Image.asset(
                  'assets/images/dice$rightDiceNumber.png',
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
