import 'package:flutter/material.dart';

class CustomContainerMonths extends StatelessWidget {
  const CustomContainerMonths({Key? key, required this.month})
      : super(key: key);

  final String month;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            month,
            style: const TextStyle(fontSize: 22.0),
          ),
        ),
      ),
    );
  }
}

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCustomApp(),
    );
  }
}

class MyCustomApp extends StatelessWidget {
  const MyCustomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Months'),
          elevation: 6,
        ),
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.blueGrey,
            child: Column(
              children: const <Widget>[
                CustomContainerMonths(month: 'January'),
                CustomContainerMonths(month: 'February'),
                CustomContainerMonths(month: 'March'),
                CustomContainerMonths(month: 'April'),
                CustomContainerMonths(month: 'May'),
                CustomContainerMonths(month: 'Jun'),
                CustomContainerMonths(month: 'July'),
                CustomContainerMonths(month: 'August'),
                CustomContainerMonths(month: 'September'),
                CustomContainerMonths(month: 'October'),
                CustomContainerMonths(month: 'November'),
                CustomContainerMonths(month: 'December'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
