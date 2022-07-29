import 'package:flutter/material.dart';

class ExtentGrid extends StatelessWidget{
  const ExtentGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridScreen();
  }

}
class GridScreen extends StatefulWidget{
  const GridScreen({Key? key}) : super(key: key);

  @override
  GridScreenState createState() => GridScreenState();
}

class GridScreenState extends State<GridScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView App"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: GridView.extent(
          padding: const EdgeInsets.all(15.0),
          crossAxisSpacing: 18.0,
          maxCrossAxisExtent: 100.0,
          mainAxisSpacing: 18.0,
          children: [
            Container(
              padding: EdgeInsets.zero,
              child: const Text('First', style:TextStyle(
                fontSize: 15
              ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: const Text('Second', style: TextStyle(fontSize: 20)),
            ),Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: const Text('Third', style: TextStyle(fontSize: 20)),
            ),Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              child: const Text('Forth', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: const Text('Fifth', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.orange,
              child: const Text('Second', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }

}