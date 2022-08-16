import 'package:flutter/material.dart';
import 'package:flutter_group_3/to_do/models/my_task_provider.dart';
import 'package:flutter_group_3/to_do/widgets/my_task_tile.dart';
import 'package:provider/provider.dart';

class MyTaskList extends StatelessWidget{
  const MyTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Consumer<MyTaskProvider>(
     builder: (context, provider, child) {
       return ListView.builder(
         itemCount: provider.myTaskCount,
         itemBuilder: (context, index){
           final task = provider.myTask[index];
           return MyTaskTile(
             title: task.name,
             isChecked: task.isDone,
             longPress: (){
               provider.deleteNote(task);
             },
             boxCallBack: (check){
               provider.updateNote(task);
             },
           );
         }
       );
     }
   );

  }
}