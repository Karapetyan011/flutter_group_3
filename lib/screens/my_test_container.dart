import 'package:flutter/material.dart';

class MyTestContainer extends StatefulWidget {
  const MyTestContainer({Key? key}) : super(key: key);

  @override
  State<MyTestContainer> createState() => _MyTestContainerState();
}

class _MyTestContainerState extends State<MyTestContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 12.0,
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text(
          'Title',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.purple,
        ),
      ),
      body: Container(
        color: Colors.grey,
        height: double.infinity,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: const <Widget>[
        //     Padding(
        //       padding: EdgeInsets.symmetric(vertical: 8.0),
        //       child: Text('jdhfjdshjkf'),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.symmetric(vertical: 8.0),
        //       child: Text('jdhfjdshjkf'),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.symmetric(vertical: 8.0),
        //       child: Text('jdhfjdshjkf'),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.symmetric(vertical: 8.0),
        //       child: Text('jdhfjdshjkf'),
        //     ),
        //   ],
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Press me'),
            ),
            const SizedBox(
              width: 32.0,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(
              width: 32.0,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Press Me!!',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
