import 'package:flutter/material.dart';

import '../../widgets/custom_container_for_mounth.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2AFEA),
      appBar: AppBar(
        centerTitle: true,
        elevation: 12.0,
        title: const Text('List View Page'),
        backgroundColor: Colors.purple,
      ),
        // body: ListView(
        //   shrinkWrap: true,
        //   children: const <Widget>[
        //     CustomContainerForMounts(mountName: 'March'),
        //     CustomContainerForMounts(mountName: 'April'),
        //     CustomContainerForMounts(mountName: 'May'),
        //     CustomContainerForMounts(mountName: 'June'),
        //     CustomContainerForMounts(mountName: 'July'),
        //     CustomContainerForMounts(mountName: 'August'),
        //     CustomContainerForMounts(mountName: 'September'),
        //     CustomContainerForMounts(mountName: 'October'),
        //     CustomContainerForMounts(mountName: 'November'),
        //     CustomContainerForMounts(mountName: 'December'),
        //     // ListTile(
        //     //   tileColor: Colors.grey,
        //     //   leading: Image.network('https://www.blexar.com/avatar.png'),
        //     //   title: const Center(child: Text('Bob mcCarley')),
        //     //   subtitle: const Center(child: Text('Operator')),
        //     //   trailing: const Icon(Icons.delete),
        //     // ),
        //     ListTile(
        //       tileColor: Colors.yellow,
        //       leading: Icon(Icons.favorite),
        //       title: Text('Bob mcCarley'),
        //       subtitle: Text('Operator'),
        //     ),
        //     const ListTile(
        //       tileColor: Colors.green,
        //       leading: Icon(Icons.favorite),
        //       title: Text('Bob mcCarley'),
        //       subtitle: Text('Operator'),
        //     ),
        //     ListTile(
        //       tileColor: Colors.blueAccent,
        //       leading: Icon(Icons.favorite),
        //       title: Text('Bob mcCarley'),
        //       subtitle: Text('Operator'),
        //     ),
        //   ],
        // )
      body: ListView.builder(
        itemCount: mounthName.length,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: CustomContainerForMounts(
              mountName: mounthName[index],
            ),
          );
        },
      ),
    );
  }
}

const List<String> mounthName = [
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
