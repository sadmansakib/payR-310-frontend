import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/body_container.dart';
import '../widgets/app_bar_btn.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        appBarButton: AppBarButton(
          btnFunction: () {},
          btnText: 'Sign up',
        ),
      ),
      body: BodyContainer(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(40.0),
              height: 0.4 * size.height,
              width: 0.3 * size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    style: TextStyle(fontSize: 22.0),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 15.0),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(),
                  TextFormField(
                    style: TextStyle(fontSize: 22.0),
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 15.0),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.green[900],
                    child: Text(
                      'login'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
