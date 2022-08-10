import 'package:flutter/material.dart';

import '../web_view_screen/my_webview_screen.dart';
import 'my_animated_container2.dart';
import 'my_animation_container.dart';
import 'my_heart_animation.dart';

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
          backgroundColor: Colors.white,
          title:const Text('My Tabs', style: TextStyle(color: Colors.orange),
          ),

          centerTitle: true,
          elevation: 10.0,
          bottom: const TabBar(
            labelColor: Colors.blue,
            tabs: [
             Tab(text: "Color Animation"),
              Tab(text: 'Web View'),
              Tab(text: 'Star'),
              Tab(text: 'SizeBox'),
            ],
          ),
        ),
        body:  const TabBarView(
          children: [
            MyAnimatedCont(),
            MyWebViewScreen(myUrl: 'https://www.digitalocean.com/community/tags/flutter'),
            MyHeartAnimation(),
            MyAnimatedContainer()
          ],
        ),
      ),
    );
  }
}