import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const NeumorphismPage(),
    );
  }
}

class NeumorphismPage extends StatefulWidget {
  const NeumorphismPage({Key? key}) : super(key: key);

  @override
  State<NeumorphismPage> createState() => _NeumorphismPageState();
}

class _NeumorphismPageState extends State<NeumorphismPage> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isElevated = !_isElevated;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(
              milliseconds: 200,
            ),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              boxShadow: _isElevated
                  ? [
                      const BoxShadow(
                        color: Colors.orange,
                        offset: Offset(10, 10),
                        blurRadius: 30,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(-10, -10),
                        blurRadius: 30,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            // child: Image.network(
            //     'https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif'),
          ),
        ),
      ),
    );
  }
}
