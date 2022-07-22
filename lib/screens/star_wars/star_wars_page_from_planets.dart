// import 'package:flutter/material.dart';
//
// import '../../core/services/swservice_planets.dart';
//
// class SWPage extends StatelessWidget {
//   const SWPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String? name;
//   String? rotation_period;
//   String? orbital_period;
//   String? diameter;
//   String? climate;
//   String? gravity;
//   String? terrain;
//   String? surface_water;
//   String? population;
//   String? created;
//   String? edited;
//
//   @override
//   void didChangeDependencies() {
//     debugPrint('worked didChangeDependencies()');
//     super.didChangeDependencies();
//   }
//
//   @override
//   void initState() {
//     fetchSWAPIData().then((value) => value);
//     debugPrint('worked initState()');
//     super.initState();
//   }
//
//   @override
//   void didUpdateWidget(covariant MyHomePage oldWidget) {
//     debugPrint('worked didUpdateWidget()');
//     super.didUpdateWidget(oldWidget);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.grey,
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.purpleAccent,
//                   child: Text(
//                     'name is => $name ',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.greenAccent,
//                   child: Text(
//                     'rotation_period is => $rotation_period',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.green,
//                   child: Text(
//                     'orbital_period is => $orbital_period',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.red,
//                   child: Text(
//                     'diameter is => $diameter',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.pink,
//                   child: Text(
//                     'climate is => $climate',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.deepOrange,
//                   child: Text(
//                     'gravity is => $gravity',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.yellowAccent,
//                   child: Text(
//                     'terrain is => $terrain',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.blueAccent,
//                   child: Text(
//                     'surface_water is => $surface_water',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.cyanAccent,
//                   child: Text(
//                     'population is => $population',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.lightGreenAccent,
//                   child: Text(
//                     'created is => $created',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 12.0,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.deepPurple,
//                   child: Text(
//                     'edited is => $edited',
//                     style: const TextStyle(
//                       fontSize: 24.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<dynamic> fetchSWAPIData() async {
//     return await StarWarsService().fetchDataFromSWApi().then(
//           (value) async {
//         if (value != null) {
//           setState(() {
//             name = value!.name!;
//             rotation_period = value!.rotation_period!;
//             orbital_period = value!.orbital_period!;
//             diameter = value!.diameter!;
//             climate = value!.climate!;
//             gravity = value!.gravity!;
//             terrain = value!.terrain!;
//             surface_water = value!.surface_water!;
//             population = value!.population!;
//             created = value!.created!;
//             edited = value!.edited!;
//           });
//           return value;
//         }
//       },
//     ).catchError((_) {
//       throw Exception();
//     });
//   }
// }
