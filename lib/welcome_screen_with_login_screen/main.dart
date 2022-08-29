import 'package:flutter/material.dart';
import 'package:flutter_group_3/welcome_screen_with_login_screen/screens/on_boarding/onboarding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On boarding Concept',
      home: Builder(
        builder: (BuildContext context) {
          final screenHeight = MediaQuery.of(context).size.height;

          return OnBoarding(screenHeight: screenHeight);
        },
      ),
    );
  }
}

void main() => runApp(const App());
