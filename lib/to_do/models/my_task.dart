class MyTask {
  final String name;
  bool isDone;

  MyTask({
    required this.name,
    this.isDone = false
});

  void flagDone(){
    isDone = !isDone;
  }
}