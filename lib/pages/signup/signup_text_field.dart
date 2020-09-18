import 'package:flutter/material.dart';

class SignupTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  SignupTextField({@required this.hintText, @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
