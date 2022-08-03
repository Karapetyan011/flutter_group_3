/// Created by HrAnT VitaNova

import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  static const _alignments = [
    Alignment.topCenter,
    Alignment.bottomCenter,
    Alignment.center,
    Alignment.centerRight
  ];

  var _index = 0;

  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height/2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _index++;
                });
              },
              child: AnimatedAlign(
                alignment: _alignment,
                duration: const Duration(milliseconds: 2000),
                curve: Curves.bounceInOut,
                child: Image.asset(
                  'assets/images/penny.png',
                  height: 200,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
