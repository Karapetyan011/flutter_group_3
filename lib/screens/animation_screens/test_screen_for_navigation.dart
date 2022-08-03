/// Created by HrAnT

import 'package:flutter/material.dart';

class TestScreenForNavigation extends StatelessWidget {
  const TestScreenForNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.pink,
              child: const Text(
                'Test Screen For Navigation',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
