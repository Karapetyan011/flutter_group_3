import 'package:flutter/material.dart';

class MyContact extends StatelessWidget{
  const MyContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
      ),
      body: ListView(
        shrinkWrap: true,
        children: const [
          ListTile(
            tileColor: Colors.green,
            leading: Icon(Icons.favorite),
            title: Center(child: Text('John Roberts')),
            subtitle: Center(child: Text('footballer')),
            trailing: Icon(Icons.delete),
          ),
        ListTile(
        tileColor: Colors.red,
        leading: Icon(Icons.favorite),
        title: Center(child: Text('Rose Darin')),
        subtitle: Center(child: Text('Cooker')),
        trailing: Icon(Icons.delete),
        ),
          ListTile(
            tileColor: Colors.yellow,
            leading: Icon(Icons.favorite),
            title: Center(child: Text('Jack Harvey')),
            subtitle: Center(child: Text('Drug Dealer')),
            trailing: Icon(Icons.delete),
          ),
          ListTile(
            tileColor: Colors.red,
            leading: Icon(Icons.favorite),
            title: Center(child: Text('Andrew Jons')),
            subtitle: Center(child: Text('Killer')),
            trailing: Icon(Icons.delete),
          ),
          ListTile(
            tileColor: Colors.green,
            leading: Icon(Icons.favorite),
            title: Center(child: Text('Anderson Pack')),
            subtitle: Center(child: Text('Unknown')),
            trailing: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

}