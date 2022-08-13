import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/my_animation_screen/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../generated/l10n.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        theme: light,
        darkTheme: dark,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Animation Page 4',
        home: const FourthAnimationPage(),
      ),
    );
  }
}

class FourthAnimationPage extends StatefulWidget {
  const FourthAnimationPage({Key? key}) : super(key: key);

  @override
  State<FourthAnimationPage> createState() => _FourthAnimationPageState();
}

class _FourthAnimationPageState extends State<FourthAnimationPage> {
  bool _darkMode = false;
  double appBarHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).app_bar_title,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _darkMode
                    ? AdaptiveTheme.of(context).setLight()
                    : AdaptiveTheme.of(context).setDark();
                _darkMode = !_darkMode;
              });
            },
            child: _darkMode
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
          )
        ],
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.add),
        ),
      ),
      body: Center(
        child: Text(
          S.of(context).main_title,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),



      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _darkMode
      //           ? AdaptiveTheme.of(context).setLight()
      //           : AdaptiveTheme.of(context).setDark();
      //       _darkMode = !_darkMode;
      //     });
      //   },
      //   child: _darkMode
      //       ? const Icon(Icons.light_mode)
      //       : const Icon(Icons.dark_mode),
      // ),
    );
  }
}
