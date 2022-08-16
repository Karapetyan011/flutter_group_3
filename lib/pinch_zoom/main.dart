import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hrant prod.',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hrant prod.'),
        elevation: 8.0,
      ),
      body: PinchZoom(
        resetDuration: const Duration(milliseconds: 100),
        maxScale: 10.5,
        onZoomStart: (){if (kDebugMode) {
          print('Start zooming');
        }},
        onZoomEnd: (){if (kDebugMode) {
          print('Stop zooming');
        }},
        child: Image.network('https://scontent.fevn12-1.fna.fbcdn.net/v/t39.30808-6/294593025_3121346268082152_5290296191726676391_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=WPm43R02-Q8AX_kHiOQ&_nc_ht=scontent.fevn12-1.fna&oh=00_AT-1DXzWKmewKZzGzxpNyyeGxn6esak2APw4Ua0JIYJ4fg&oe=62FFB39D'),
      ),
    );
  }
}