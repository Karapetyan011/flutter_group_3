import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_model.dart';

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String? location, String units, String language) async {
    var endpoints = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$location&units=$units&lang=$language&appid=36ee0e3c5032a6e92aa53586e94aae04',
    );
    var response = await http.get(endpoints);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}