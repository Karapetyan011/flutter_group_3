import 'package:flutter/material.dart';

final kDarkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
        color: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(236, 236, 236, 1.0),
    ));

final kLightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.black,
    appBarTheme: const AppBarTheme(
        color: Colors.black,
        actionsIconTheme: IconThemeData(
          // color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          // color: Colors.black,
          fontWeight: FontWeight.w700,
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(72, 72, 72, 1.0),
    ));
