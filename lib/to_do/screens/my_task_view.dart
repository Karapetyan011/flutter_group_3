import 'package:flutter/material.dart';
import 'package:flutter_group_3/to_do/models/my_task_provider.dart';
import 'package:flutter_group_3/to_do/screens/my_add_screen.dart';
import 'package:flutter_group_3/to_do/widgets/my_task_list.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatelessWidget{
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.lightBlueAccent,
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children:<Widget> [
               const CircleAvatar(
                 backgroundColor: Colors.white,
                 radius: 30.0,
                 child: Icon(
                   Icons.list,
                   size: 30.0,
                   color: Colors.blueAccent,
                 ),
               ),
               const SizedBox(
                 height: 10.0,
               ),
               const Text("Notes",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 50.0,
                 fontWeight: FontWeight.w700
               ),
               ),
               Text("${Provider.of<MyTaskProvider>(context).myTaskCount} Notes",
               style: const TextStyle(color: Colors.orange, fontSize: 18.0),
               ),

             ],
           ),
         ),
         Expanded(
           child: Container(
             padding: const EdgeInsets.symmetric(horizontal: 20.0
             ),
             decoration: const BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(43.0),
                   topRight:Radius.circular(43.0),
                 )
             ),
             child: const MyTaskList(),
           ),
         )
       ],
     ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.blue,
       child: const Icon(
         Icons.add,
       ),
       onPressed: (){
        showModalBottomSheet(context: context,
          isScrollControlled: true,
          builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: const MyAddScreen(),
            ),
          )

        );
       },
     ),
   );
  }

}