import 'package:flutter/material.dart';
import 'package:payR/api/apihandler.dart';
import 'package:payR/models/signup_model.dart';
import './signup_text_field.dart';

class SignUpForm extends StatelessWidget {
  final double height;
  final double width;

  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  SignUpForm({@required this.height, @required this.width});

  _signUpUser(BuildContext context) async {
    print('entered signup');
    if (passController.text == confirmPassController.text) {
      SignUpModel signUpModel = SignUpModel(
          firstName: fNameController.text,
          lastName: lNameController.text,
          email: emailController.text,
          mobile: mobileController.text,
          password: passController.text);
      print(signUpModel.toString());
      int success = await APIHandler.signUp(signUpModel);
      if (success == 201) {
        Navigator.pushNamed(context, '/login');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35.0),
          height: 0.5 * height,
          width: 0.5 * width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SignupTextField(
                    hintText: 'First Name',
                    controller: fNameController,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SignupTextField(
                    hintText: 'Last Name',
                    controller: lNameController,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SignupTextField(
                    hintText: 'Email Address',
                    controller: emailController,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SignupTextField(
                    hintText: 'Mobile Number',
                    controller: mobileController,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SignupTextField(
                    hintText: 'Password',
                    controller: passController,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SignupTextField(
                    hintText: 'Confirmed Password',
                    controller: confirmPassController,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.purple[900],
                child: Text(
                  'Sign up'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  _signUpUser(context);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
