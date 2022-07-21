// import 'dart:convert';
//
// import 'package:flutter_group_3/core/model/person.dart';
// import 'package:http/http.dart' as http;
//
// import '../api/api_constants.dart';
// import '../api/end_points.dart';
//
// class StarWarsService {
//   Future<dynamic> fetchDataFromSWApi() async {
//     const endPoint = EndPoint.person;
//     const baseUrl = APIConstants.baseUrl;
//
//     /** https://swapi.dev/api/person */
//     final _uri = Uri.https(
//       baseUrl, // swapi.dev
//       endPoint, // api/people/1/
//     ); // https://swapi.dev/api/people/1/
//
//     final response = await http.get(
//       _uri,
//     );
//
//     if (response.statusCode == 200) {
//       var responseBody = jsonDecode(
//         response.body,
//       );
//
//       final person = Person.fromJson(responseBody);
//       return person;
//     }
//
//     return Exception();
//   }
// }
