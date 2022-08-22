import 'package:flutter/material.dart';

class LocationProvider with ChangeNotifier {
  String? location;

  LocationProvider({
    this.location = 'Yerevan'
});

  void changeLocation(String newLocation) {
    location = newLocation;
    notifyListeners();
  }
}
