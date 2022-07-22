import 'package:flutter/material.dart';
import '../../core/services/swservice_starship.dart';

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
  String? model;
  String? manufacturer;
  String? cost_in_credits;
  String? length;
  String? max_atmosphering_speed;
  String? crew;
  String? passengers;
  String? cargo_capacity;
  String? consumables;
  String? hyperdrive_rating;
  String? MGLT;
  String? starship_class;
  String? created;
  String? edited;

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
                    'model is => $model',
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
                    'manufacturer is => $manufacturer',
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
                    'cost_in_credits is => $cost_in_credits',
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
                    'length is => $length',
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
                    'max_atmosphering_speed is => $max_atmosphering_speed',
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
                    'crew is => $crew',
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
                    'passengers is => $passengers',
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
                  color: Colors.cyanAccent,
                  child: Text(
                    'cargo_capacity is => $cargo_capacity',
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
                  color: Colors.lightGreenAccent,
                  child: Text(
                    'consumables is => $consumables',
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
                  color: Colors.deepPurple,
                  child: Text(
                    'hyperdrive_rating is => $hyperdrive_rating',
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
                  color: Colors.deepPurple,
                  child: Text(
                    'MGLT is => $MGLT',
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
                  color: Colors.deepPurple,
                  child: Text(
                    'starship_class is => $starship_class',
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
                  color: Colors.deepPurple,
                  child: Text(
                    'created is => $created',
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
                  color: Colors.deepPurple,
                  child: Text(
                    'edited is => $edited',
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
            model = value!.model!;
            manufacturer = value!.manufacturer!;
            cost_in_credits = value!.cost_in_credits!;
            length = value!.length!;
            max_atmosphering_speed = value!.max_atmosphering_speed!;
            crew = value!.crew!;
            passengers = value!.passengers!;
            cargo_capacity = value!.cargo_capacity!;
            consumables = value!.consumables!;
            hyperdrive_rating = value!.hyperdrive_rating!;
            MGLT = value!.MGLT!;
            starship_class = value!.starship_class!;
            created = value!.created!;
            edited = value!.edited!;

          });
          return value;
        }
      },
    ).catchError((_) {
      throw Exception();
    });
  }
}
