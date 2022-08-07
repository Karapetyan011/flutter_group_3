import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MyTabBar());
}

class MyTabBar extends StatelessWidget {
  MyTabBar({Key? key}) : super(key: key);
  List<String> images = [
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg',
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg',
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg',
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg',
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg',
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.image, size: 36.0)),
                Tab(icon: Icon(Icons.info, size: 36.0)),
              ],
            ),
            title: const Text('My Tabs'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              AnimationLimiter(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 20.0,
                  children: List.generate(
                    images.length,
                    (index) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        columnCount: 3,
                        child: FadeInAnimation(
                          duration: const Duration(milliseconds: 5000),
                          child: ScaleAnimation(
                            delay: const Duration(milliseconds: 1000),
                            duration: const Duration(milliseconds: 1000),
                            child: Image.asset(images[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Text("add info'"),
            ],
          ),
        ),
      ),
    );
  }
}
