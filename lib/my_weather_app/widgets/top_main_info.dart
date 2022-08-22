import 'package:flutter/material.dart';
import '../models/weather_model.dart';

Widget topMainInfo(
    BuildContext context, Weather data, int sunrise, int sunset) {
  return Column(
    children: [
      Text(
        '${data.cityName}',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 48.0,
        ),
      ),
      Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            '${data.temp?.toInt()} °',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
          Image.network("http://openweathermap.org/img/w/${data.icon}.png")
        ],
      ),
      // *** Sunrise and Sunset ***
      Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 24.0,
        ),
        child: Text(
          data.description!.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
