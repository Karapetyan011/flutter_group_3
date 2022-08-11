// import 'package:flutter/material.dart';
// import '../../core/services/swservice_films.dart';
// import '../../core/services/swservice_starship.dart';
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
//   String? _title;
//   int? _episode_id;
//   String? _opening_crawl;
//   String? _director;
//   String? _producer;
//   String? _release_date;
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
//                     'title is => $_title ',
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
//                     'episode_id is => $_episode_id',
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
//                     'opening_crawl is => $_opening_crawl',
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
//                     'director is => $_director',
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
//                     'producer is => $_producer',
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
//                     'release_date is => $_release_date',
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
//       (value) async {
//         if (value != null) {
//           setState(() {
//             _title = value!.title!;
//             _episode_id = value!.episode_id!;
//             _opening_crawl = value!.opening_crawl!;
//             _director = value!.director!;
//             _producer = value!.producer!;
//             _release_date = value!.release_date!;
//           });
//           return value;
//         }
//       },
//     ).catchError((_) {
//       throw Exception();
//     });
//   }
// }
