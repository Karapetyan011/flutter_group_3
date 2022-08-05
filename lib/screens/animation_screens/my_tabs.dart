import 'package:flutter/material.dart';

import 'my_align_animation.dart';
import 'my_animated_container2.dart';
import 'my_animation_container.dart';

class MyTabExample extends StatefulWidget{
  const MyTabExample({Key? key}) : super(key: key);

  @override
  State<MyTabExample> createState() => MyTabExampleState();
}

class MyTabExampleState extends State<MyTabExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
          ),
          backgroundColor: Colors.red,
          title: const Text('Tab Example',
            style: TextStyle(color: Colors.white54, fontSize: 20.0),
          ),
          centerTitle: true,
          elevation: 13.0,
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: 'Ball',),
              Tab(text: 'Color Box',),
              Tab(text: 'Resized Box',),
              Tab(text: 'Color',),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MyAlignAnimation(),
            MyAnimatedCont(),
            MyAnimatedContainer(),
            MyAnimatedCont(),
          ],
        ),
      ),
    );
  }
}