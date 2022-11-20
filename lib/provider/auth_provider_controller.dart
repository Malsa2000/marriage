import 'dart:convert';

import 'package:marriage/data/model/login_info_model.dart';

import '../api_integration/api_setting.dart';
import '../process_response.dart';
import 'package:http/http.dart' as http;


class AuthController  {

  Future<ProcessResponse> login(
      {required String mobile, required String password}) async {
    Uri uri = Uri.parse(ApiSetting.login);


    var response = await http.post(
        uri, body: {'mobile': mobile, 'password': password});

    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.statusCode);
      var json = jsonDecode(response.body);
      if (response.statusCode == 200) {
        LoginInfoModel user = LoginInfoModel.fromJson(json['usersData']);
       // pre().save(student: user);
        print(response.statusCode);
      }
      return ProcessResponse(
          massage: json['message'], succsess: json['status']);
    }
    return ProcessResponse(massage: "error", succsess: false);
  }


}