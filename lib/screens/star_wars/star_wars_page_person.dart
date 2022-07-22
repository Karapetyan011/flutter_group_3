import 'package:flutter/material.dart';
import '../../core/services/swservice.dart';

class SWPPerson extends StatelessWidget {
  const SWPPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePagePerson(),
    );
  }
}

class MyHomePagePerson extends StatefulWidget {
  const MyHomePagePerson({Key? key}) : super(key: key);

  @override
  State<MyHomePagePerson> createState() => _MyHomePagePersonState();
}

class _MyHomePagePersonState extends State<MyHomePagePerson> {
  dynamic _name;
  dynamic _height;
  dynamic _mass;
  dynamic _hair_color;
  dynamic _skin_color;
  dynamic _eye_color;
  dynamic _birth_year;
  dynamic _gender;
  dynamic _homeworld;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
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
                  color: Colors.yellow,
                  child: Text(
                    'Response name is: \n\n $_name',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                    'Response height is: \n\n $_height',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                    'Response mass is: \n\n $_mass',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                  color: Colors.yellow,
                  child: Text(
                    'Response hair_color is: \n\n $_hair_color',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                    'Response skin color is: \n\n $_skin_color',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                    'Response eye color is: \n\n $_eye_color',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                  color: Colors.yellow,
                  child: Text(
                    'Response Birth year is: \n\n $_birth_year',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                    'Response homeworld is: \n\n $_homeworld',
                    style: const TextStyle(
                      fontSize: 18.0,
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
                    'Response gender is: \n\n $_gender',
                    style: const TextStyle(
                      fontSize: 18.0,
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

  Future<dynamic> fetchSWAPIDataPerson() async {
    return await StarWarsServicePerson().fetchDataFromSWApi().then(
      (person) async {
        if (person != null) {
          setState(() {
            _name = person!.name!;
            _height = person!.height!;
            _mass = person!.mass!;
            _hair_color = person!.hair_color;
            _skin_color = person!.skin_color;
            _eye_color = person!.eye_color;
            _birth_year = person!.birth_year;
            _homeworld = person!.homeworld;
            _gender = person!.gender;
          });
          return person;
        }
      },
    ).catchError((_) {
      throw Exception();
    });
  }
}
