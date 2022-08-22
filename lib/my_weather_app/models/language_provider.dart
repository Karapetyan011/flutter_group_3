import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  String? language;

  LanguageProvider({
    this.language = 'en',
  });

  void changeLanguage(String newLanguage) {
    language = newLanguage;
    notifyListeners();
  }
}