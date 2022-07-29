import 'package:flutter/material.dart';

import 'my_home_screen.dart';

class UserPage extends StatelessWidget{
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
      ),
      body: Padding(
       padding: const EdgeInsets.only(top: 200.0, left: 130.0),
       child: Column(
         children:  [
           const Text("This is your page", style: TextStyle(
             fontSize: 17.0, color: Colors.green
           ),),
           ElevatedButton(
             child: const Text('Exit'),
             onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomeScreen()) );
           })
         ],
       ),
      ),
    );

  }

}
