import 'package:flutter/material.dart';

import '../../core/services/swservice_person.dart';

class SWPage extends StatelessWidget {
  const SWPage({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? name;
  String? height;
  String? mass;
  String? hair_color;
  String? skin_color;
  String? eye_color;
  String? birth_year;
  String? gender;

  @override
  void didChangeDependencies() {
    debugPrint('worked didChangeDependencies()');
    super.didChangeDependencies();
  }

  @override
  void initState() {
    fetchSWAPIData().then((value) => value);
    debugPrint('worked initState()');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    debugPrint('worked didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.purpleAccent,
                  child: Text(
                    'name is => $name ',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.greenAccent,
                  child: Text(
                    'height is => $height',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: Text(
                    'mass is => $mass',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text(
                    'hair_color is => $hair_color',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.pink,
                  child: Text(
                    'skin_color is => $skin_color',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.deepOrange,
                  child: Text(
                    'eye_color is => $eye_color',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.yellowAccent,
                  child: Text(
                    'birth_year is => $birth_year',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: Text(
                    'gender is => $gender',
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> fetchSWAPIData() async {
    return await StarWarsService().fetchDataFromSWApi().then(
      (value) async {
        if (value != null) {
          setState(() {
            name = value!.name!;
            mass = value!.mass!;
            height = value!.height!;
            hair_color = value!.hair_color!;
            skin_color = value!.skin_color!;
            eye_color = value!.eye_color!;
            birth_year = value!.birth_year!;
            gender = value!.gender!;
          });
          return value;
        }
      },
    ).catchError((_) {
      throw Exception();
    });
  }
}
