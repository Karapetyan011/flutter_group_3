 /// Created by
import 'package:flutter/material.dart';

class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with TickerProviderStateMixin {
  late Animation _starAnimation;
  late AnimationController _starAnimationController;

  bool toggle = false;

  @override
  void initState() {
    super.initState();
    _starAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _starAnimation = Tween(begin: 2.0, end: 400.0).animate(CurvedAnimation(
        curve: Curves.linear, parent: _starAnimationController));

    _starAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _starAnimationController.repeat();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _starAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Animated Builder',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: AnimatedBuilder(
              animation: _starAnimationController,
              builder: (context, child) {
                return Center(
                  child: Center(
                    child: Icon(
                      Icons.star,
                      color: Colors.red,
                      size: _starAnimation.value,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          ElevatedButton(
            onPressed: () {
              toggle = !toggle;
              toggle == false
                  ? _starAnimationController.forward()
                  : _starAnimationController.stop();
            },
            child: const Text('START/ STOP'),
          )
        ],
      ),
    );
  }
}
