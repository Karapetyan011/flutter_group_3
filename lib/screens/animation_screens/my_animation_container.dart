import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget{
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => MyAnimatedContainerState();
}

class MyAnimatedContainerState extends State<MyAnimatedContainer>{
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            setState((){
              flag = !flag;
            });
          },
          child: AnimatedContainer(
            height: flag ? 200 : 400,
            width: flag ? 100 : 200,
            decoration: BoxDecoration(
              color: flag ? Colors.blue : Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(22.0),
             // shape: flag ? BoxShape.circle : BoxShape.rectangle,
            ),
            ),
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutCubic,
          ),
        )
      ],
    );
  }
}