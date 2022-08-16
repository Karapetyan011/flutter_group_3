import 'package:flutter/material.dart';
import 'package:flutter_group_3/dio_json_serializable/user.dart';

import 'net_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User? _userInfo;

  @override
  void initState() {
    NetUtil.request(
            url: 'https://run.mocky.io/v3/61cfd7fe-3a53-4e07-8c20-c27230ff3550')
        .then((value) async {
      if (value != null) {
        setState(() {
          _userInfo = value!;
        });
        return value;
      }
    }).catchError(
      (value) => debugPrint(value),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _userInfo?.name ?? 'name',
              style: const TextStyle(
                fontSize: 34.0,
              ),
            ),
            Text(
              _userInfo?.height.toString() ?? 'height',
              style: const TextStyle(
                fontSize: 34.0,
              ),
            ),
            Text(
              _userInfo?.weight.toString() ?? 'weight',
              style: const TextStyle(
                fontSize: 34.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
