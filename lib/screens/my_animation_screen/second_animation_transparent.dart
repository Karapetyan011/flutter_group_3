import 'package:flutter/material.dart';

// Transparent Animation =>
// => --- AnimationOpacity ---

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Page 2',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: const SecondAnimationPage(),
    );
  }
}
class EyeImg extends StatelessWidget {
  const EyeImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.network('https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'),
    );
  }
}

class SecondAnimationPage extends StatefulWidget {
  const SecondAnimationPage({Key? key}) : super(key: key);

  @override
  State<SecondAnimationPage> createState() => _SecondAnimationPageState();
}

class _SecondAnimationPageState extends State<SecondAnimationPage> {
  bool _transparent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animation Opacity'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _transparent ? 0.0 : 1.0,
          duration: const Duration(milliseconds: 1000),
          child: const EyeImg(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _transparent = !_transparent;
          });
        },
        child: const Icon(Icons.opacity),
      ),
    );
  }
}
