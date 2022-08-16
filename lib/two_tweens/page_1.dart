import 'package:flutter/material.dart';

import 'route_page1_to_page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(createRoute());
          },
          child: const Text('Go!'),
        ),
      ),
    );
  }
}
