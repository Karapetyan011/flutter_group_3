import 'package:flutter/material.dart';

import '../screens/grid_view_screen/grid_view_count/grid_item_component.dart';

const List<GridItemComponent> myCustomList = <GridItemComponent>[
  GridItemComponent(title: 'Home', icon: Icons.home),
  GridItemComponent(title: 'Contact', icon: Icons.contacts),
  GridItemComponent(title: 'Map', icon: Icons.map),
  GridItemComponent(title: 'Phone', icon: Icons.phone),
  GridItemComponent(title: 'Camera', icon: Icons.camera_alt),
  GridItemComponent(title: 'Setting', icon: Icons.settings),
  GridItemComponent(title: 'Album', icon: Icons.photo_album),
  GridItemComponent(title: 'WiFi', icon: Icons.wifi),
];

const kBlue = Color(0xff1d9bf0);


// Email & Password Patterns
const String kEmailPattern = r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]';
const String kPasswordPattern =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
