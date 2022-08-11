/// Created by HrAnT

import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/animation_screens/test_screen_for_navigation.dart';

class AnimationContainerDemo extends StatefulWidget {
  const AnimationContainerDemo({Key? key}) : super(key: key);


  @override
  State<AnimationContainerDemo> createState() => _AnimationContainerDemoState();
}

class _AnimationContainerDemoState extends State<AnimationContainerDemo> {
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _toggle = !_toggle;
            });
          },
          child: AnimatedContainer(
            height: _toggle ? 150 : 300,
            width: _toggle ? 150 : 250,
            decoration: BoxDecoration(
              color: _toggle ? Colors.blue : Colors.pink,
              borderRadius: const BorderRadius.all(
                Radius.circular(22.0),
              ),
            ),
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutSine,
          ),
        ),
        IconButton(
          iconSize: 100,
          icon: const Icon(
            Icons.arrow_forward,
          ),
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(
            //     builder: (context) => const TestScreenForNavigation(),
            //   ),
            //   (Route<dynamic> route) => false,
            // );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TestScreenForNavigation(),
              ),
            );
          },
        ),
      ],
    );
  }
}
