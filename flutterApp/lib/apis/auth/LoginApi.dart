import 'dart:convert';

import 'package:game/models/auth/LoginModel.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  Future<LoginModel?> data({
    required String email,
    required String pass,
  }) async {
    try {
      String url = 'http://10.0.2.2:8000/api/login';
      Uri uri = Uri.parse(url);
      var headers = {'Content-Type': 'application/json'};
      var body = jsonEncode({'email': email, 'password': pass});

      http.Response response =
          await http.post(uri, body: body, headers: headers);
      LoginModel loginModel = LoginModel.fromJson(json.decode(response.body));

      if (response.statusCode == 200 || response.statusCode == 500) {
        return loginModel;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
