import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget{
  const MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => MyAnimationState();
}

class MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _sizeAnimation;
  late Animation _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
    _sizeAnimation = Tween<double>(begin: 50.0, end: 300.0).animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     ),
      body: Center(
        child: Container(
          height: _sizeAnimation.value,
          width: _sizeAnimation.value,
          color: _colorAnimation.value,
        ),
      ),
    );
  }
}