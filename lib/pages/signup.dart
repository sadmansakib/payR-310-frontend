import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/body_container.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: BodyContainer(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35.0),
              height: 0.5 * size.height,
              width: 0.5 * size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SignupTextField(
                        hintText: 'First Name',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SignupTextField(
                        hintText: 'Last Name',
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
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SignupTextField(
                        hintText: 'Mobile Number',
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
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SignupTextField(
                        hintText: 'Confirmed Password',
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
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignupTextField extends StatelessWidget {
  final String hintText;

  SignupTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
