import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class MyImageList {
  static List<String> imagesList = [
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
  ];
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white38,
            titleTextStyle: const TextStyle(fontSize: 30.0),
            title: const Text('Gallery'),
            centerTitle: true,
            bottom: const TabBar(
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.black,
              indicatorWeight: 3.0,
              tabs: [
                Tab(icon: Icon(Icons.image, size: 28.0)),
                Tab(icon: Icon(Icons.video_library, size: 28.0)),
                Tab(icon: Icon(Icons.audio_file, size: 28.0)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GridView.count(
                padding: const EdgeInsets.all(5.0),
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                children: List.generate(
                  MyImageList.imagesList.length,
                  (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(index: index),
                          ),
                        );
                      },
                      child: Image.asset(MyImageList.imagesList[index]),
                    );
                  },
                ),
              ),
              const Text('add video'),
              const Text('add audio'),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatefulWidget {
  final int index;

  const DetailsScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: AnimationConfiguration.staggeredList(
          position: 0,
          child: FadeInAnimation(
            duration: const Duration(seconds: 2),
            child: ScaleAnimation(
              duration: const Duration(milliseconds: 1000),
              child: Center(
                child: Image.asset(
                  MyImageList.imagesList[widget.index],
                  scale: 0.4,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
