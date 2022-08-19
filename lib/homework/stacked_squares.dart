import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stacked Squares',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stacked Squares'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: const Center(
                child: Text(
                  "5",
                  style: TextStyle(
                    fontSize: 58,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.width / 3,
              child: const Center(
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 58,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 1.5,
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 58,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 1.5,
                child: const Center(
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 58,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.width / 3,
                child: const Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 58,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
