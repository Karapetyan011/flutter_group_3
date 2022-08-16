import 'package:flutter/material.dart';


class MyAnimation2 extends StatefulWidget{
  const MyAnimation2({Key? key}) : super(key: key);

  @override
  State<MyAnimation2> createState() => MyAnimation2State();
}

class MyAnimation2State extends State<MyAnimation2> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animationSize;
  late Animation<Color?> animationColor;
  late Animation<Offset> animationMessage;
  late Animation<double> animationHello;
  bool _flag = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    animationSize = Tween(begin: 70.0, end: 200.0,).animate(CurvedAnimation(
        parent: _animationController, curve: const Interval( 0.0, 0.5, curve: Curves.decelerate )));
    animationColor = ColorTween(begin:Colors.red, end: Colors.green).animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.2, 1.0, curve: Curves.ease ),),);
    animationHello = Tween<double>(begin: 10.0, end: 0.0).animate(CurvedAnimation(
        parent: _animationController, curve:  const Interval(0.5, 0.7, curve: Curves.easeIn)));
    animationMessage = Tween<Offset>(begin: const Offset(16.0, 0.0), end:  const Offset(0.0, 0.0,)).animate(CurvedAnimation(
        parent: _animationController, curve:  const Interval(0.5, 1.0, curve: Curves.ease)));
    _animationController.addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed){
            _animationController.repeat();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Colors.blue,
        title: const Text('My Animation', style: TextStyle(fontSize: 14.0, color: Colors.red),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              width: 600,
              child: AnimatedBuilder(
                animation: _animationController, builder: (BuildContext context, child) {
                  return Center(
                    child: CircleAvatar(
                   radius: animationSize.value,
                      backgroundColor: animationColor.value,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FadeTransition(opacity: animationHello,
                          child: const Text("Flutter Animation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          ),
                          SlideTransition(position: animationMessage,
                          child: const Text("Animation Demo",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                           ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed:(){
              _flag = !_flag;
              _flag == true ? _animationController.forward() : _animationController.stop();
            }, child: const Text("START/STOP"),
            ),
          ],
        ),
      )
    );
  }
}