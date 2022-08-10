import 'package:flutter/material.dart';

class MyHeartAnimation extends StatefulWidget{
  const MyHeartAnimation({Key? key}) : super(key: key);

  @override
  State<MyHeartAnimation> createState() => MyHeartAnimationState();
}

class MyHeartAnimationState extends State<MyHeartAnimation> with TickerProviderStateMixin{
  late Animation heartAnimation;
  late AnimationController heartAnimationCont;
  bool flag = false;
  @override
  void initState(){
    super.initState();
    heartAnimationCont = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200)
    );
    heartAnimation = Tween(begin: 100.0, end: 200.0).animate(CurvedAnimation(
        curve: Curves.linear, parent: heartAnimationCont ));
    heartAnimationCont.addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed){
        heartAnimationCont.repeat();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    heartAnimationCont.dispose();
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children:<Widget> [
           const Text("Animation Star", style: TextStyle(fontSize: 20.0, color: Colors.black),
           ),
           const SizedBox(
             height: 10.0,
           ),
           SizedBox(
             height: 200,
             width: 300,
             child: AnimatedBuilder(
               animation: heartAnimationCont,
               builder: (context, child) {
                 return Center(
                   child: Center(
                   child: Icon(
                     Icons.star,
                     color: Colors.red,
                     size: heartAnimation.value,
                   ),
                   ),
                 );
               },
             ),
           ),
           const SizedBox(
             height: 10.0,
           ),
           ElevatedButton(
             onPressed: (){
               flag = !flag;
               flag == false
               ? heartAnimationCont.forward() : heartAnimationCont.stop();
             }, child: const Text("START/ STOP"),
           )
         ],
       ),
     ),
   );
  }
}