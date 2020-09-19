import 'dart:developer';

import 'package:http/http.dart';
import 'package:payR/models/customer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/customer_login.dart';
import '../models/customer_token.dart';
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

  static Future<Customer> getCustomerInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token');
    Response response = await get(
      Uri.encodeFull("http://localhost:8080/customers/customer"),
      headers: {"token": token, "Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body)['customer'];
      log(jsonResponse.toString());
      return Customer.fromJson(
        jsonResponse,
      );
    } else {
      throw Exception('Failed to load customer info');
    }
  }
}
