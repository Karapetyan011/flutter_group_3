// ///Created by HrAnT
//
// import 'dart:collection';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter_group_3/to_do/models/task.dart';
//
// class TaskProvider extends ChangeNotifier {
//   final List<Task> _tasks = [
//     Task(name: 'My To Do Example'),
//   ];
//
//   UnmodifiableListView<Task> get tasks {
//     return UnmodifiableListView(_tasks);
//   }
//
//   int get taskCount {
//     return _tasks.length;
//   }
//
//   void addTask(String newTaskTitle) {
//     final task = Task(name: newTaskTitle);
//     _tasks.add(task);
//     notifyListeners();
//   }
//
//   void updateTask(Task task) {
//     task.toggleDone();
//     notifyListeners();
//   }
//
//   void deleteTask(Task task) {
//     _tasks.remove(task);
//     notifyListeners();
//   }
// }
