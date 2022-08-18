///Created by Davo
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_provider.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.black,
            Colors.black,
            Colors.black,

          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 80.0,
                right: 10.0,
                bottom: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //
                  //  Text(
                  //   'Правит',
                  //   style: TextStyle(
                  //     color: Colors.green.shade700,
                  //     fontSize: 24.0,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10.0,
                  ),

                  Text(
                    'Заметки',
                    style: TextStyle(

                      color: Colors.green.shade700,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<TaskProvider>(context).taskCount} Заметки',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 0.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.green.shade900,
                    Colors.white,
                  ],
                )),
                child: const TasksList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        child: const Icon(Icons.add_card),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const AddTaskScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
