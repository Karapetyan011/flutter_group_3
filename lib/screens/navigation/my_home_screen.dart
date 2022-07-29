import 'package:flutter/material.dart';

import '../grid_view_screen/my_grid_view_builder.dart';
import '../list_view_screen/my_contacts_page.dart';
import 'my_login_page.dart';

class MyHomeScreen extends StatelessWidget{
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.indigo,
                Colors.purple,
                Colors.red
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              const Text('Welcome Page', style: TextStyle(fontSize: 20.0),),
              const SizedBox(
                height: 32.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text('Login In'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage()) );
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Contacts'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyContact()) );
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Gallery'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyGridViewBuilder()) );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}