import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      await Geolocator.requestPermission(); // for get permission from user
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium,
      );

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
