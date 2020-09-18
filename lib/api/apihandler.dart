import 'package:http/http.dart';

import '../models/signup_model.dart';

class APIHandler {
  static signUp(SignUpModel signUpModel) async {
    Response response = await post(
      Uri.encodeFull("http://localhost:8080/signup"),
      body: signUpModel.toJson(),
    );
    return response.statusCode;
  }
}
