import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/navigation/home.dart';
import 'package:flutter_group_3/screens/navigation/my_home_screen.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const SwHomePage(),
      //home: const MyDice(),
      //home: const MyGridViewBuilder(),
      //home: const GridScreen(),
      home: const MyHomeScreen(),
    );
  }
}
