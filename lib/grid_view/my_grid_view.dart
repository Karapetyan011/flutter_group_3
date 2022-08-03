import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomeApp());
}

class _MyHomeAppState extends State<MyHomeApp> {
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: GridView(
          scrollDirection: Axis.vertical,
          // reverse: true,
          controller: ScrollController(),
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            crossAxisCount: 3,
            childAspectRatio: 0.5,
          ),
          children: myList
              .map((e) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.red,
                    ),
                    height: 100.0,
                    width: 100.0,
                    alignment: Alignment.center,
                    child: Text(
                        style: const TextStyle(
                          fontSize: 32.0,
                        ),
                        '$e'),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}
