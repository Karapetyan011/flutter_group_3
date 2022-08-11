import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animation Page 3',
      home: ThirdAnimationPage(),
    );
  }
}

class FaceEyeImg extends StatelessWidget {
  const FaceEyeImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.network('https://bilder.pcwelt.de/4258494_1200x600.jpg'),
    );
  }
}

class BibEyeImg extends StatelessWidget {
  const BibEyeImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.network('https://concisesoftware.com/wp-content/uploads/2019/10/future-175620_1280.jpg'),
    );
  }
}

class ThirdAnimationPage extends StatefulWidget {
  const ThirdAnimationPage({Key? key}) : super(key: key);

  @override
  State<ThirdAnimationPage> createState() => _ThirdAnimationPageState();
}

class _ThirdAnimationPageState extends State<ThirdAnimationPage> {
  bool _showFirstChild = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AnimatedCrossFade'),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          firstChild: const FaceEyeImg(),
          secondChild: const BibEyeImg(),
          crossFadeState: _showFirstChild
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirstChild = !_showFirstChild;
          });
        },
        child: _showFirstChild
            ? const Icon(Icons.last_page)
            : const Icon(Icons.first_page),
      ),
    );
  }
}
