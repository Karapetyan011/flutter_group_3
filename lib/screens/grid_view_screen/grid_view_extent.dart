import 'package:flutter/material.dart';

//extent - степень
class GridViewExtent extends StatelessWidget {
  const GridViewExtent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyGridScreen();
  }
}

class MyGridScreen extends StatefulWidget {
  const MyGridScreen({Key? key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Extend"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: GridView.extent(
          reverse: true,
          padding: const EdgeInsets.all(16.0),
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 18.0,
          maxCrossAxisExtent: 300,
          children: <Widget>[
            Container(
              padding:  EdgeInsets.zero,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  'First',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: const Text('Second', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: const Text('Third', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.yellow,
              child: const Text('Four', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.yellow,
              child: const Text('Fifth', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: const Text('Six', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
