import 'package:flutter/material.dart';
import '../../core/services/swservice.dart';

class ListViewPeopleName extends StatelessWidget {
  const ListViewPeopleName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
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
  dynamic _results;

  @override
  void initState() {
    fetchSWAPIData().then((value) => value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('people name list'),
        elevation: 5,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: _results != null ? _results.length : 0,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: const Color(0xFFBA98C0),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.purple,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  leading: Text(
                    (_results[index])['name'],
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  trailing: Text(
                    'mass: ${(_results[index])['mass']}',
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> fetchSWAPIData() async {
    return await StarWarsService().fetchDataFromSWApi().then(
      (value) async {
        if (value != null) {
          setState(
            () {
              _results = value!.results!;
            },
          );
          return value;
        }
      },
    ).catchError(
      (_) {
        throw Exception();
      },
    );
  }
}
