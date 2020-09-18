import 'package:flutter/foundation.dart';

class SignUpModel {
  String firstName;
  String lastName;
  String email;
  String mobile;
  String password;

  SignUpModel(
      {@required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.mobile,
      @required this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    return data;
  }
}
