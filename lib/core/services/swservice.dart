// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// import '../api/api_constants.dart';
// import '../api/end_points.dart';
// import '../model/people.dart';
//
// class StarWarsService {
//   Future<dynamic> fetchDataFromSWApi() async {
//     const endPoint = EndPoint.people;
//     const baseUrl = APIConstants.baseUrl;
//
//     /** https://swapi.dev/api/people */
//     final _uri = Uri.https(
//       baseUrl, // swapi.dev
//       endPoint,// api/people
//     ); // https://swapi.dev/api/people
//
//     final response = await http.get(
//       _uri,
//     );
//
//     if (response.statusCode == 200) {
//       // Json_@ darcnum e Map()`  jsonDecode() function_@
//       var responseBody = jsonDecode(
//         response.body,
//       );
//
//       final people = People.fromJson(responseBody);
//       return people;
//     }
//
//     return Exception();
//   }
// }
