import 'package:flutter/material.dart';
import 'dart:math' as math;

// Rotate Animation
// => 1 --- initState ---
// => 2 --- CurvedAnimation ---
// => 3 --- Tween ---

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Page 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstAnimationPage(),
    );
  }
}

class FirstAnimationPage extends StatefulWidget {
  const FirstAnimationPage({Key? key}) : super(key: key);

  @override
  State<FirstAnimationPage> createState() => _FirstAnimationPageState();
}

class _FirstAnimationPageState extends State<FirstAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );

    final curveAnim = CurvedAnimation(
      parent: animController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeOut,
    );

    animation = Tween<double>(
      begin: 0.0,
      end: 2 * math.pi,
    ).animate(curveAnim)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animController.forward();
        }
      });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: animation.value,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(64.0),
          child: Image.asset('assets/images/penny.png'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
