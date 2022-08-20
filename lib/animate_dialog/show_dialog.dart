import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStateWidget(),
    );
  }
}

class MyStateWidget extends StatelessWidget {
  const MyStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).restorablePush(
              (_dialogBuilder),
            );
          },
          child: const Text('Open Dialog', style: TextStyle(fontSize: 24),),
        ),
      ),
    );
  }

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return RawDialogRoute<void>(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return const AlertDialog(
          title: Text('Alert'),
        );
      },
    );
  }
}
