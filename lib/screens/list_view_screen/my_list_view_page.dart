import 'package:flutter/material.dart';
import '../../widgets/my_custom_container_for_months.dart';
void main() => runApp(
    const App());

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListView(),
    );
  }
}

class MyCustomContainerMonths extends StatelessWidget{
  const MyCustomContainerMonths({Key? key, required this.monthName}) : super(key: key);
  final String monthName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.6),
                  blurRadius: 2,
                  offset: const Offset(3 ,5),
                )
              ],
              color: Colors.green.shade300,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(23.0),
              child: Text(monthName),
            ),
          )
        ],
      ) ,
    );
  }

}