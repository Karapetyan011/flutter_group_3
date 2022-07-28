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

  var sum = 0;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void sumchangeDiceFace() {
    setState(() {
      var givenSum = leftDiceNumber + rightDiceNumber;
      sum += givenSum;
      print(sum);
    });
  }

  void resetSum() {
    setState(() {
      sum = 0;
      print(sum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('My Dice Game'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: <Color>[
                Colors.grey.shade700,
                Colors.grey.shade900,
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,


              child: Container(
                child: Text(
                  'Total number: $sum',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 250,
              height: 250,
              child: ElevatedButton(
                onPressed: () {
                  changeDiceFace();
                  sumchangeDiceFace();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                  color: Colors.white,
                ),
              ),
            ),
            //Get students to create the second die as a challenge
            SizedBox(
              width: 250,
              height: 250,
              child: ElevatedButton(
                onPressed: () {
                  changeDiceFace();
                  sumchangeDiceFace();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Image.asset(
                  'assets/images/dice$rightDiceNumber.png',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  resetSum();
                },
                child: const Text(
                  'reset',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
