import 'package:http/http.dart';
import 'dart:convert';

import '../models/signup_model.dart';

class APIHandler {
  static signUp(SignUpModel signUpModel) async {
    Response response = await post(
      Uri.encodeFull("http://localhost:8080/signup"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(signUpModel.toJson()),
    );
    return response.statusCode;
  }
}
