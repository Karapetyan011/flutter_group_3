///Created by Davo
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Home exercise',
      home: StackExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stacked Squares',
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 800,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                bottom: 428.0,
                left: 262.0,
                right: 0.0,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.yellow.shade800,
                  child: const Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 262,
                height: 140,
                color: Colors.red,
                child: const Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
              Positioned(
                top: 140.0,
                bottom: 450.0,
                left: 130.0,
                right: 130.0,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.purple,
                  child: const Text(
                    "5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                bottom: 300,
                left: 0,
                right: 260,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: const Text(
                    "4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 278.0,
                bottom: 300.0,
                left: 132.0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: const Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
