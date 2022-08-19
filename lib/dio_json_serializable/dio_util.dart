import 'package:dio/dio.dart';
import 'package:flutter_group_3/dio_json_serializable/person.dart';

class DioUtil{
  static Future<dynamic> request({required String url}) async{
    var response = await Dio().get(url);

    if(response.statusCode == 200){
      final person = Person.fromJson(response.data);
      return person;
    }
    return Error();
  }
}