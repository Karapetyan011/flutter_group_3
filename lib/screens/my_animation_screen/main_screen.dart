import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/my_animation_screen/first_animation_rotate.dart';
import 'package:flutter_group_3/screens/my_animation_screen/second_animation_transparent.dart';
import 'package:flutter_group_3/screens/my_animation_screen/third_animation_animated_cross_fade.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Main Animation Page',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Animation Test', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          elevation: 10.0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Rotate',),
              Tab(text: 'Transparent',),
              Tab(text: 'CrossFade',),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FirstAnimationPage(),
            SecondAnimationPage(),
            ThirdAnimationPage(),
          ],
        ),
      ),
    );
  }
}
