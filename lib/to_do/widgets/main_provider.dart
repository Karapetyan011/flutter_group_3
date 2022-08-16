import 'package:flutter/material.dart';
import 'package:flutter_group_3/main.dart';
import 'package:flutter_group_3/to_do/models/my_task_provider.dart';
import 'package:provider/provider.dart';

import '../screens/my_task_view.dart';

void main() => runApp(
    const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_) => MyTaskProvider())
      ],
      child: const MaterialApp(
        home: NoteScreen(),
      ),
    );
  }

}