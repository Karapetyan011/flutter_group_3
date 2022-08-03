import 'package:flutter/material.dart';
import '../../core/services/swservice.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: const Text(
          'People Name List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
        elevation: 5.0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: _results != null ? _results.length : 0,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.3),
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                    offset: const Offset(0.0, 3.0),
                  ),
                ],
                color: const Color(0xFFBA98C0),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.purple,
                  width: 2.0,
                ),
              ),
              child: ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: Icon(
                    CupertinoIcons.person_crop_square_fill,
                    color: Color(0xFF4E1859),
                    size: 32.0,
                  ),
                ),
                title: Center(
                  child: Text((_results[index])['name'],
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF4E1859),
                        fontWeight: FontWeight.w500,
                        fontSize: 22.0,
                      )),
                ),
                subtitle: Center(
                  child: Text(
                    'mass: ${(_results[index])['mass']}',
                    style: GoogleFonts.openSans(
                      color: Colors.purple,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Icon(
                    MdiIcons.weightKilogram,
                    color: Colors.purple,
                    size: 32.0,
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
