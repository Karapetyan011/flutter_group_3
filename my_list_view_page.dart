import 'package:flutter/material.dart';
import 'package:flutter_group_3/widgets/my_custom_container_months.dart';

class MyListView extends StatelessWidget{
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: const Text("My App"),
       centerTitle: true,
       elevation: 10,
     ),
       body: ListView.builder(
         itemCount: monthName.length,
         physics: const AlwaysScrollableScrollPhysics(),
         shrinkWrap: true,
         itemBuilder: (BuildContext context, int index){
         return Padding(
           padding: const EdgeInsets.only(top: 12.0),
           child: MyCustomContainerMonths(monthName: monthName[index],
           ),
         );
         }
         )
   );
  }
}

const List<String> monthName = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];