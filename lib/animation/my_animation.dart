import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;
  late AnimationController animationController;
  late AnimationController animationController2;
  late AnimationController animationController3;
  late AnimationController animationController4;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 50));

    animationController2 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 100));

    animationController3 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 150));

    animationController4 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));

    animation = Tween(begin: 40.0, end: 0.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });

    animation2 = Tween(begin: 40.0, end: 0.0).animate(animationController2)
      ..addListener(() {
        setState(() {});
      });

    animation3 = Tween(begin: 40.0, end: 0.0).animate(animationController3)
      ..addListener(() {
        setState(() {});
      });

    animation4 = Tween(begin: 40.0, end: 0.0).animate(animationController4)
      ..addListener(() {
        setState(() {});
      });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController2.forward();
      }
    });

    animation2.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController3.forward();
      } else if (status == AnimationStatus.dismissed) {
        animationController.reverse();
      }
    });

    animation3.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController4.forward();
      } else if (status == AnimationStatus.dismissed) {
        animationController2.reverse();
      }
    });

    animation4.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController4.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController3.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      body: Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 300,
              child: Card(
                  elevation: animation4.value,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Card(
                      elevation: animation3.value,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Card(
                          elevation: animation2.value,
                          color: Colors.white,
                          child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Card(
                                elevation: animation.value,
                                color: Colors.white,
                                child: MaterialButton(onPressed: () {
                                  animationController.forward();
                                }),
                              )),
                        ),
                      ),
                    ),
                  )))),
    );
  }
}
