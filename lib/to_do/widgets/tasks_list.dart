///Created by HrAnT

import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/to_do/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../models/task_provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, provider, child) {
        return ListView.builder(
          itemCount: provider.taskCount,
          itemBuilder: (context, index) {
            final task = provider.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                provider.updateTask(task);
              },
              longPressCallback: () {
                provider.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
