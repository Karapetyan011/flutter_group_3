import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/to_do/screens/tasks_screen.dart';
import 'package:provider/provider.dart';


import 'models/task_provider.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => CustomProvider(),
        // )
      ],
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
