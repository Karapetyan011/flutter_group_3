// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_group_3/myAPhomework/custom_container_person_name.dart';
// import 'package:flutter_group_3/myAPhomework/people_model.dart';
// import 'package:http/http.dart' as http;
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(
//     const MyApp(),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: _SwapiDemo(),
//     );
//   }
// }
//
// typedef SwapiResults = List<Map<String, dynamic>>;
//
// class _SwapiDemo extends StatefulWidget {
//   const _SwapiDemo({Key? key}) : super(key: key);
//
//   @override
//   _SwapiDemoState createState() => _SwapiDemoState();
// }
//
// class _SwapiDemoState extends State<_SwapiDemo> {
//   @override
//   void initState() {
//     getPeopleData();
//     super.initState();
//   }
//
//   List<PeopleModel>? jsonResults = [];
//
//   Future getPeopleData() async {
//     var response = await http.get(
//       Uri.https('swapi.dev', 'api/people'),
//     );
//     Map<String, dynamic> decodedResponse =
//         jsonDecode(utf8.decode(response.bodyBytes));
//
//     setState(() {
//       List data = decodedResponse['results'];
//       for (var element in data) {
//         jsonResults!.add(PeopleModel.fromJson(element));
//         // print(jsonResults![]);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         elevation: 14,
//         backgroundColor: Colors.green.shade900,
//         centerTitle: true,
//         title: const Text(
//           'Swapi Person API Name',
//         ),
//       ),
//       body: Column(
//         children: [
//           if (jsonResults == null)
//             Row(
//               children: const [
//                 Center(
//                     child: Text(
//                   'EMPTY',
//                   style: TextStyle(color: Colors.red),
//                 )),
//               ],
//             )
//           else
//             Expanded(
//               child: ListView.builder(
//                   itemCount: jsonResults!.length,
//                   physics: const RangeMaintainingScrollPhysics(),
//                   shrinkWrap: true,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
//                   itemBuilder: (context, index) {
//                     var data = jsonResults![index];
//                     // for (var element in jsonResults!){
//                     //   print(element);
//                     // };
//
//                     return Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: CustomContainerForPerson(
//                         personName: data.name!,
//                         mass: data.mass!,
//                       ),
//                     );
//                   }
//
//                   // return Text(
//                   //   data.name!,
//                   //   style: const TextStyle(color: Colors.black, fontSize: 25),
//                   // );
//                   ),
//             ),
//         ],
//       ),
//     );
//   }
// }
