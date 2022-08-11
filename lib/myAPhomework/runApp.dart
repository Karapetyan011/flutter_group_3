import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_group_3/myAPhomework/custom_container_person_name.dart';
import 'package:flutter_group_3/myAPhomework/people_model.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _SwapiDemo(),
    );
  }
}

typedef SwapiResults = List<Map<String, dynamic>>;

class _SwapiDemo extends StatefulWidget {
  const _SwapiDemo({Key? key}) : super(key: key);

  @override
  _SwapiDemoState createState() => _SwapiDemoState();
}

class _SwapiDemoState extends State<_SwapiDemo> {
  @override
  void initState() {
    getPeopleData();
    super.initState();
  }

  List<PeopleModel>? jsonResults = [];

  Future getPeopleData() async {
    var response = await http.get(
      Uri.https('swapi.dev', 'api/people'),
    );
    Map<String, dynamic> decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes));

    setState(() {
      List data = decodedResponse['results'];
      for (var element in data) {
        jsonResults!.add(PeopleModel.fromJson(element));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.withOpacity(0.1),
      appBar: AppBar(
        title: const Text('List of Star Wars Persons'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
                colors: <Color>[Colors.black, Colors.green.shade900]),
          ),
        ),
      ),
      body: Column(
        children: [
          if (jsonResults == null)
            Row(
              children: const [
                Center(
                    child: Text(
                  'EMPTY',
                  style: TextStyle(color: Colors.red),
                )),
              ],
            )
          else
            Expanded(
              child: ListView.builder(
                  itemCount: jsonResults!.length,
                  physics: const RangeMaintainingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  itemBuilder: (context, index) {
                    var data = jsonResults![index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CustomContainerForPerson(
                        personName: data.name!,
                        mass: data.mass!,
                        height: data.height!,
                        birthYear: data.birthYear!,
                        gender: data.gender!,
                      ),
                    );
                  }),
            ),
        ],
      ),
    );
  }
}