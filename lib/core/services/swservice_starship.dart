import 'dart:convert';


import 'package:http/http.dart' as http;

import '../api/api_constants.dart';
import '../api/end_points.dart';
import '../model/planets.dart';
import '../model/starships.dart';

class StarWarsService {
  Future<dynamic> fetchDataFromSWApi() async {
    const endPoint = EndPoint.starships;
    const baseUrl = APIConstants.baseUrl;

    /** https://swapi.dev/api/starships*/
    final _uri = Uri.https(
      baseUrl, // swapi.dev
      endPoint, // api/starships/9/
    ); // https://swapi.dev/api/starships/9/

    final response = await http.get(
      _uri,
    );

    if (response.statusCode == 200) {
      var responseBody = jsonDecode(
        response.body,
      );

      final starships = Starships.fromJson(responseBody);
      return starships;
    }

    return Exception();
  }
}
