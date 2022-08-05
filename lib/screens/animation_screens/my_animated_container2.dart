import 'package:flutter/material.dart';

class MyAnimatedCont extends StatefulWidget{
  const MyAnimatedCont({Key? key}) : super(key: key);

  @override
  State<MyAnimatedCont> createState() => MyAnimatedContState();
}

class MyAnimatedContState extends State<MyAnimatedCont> {


  var colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow
  ];
  var index = 0;

  Color get color => colors[index % colors.length];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            setState((){
              index++;
            });
          },
          child: AnimatedContainer(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              color: color,
    borderRadius: const BorderRadius.all(
    Radius.circular(22.0),
            ),
          ),
          duration: const Duration(milliseconds: 500),
    curve: Curves.easeInQuad,
        )
        )
      ],


    );
  }
}