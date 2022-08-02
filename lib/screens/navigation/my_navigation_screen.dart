import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> images = [
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg"
    ];
    BoxFit.cover;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Builder'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: const Color(0xF48780D7),
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 18.0,
            mainAxisSpacing: 18.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              images[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
