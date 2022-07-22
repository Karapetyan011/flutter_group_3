// import 'dart:convert';
//
// import 'package:flutter_group_3/core/model/person.dart';
// import 'package:http/http.dart' as http;
//
// import '../api/api_constants.dart';
// import '../api/end_points.dart';
// import '../model/planets.dart';
//
// class StarWarsService {
//   Future<dynamic> fetchDataFromSWApi() async {
//     const endPoint = EndPoint.planets;
//     const baseUrl = APIConstants.baseUrl;
//
//     /** https://swapi.dev/api/planets */
//     final _uri = Uri.https(
//       baseUrl, // swapi.dev
//       endPoint, // api/planets/5/
//     ); // https://swapi.dev/api/planets/5/
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
//       final planets = Planets.fromJson(responseBody);
//       return planets;
//     }
//
//     return Exception();
//   }
// }
