import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          textColor: (Colors.white),
          onPressed: () {
            testAlert(context);
          },
          child: const Text(
            'Push me!!!',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }

  void testAlert(BuildContext context) {
    var alert = const AlertDialog(
      title: Text('Test'),
      content: Text('Done..!'),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
