import 'package:flutter/material.dart';
import 'package:flutter_group_3/dio_json_serializable/dio_util.dart';
import 'package:flutter_group_3/dio_json_serializable/person.dart';

class DioScreen extends StatefulWidget{
  const DioScreen({Key? key}) : super(key: key);

  @override
  State<DioScreen> createState() => DioScreenState();
}

class DioScreenState extends State<DioScreen> {
  Person? meInfo;
  getData(){
    DioUtil.request(
        url:'https://run.mocky.io/v3/85016517-2a68-4af6-8991-e838f2fd0c2e'
    ).then((value) async {
      if(value != null){
        setState((){
          meInfo = value!;
        });
      }
    }).catchError(
          (value) => (value),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DIO DATA"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                getData();
              }, child: const Text("Get Data"),
            ),
            Text(meInfo?.name?? 'name',
              style: const TextStyle(
                fontSize: 34.0,
              ),
            ),
            Text(meInfo?.surname?? 'surname',
              style: const TextStyle(
                fontSize: 34.0,
              ),
            ),
            Text(meInfo?.age.toString()?? 'age',
              style: const TextStyle(
                fontSize: 34.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

}