import 'package:flutter/material.dart';

class MyAlignAnimation extends StatefulWidget{
  const MyAlignAnimation({Key? key}) : super(key: key);

  @override
  State<MyAlignAnimation> createState() => MyAlignAnimationState();

}

class MyAlignAnimationState extends State<MyAlignAnimation> {
  static const alignments = [
    Alignment.topCenter,
    Alignment.center,
    Alignment.bottomCenter
  ];
  var index = 0;

  AlignmentGeometry get alignment => alignments[index % alignments.length];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             color: Colors.white54,
             height: MediaQuery.of(context).size.height/2,
             child: GestureDetector(
               onTap: (){
                 setState((){
                   index++;
                 });
               },
               child: AnimatedAlign(
                 alignment: alignment,
                 duration: const Duration(milliseconds: 500),
                 curve: Curves.bounceInOut,
                 child: Image.asset('assets/images/ball.png', height: 200,),
               ),
             ),
           )
         ],
       ),
     );
  }
}