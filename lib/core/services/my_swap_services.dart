import 'dart:convert';

import 'package:flutter_group_3/constants/my_const.dart';
import 'package:flutter_group_3/core/model/models_constants/people2.dart';
import 'package:http/http.dart' as http;

class MyStarWarsService{

  Future<dynamic> getDataFromSWApi() async{

const baseUrl = ApiConst.baseUrl;
const endPoint = ApiConst.people;
final _uri = Uri.https(baseUrl, endPoint,);
final response = await http.get(
  _uri,
);

if(response.statusCode == 200){
  var responseBody = jsonDecode(response.body);

  final people2 = People2.fromJson(responseBody);
  return people2;
}
return Exception();
  }

}