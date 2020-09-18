import 'package:http/http.dart';
import 'package:payR/models/customer_login.dart';
import 'package:payR/models/customer_token.dart';
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

  static login(CustomerLogin customerLogin) async {
    Response response = await post(
      Uri.encodeFull("http://localhost:8080/login"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(customerLogin.toJson()),
    );
    return CustomerToken.fromJson(jsonDecode(response.body));
  }
}
