/// Created by HrAnT

import 'package:flutter/material.dart';

import 'animated_align_demo.dart';
import 'animation_container_demo.dart';

class AnimationManager extends StatefulWidget {
  const AnimationManager({Key? key}) : super(key: key);

  @override
  State<AnimationManager> createState() => _AnimationManagerState();
}

class _AnimationManagerState extends State<AnimationManager> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Custom Animations',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 10.0,
          bottom: const TabBar(
            labelColor: Colors.purple,
            tabs: [
              Tab(text: 'Animation Container'),
              Tab(text: 'Animated Align'),
              Tab(text: 'Animation Container'),
              Tab(text: 'Animated Align'),
            ],
          ),
        ),
        body:  const TabBarView(
          children: [
            AnimationContainerDemo(),
            AnimatedAlignDemo(),
            AnimationContainerDemo(),
            AnimatedAlignDemo(),
          ],
        ),
      ),
    );
  }
}
