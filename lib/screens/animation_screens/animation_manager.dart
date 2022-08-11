/// Created by HrAnT

import 'package:flutter/material.dart';

import '../web_view_screen/demo_for_web_view_screen.dart';
import 'animated_align_demo.dart';
import 'animated_builder_demo.dart';
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
              Tab(text: 'Web View'),
              Tab(text: 'Animated Builder'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AnimationContainerDemo(),
            AnimatedAlignDemo(),
            DemoForWebViewScreen(
              mUrl:
                  'https://flutter.dev/?gclid=CjwKCAjw9qiTBhBbEiwAp-GE0WKd9gg79IvhUuBSFFiVFTk4iT_okqNqwk9x4iuRJelh2rLC-y_YWhoCwlYQAvD_BwE&gclsrc=aw.ds',
            ),
            AnimatedBuilderDemo(),
          ],
        ),
      ),
    );
  }
}
