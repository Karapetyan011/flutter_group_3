import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MaterialApp(home: MyTabBar()));
}

class MyTabBar extends StatelessWidget {
  MyTabBar({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/images/01.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
    'assets/images/05.jpg',
    'assets/images/06.jpg',
    'assets/images/07.jpg',
    'assets/images/08.jpg',
    'assets/images/09.jpg',
    'assets/images/10.jpg',
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/01.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
    'assets/images/05.jpg',
    'assets/images/06.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
                        duration: const Duration(milliseconds: 2000),
                        child: ScaleAnimation(
                          delay: const Duration(milliseconds: 500),
                          duration: const Duration(milliseconds: 1000),
                          child: InkWell(
                            onTap: () => showGeneralDialog(
                              context: context,
                              pageBuilder: (BuildContext context, a1, a2) =>
                              dialog(context, images[index]),
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                            ),
                            child: Image.asset(images[index]),
                          ),
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
    );
  }
}


Widget dialog (BuildContext context, String imagePath) {
  return AlertDialog(
    insetPadding: const EdgeInsets.all(10.0),
    contentPadding: EdgeInsets.zero,
    content: Image.asset(imagePath),
  );
}