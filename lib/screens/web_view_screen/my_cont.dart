import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget{
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Squares'),
      ),
      body: Column(
        children: [
         Row(
           children: [
           Expanded(
             flex: 2,
               child:
               Container(
                 height: 100,
                 color: Colors.red,
                 child: const Center(
                   child: Text('One', style: TextStyle(
                     fontSize: 30.0
                   ),),
                 ),
               )
           ),
             Expanded(
               flex: 1,
               child: Container(
                 height: 100,
                 color: Colors.orange,
             )
             )
           ],
         ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  color: Colors.green,
                   child: const Center(
                     child: Text("3", style: TextStyle(fontSize: 30.0),),
                   ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            color: Colors.purple,
                            child: const Center(
                              child: Text("4", style: TextStyle(fontSize: 30.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          child:Container(
                            alignment: const Alignment(0, -2.5),
                            height: 100,
                            color: Colors.orange,
                            child: const Text('Two', style: TextStyle(
                                fontSize: 50.0
                            ),),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      color: Colors.blue,
                      child: const Center(
                        child: Text("5", style: TextStyle(fontSize: 30.0)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ]
      )
    );
  }
}