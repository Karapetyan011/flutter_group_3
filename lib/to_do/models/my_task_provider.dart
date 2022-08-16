import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'my_task.dart';

class MyTaskProvider extends ChangeNotifier {
  final List<MyTask> _myTask = [
  ];

  UnmodifiableListView<MyTask> get myTask => UnmodifiableListView(_myTask);

  int get myTaskCount => _myTask.length;

  void addMyNote(String note){
    final myTask = MyTask(name: note);
    _myTask.add(myTask);
    notifyListeners();
  }
  void updateNote(MyTask task){
    task.flagDone();
    notifyListeners();
  }
  void deleteNote(MyTask task){
    _myTask.remove(task);
    notifyListeners();
  }
}