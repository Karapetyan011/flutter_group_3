import 'package:flutter/material.dart';
import 'package:flutter_group_3/to_do/models/my_task_provider.dart';
import 'package:provider/provider.dart';

class MyAddScreen extends StatelessWidget{
  const MyAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
    color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text('Add Task',
            style: TextStyle(fontSize: 30.0,
              color: Colors.lightBlueAccent,),
            ),
            TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTask = newText;
              }
              ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              onPressed: (){
                Provider.of<MyTaskProvider>(context, listen: false).addMyNote(newTask!);
              }, child: const Text('Add', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }

}