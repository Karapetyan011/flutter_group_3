import 'package:dio/dio.dart';
import 'package:flutter_group_3/dio_json_serializable/user.dart';

class NetUtil {
  static Future<dynamic> request({required String url}) async {
    var response = await Dio().get(url);

    if (response.statusCode == 200) {
      final user = User.fromJson(response.data);
      return user;
    }
    return Error();
  }
}
