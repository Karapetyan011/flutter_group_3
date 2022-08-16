import 'package:flutter/material.dart';

class MyTaskTile extends StatelessWidget{

  const MyTaskTile({Key? key,
    required this.isChecked,
    required this.title,
    required this.boxCallBack,
    required this.longPress}) : super(key: key);

  final bool isChecked;
  final String title;
  final void Function(bool?) boxCallBack;
  final VoidCallback longPress;
  @override
  Widget build(BuildContext context) {
   return ListTile(
     onLongPress: longPress,
     title: Text(title, style: TextStyle(
       decoration: isChecked ? TextDecoration.lineThrough : null),
     ),
     trailing: Checkbox(
       activeColor: Colors.blueAccent,
       value: isChecked,
       onChanged: boxCallBack,
     ),
   );
  }

}