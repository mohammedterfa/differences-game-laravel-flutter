import 'dart:convert';

import 'package:game/models/ErrorModel.dart';
import 'package:game/models/auth/LoginModel.dart';
import 'package:http/http.dart' as http;

class SignUpApi {
  Future data({
    required String name,
    required String email,
    required String pass,
  }) async {
    try {
      String url = 'http://10.0.2.2:8000/api/signup';
      Uri uri = Uri.parse(url);
      var headers = {'Content-Type': 'application/json'};
      var body = jsonEncode({"name": name, 'email': email, 'password': pass});

      http.Response response =
          await http.post(uri, body: body, headers: headers);

      if (response.statusCode == 200) {
        LoginModel loginModel = LoginModel.fromJson(json.decode(response.body));
        return loginModel;
      } else if (response.statusCode == 500) {
        ErrorModel errorModel = ErrorModel.fromJson(json.decode(response.body));
        return errorModel;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
